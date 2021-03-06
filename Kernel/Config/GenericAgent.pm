# --
# Kernel/Config/GenericAgent.pm - config file of generic agent
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: GenericAgent.pm.dist,v 1.14 2010/12/03 09:58:00 bes Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Config::GenericAgent;

use strict;
use warnings;

use vars qw($VERSION @ISA @EXPORT %Jobs);
require Exporter;
@ISA     = qw(Exporter);
@EXPORT  = qw(%Jobs);
$VERSION = qw($Revision: 1.14 $)[1];

# -----------------------------------------------------------------------
# config options
# -----------------------------------------------------------------------
%Jobs = (

   # [name of job] -> send escalation notifications
#   'send escalation notifications' => {
#       Escalation => 1,
#       # new ticket properties
#       New => {
#           Module => 'Kernel::System::GenericAgent::NotifyAgentGroupOfCustomQueue',
#       },
#   },
   # insert your jobs (see Kernel/Config/GenericAgent.pm.examples)

);
# -----------------------------------------------------------------------
# end of config options
# -----------------------------------------------------------------------
1;
