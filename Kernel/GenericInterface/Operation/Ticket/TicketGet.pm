# --
# Kernel/GenericInterface/Operation/Ticket/TicketGet.pm - GenericInterface Ticket Get operation backend
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: TicketGet.pm,v 1.10 2012/01/24 22:33:48 cr Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::GenericInterface::Operation::Ticket::TicketGet;

use strict;
use warnings;

use MIME::Base64;
use Kernel::System::Ticket;
use Kernel::GenericInterface::Operation::Common;
use Kernel::GenericInterface::Operation::Ticket::Common;
use Kernel::System::VariableCheck qw(IsArrayRefWithData IsHashRefWithData IsStringWithData);

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.10 $) [1];

=head1 NAME

Kernel::GenericInterface::Operation::Ticket::TicketGet - GenericInterface Ticket Get Operation backend

=head1 SYNOPSIS

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

usually, you want to create an instance of this
by using Kernel::GenericInterface::Operation->new();

=cut

sub new {
    my ( $Type, %Param ) = @_;

    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for my $Needed (
        qw(DebuggerObject ConfigObject MainObject LogObject TimeObject DBObject EncodeObject WebserviceID)
        )
    {
        if ( !$Param{$Needed} ) {
            return {
                Success      => 0,
                ErrorMessage => "Got no $Needed!"
            };
        }

        $Self->{$Needed} = $Param{$Needed};
    }

    # create additional objects
    $Self->{CommonObject} = Kernel::GenericInterface::Operation::Common->new( %{$Self} );
    $Self->{TicketCommonObject}
        = Kernel::GenericInterface::Operation::Ticket::Common->new( %{$Self} );
    $Self->{TicketObject} = Kernel::System::Ticket->new( %{$Self} );

    return $Self;
}

=item Run()

perform TicketGet Operation. This will return a Ticket entry.

    my $Result = $OperationObject->Run(
        Data => {
            TicketID => '32,33',
            DynamicFields     => 0, # Optional, 0 as default
            Extended          => 1, # Optional 0 as default
            AllArticles       => 1, # Optional 0 as default
            ArticleSenderType => [ $ArticleSenderType1, $ArticleSenderType2 ], # Optional, only requested article sender types
            ArticleOrder      => 'DESC', # Optional, DESC,ASC - default is ASC
            ArticleLimit      => 5, # Optional
            Attachments       => 1, # Optional, 1 as default
        },
    );

    $Result = {
        Success      => 1,                                # 0 or 1
        ErrorMessage => '',                               # In case of an error
        Data         => {},
    };

=cut

