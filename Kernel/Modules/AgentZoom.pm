# --
# Kernel/Modules/AgentZoom.pm - to get a closer view
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: AgentZoom.pm,v 1.98 2011/12/19 09:03:35 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

#
# LEGACY: This module redirects to AgentTicketZoom. It should be kept for a while
#   because existing legacy/upgraded systems have it in their notifications.
#   To drop it, existing notifications would have to be changed by the database
#   upgrading script.
#

package Kernel::Modules::AgentZoom;

use strict;
use warnings;

use Kernel::System::CustomerUser;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.98 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check needed objects
    for (qw(ParamObject DBObject LayoutObject LogObject ConfigObject )) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # compat link
    my $Redirect = $ENV{REQUEST_URI};
    if ($Redirect) {
        $Redirect =~ s/AgentZoom/AgentTicketZoom/;
    }
    else {
        $Redirect
            = $Self->{LayoutObject}->{Baselink}
            . 'Action=AgentTicketZoom;TicketID='
            . $Self->{TicketID};
    }
    return $Self->{LayoutObject}->Redirect( OP => $Redirect );
}

1;
