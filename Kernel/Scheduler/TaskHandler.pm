# --
# Kernel/Scheduler/TaskHandler.pm - Scheduler task handler interface
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: TaskHandler.pm,v 1.2 2011/02/14 10:33:08 cr Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Scheduler::TaskHandler;

use strict;
use warnings;

use Kernel::System::VariableCheck qw(IsHashRefWithData IsStringWithData);

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

=head1 NAME

Kernel::Scheduler::TaskHandler

=head1 SYNOPSIS

Scheduler Task Handler interface.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create an object.

    use Kernel::Config;
    use Kernel::System::Encode;
    use Kernel::System::Log;
    use Kernel::System::Time;
    use Kernel::System::Main;
    use Kernel::System::DB;
    use Kernel::Scheduler::TaskHandler;

    my $ConfigObject = Kernel::Config->new();
    my $EncodeObject = Kernel::System::Encode->new(
        ConfigObject => $ConfigObject,
    );
    my $LogObject = Kernel::System::Log->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
    );
    my $TimeObject = Kernel::System::Time->new(
        ConfigObject => $ConfigObject,
        LogObject    => $LogObject,
    );
    my $MainObject = Kernel::System::Main->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
    );
    my $DBObject = Kernel::System::DB->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
        MainObject   => $MainObject,
    );
    my $OperationObject = Kernel::Scheduler::TaskHandler->new(
        ConfigObject       => $ConfigObject,
        LogObject          => $LogObject,
        DBObject           => $DBObject,
        MainObject         => $MainObject,
        TimeObject         => $TimeObject,
        EncodeObject       => $EncodeObject,

        Type               => 'GenericInterface'
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for my $Needed (qw(MainObject ConfigObject LogObject DBObject Type)) {
        $Self->{$Needed} = $Param{$Needed} || die "Got no $Needed!";
    }

    # check operation
    if ( !IsStringWithData( $Param{Type} ) ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Got no Task Type with content!',
        );
        return;
    }

    # load backend module
    my $GenericModule = 'Kernel::Scheduler::TaskHandler::' . $Param{Type};
    if ( !$Self->{MainObject}->Require($GenericModule) ) {
        return $Self->{DebuggerObject}
            ->Error( Summary => "Can't load task handler backend module!" );
    }
    $Self->{BackendObject} = $GenericModule->new( %{$Self} );

    # pass back error message from backend if backend module could not be executed
    return $Self->{BackendObject} if ref $Self->{BackendObject} ne $GenericModule;

    return $Self;
}

=item Run()

perform the selected Task

    my $Result = $TaskHandlerObject->Run(
        Data     => {                               # task data
            ...
        },
    );

    $Result = 1;                                    # 0 or 1
    };

=cut

sub Run {
    my ( $Self, %Param ) = @_;

    # check data - we need a hash ref with at least one entry
    if ( !IsHashRefWithData( $Param{Data} ) ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Got no Task Type with content!',
        );
        return;
    }

    # start task handler on backend
    return $Self->{BackendObject}->Run( Data => $Param{Data} );
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

$Revision: 1.2 $ $Date: 2011/02/14 10:33:08 $

=cut