sub Run {
    my ( $Self, %Param ) = @_;

    my ( $UserID, $UserType ) = $Self->{CommonObject}->Auth(
        %Param
    );

    return $Self->{TicketCommonObject}->ReturnError(
        ErrorCode    => 'TicketGet.AuthFail',
        ErrorMessage => "TicketGet: Authorization failing!",
    ) if !$UserID;

    # check needed stuff
    for my $Needed (qw(TicketID)) {
        if ( !$Param{Data}->{$Needed} ) {
            return $Self->{TicketCommonObject}->ReturnError(
                ErrorCode    => 'TicketGet.MissingParameter',
                ErrorMessage => "TicketGet: $Needed parameter is missing!",
            );
        }
    }
    my $ErrorMessage = '';

    # all needed vairables
    my @TicketIDs;
    if ( IsStringWithData( $Param{Data}->{TicketID} ) ) {
        @TicketIDs = split( /,/, $Param{Data}->{TicketID} );
    }
    elsif ( IsArrayRefWithData( $Param{Data}->{TicketID} ) ) {
        @TicketIDs = @{ $Param{Data}->{TicketID} };
    }
    else {
        return $Self->{TicketCommonObject}->ReturnError(
            ErrorCode    => 'TicketGet.WrongStructure',
            ErrorMessage => "TicketGet: Structure for TicketID is not correct!",
        );
    }
    my $DynamicFields     = $Param{Data}->{DynamicFields}     || 0;
    my $Extended          = $Param{Data}->{Extended}          || 0;
    my $AllArticles       = $Param{Data}->{AllArticles}       || 0;
    my $ArticleSenderType = $Param{Data}->{ArticleSenderType} || '';
    my $ArticleOrder      = $Param{Data}->{ArticleOrder}      || 'ASC';
    my $ArticleLimit      = $Param{Data}->{ArticleLimit}      || 0;
    my $Attachments       = $Param{Data}->{Attachments}       || 0;
    my $ReturnData        = {
        Success => 1,
    };
    my @Item;

    # start ticket loop
    TICKET:
    for my $TicketID (@TicketIDs) {

        # get the Ticket entry
        my %TicketEntry = $Self->{TicketObject}->TicketGet(
            TicketID      => $TicketID,
            DynamicFields => $DynamicFields,
            Extended      => $Extended,
            UserID        => $UserID,
        );

        if ( !IsHashRefWithData( \%TicketEntry ) ) {

            $ErrorMessage = 'Could not get Ticket data'
                . ' in Kernel::GenericInterface::Operation::Ticket::TicketGet::Run()';

            return $Self->{TicketCommonObject}->ReturnError(
                ErrorCode    => 'TicketGet.NotValidTicketID',
                ErrorMessage => "TicketGet: $ErrorMessage",
            );
        }

        # set Ticket entry data
        my $TicketBundle = {
            Ticket => \%TicketEntry,
        };

        if ( !$AllArticles ) {
            push @Item, $TicketBundle;
            next TICKET;
        }

        my @ArticleBox = $Self->{TicketObject}->ArticleGet(
            TicketID          => $TicketID,
            ArticleSenderType => $ArticleSenderType,
            DynamicFields     => $DynamicFields,
            Extended          => $Extended,
            Order             => $ArticleOrder,
            Limit             => $ArticleLimit,
            UserID            => $UserID,
        );

        # start article loop
        ARTICLE:
        for my $Article (@ArticleBox) {

            # next if not attachments required
            next ARTICLE if !$Attachments;

            # get attachment index (without attachments)
            my %AtmIndex = $Self->{TicketObject}->ArticleAttachmentIndex(
                ContentPath                => $Article->{ContentPath},
                ArticleID                  => $Article->{ArticleID},
                StripPlainBodyAsAttachment => 3,
                Article                    => $Article,
                UserID                     => $UserID,
            );

            # next if not attachments
            next ARTICLE if !IsHashRefWithData( \%AtmIndex );

            my @Attachments;
            ATTACHMENT:
            for my $FileID (%AtmIndex) {
                next ATTACHMENT if !$FileID;
                my %Attachment = $Self->{TicketObject}->ArticleAttachment(
                    ArticleID => $Article->{ArticleID},
                    FileID    => $FileID,                 # as returned by ArticleAttachmentIndex
                    UserID    => $UserID,
                );

                # next if not attachment
                next ATTACHMENT if !IsHashRefWithData( \%Attachment );

                # convert content to base64
                $Attachment{Content} = encode_base64( $Attachment{Content} );
                push @Attachments, {%Attachment};
            }

            # set Attachments data
            $Article->{Atms} = \@Attachments;

        }    # finish article loop

        # set Ticket entry data
        $TicketBundle->{Articles} = \@ArticleBox;

        # add
        push @Item, $TicketBundle;
    }    # finish ticket loop

    if ( !scalar @Item ) {
        $ErrorMessage = 'Could not get Ticket data'
            . ' in Kernel::GenericInterface::Operation::Ticket::TicketGet::Run()';

        return $Self->{TicketCommonObject}->ReturnError(
            ErrorCode    => 'TicketGet.NotTicketData',
            ErrorMessage => "TicketGet: $ErrorMessage",
        );

    }

    # set ticket data into return structure
    $ReturnData->{Data}->{Item} = \@Item;

    # return result
    return $ReturnData;
}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<http://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.

=cut

=head1 VERSION

$Revision: 1.10 $ $Date: 2012/01/24 22:33:48 $

=cut
