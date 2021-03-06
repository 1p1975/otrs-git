# --
# Kernel/Language/hu.pm - provides hu language translation
# Copyright (C) 2006 Gabor Gancs /gg@magicnet.hu/
# Copyright (C) 2006 Krisztian Gancs /krisz@gancs.hu/
# Copyright (C) 2006 Flora Szabo /szaboflora@magicnet.hu/
# Copyright (C) 2007 Aron Ujvari <ujvari@hungary.com>
# Copyright (C) 2009 Arnold Matyasi <arn@webma.hu>
# --
# $Id: hu.pm,v 1.106 2012/01/13 06:46:50 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::hu;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.106 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: 2012-01-13 07:44:33

    # possible charsets
    $Self->{Charset} = ['utf-8', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%Y.%M.%D %T';
    $Self->{DateFormatLong}      = '%Y %B %D %A %T';
    $Self->{DateFormatShort}     = '%Y.%M.%D';
    $Self->{DateInputFormat}     = '%Y.%M.%D';
    $Self->{DateInputFormatLong} = '%Y.%M.%D - %T';

    # csv separator
    $Self->{Separator} = ';';

    $Self->{Translation} = {

        # Template: AAABase
        'Yes' => 'Igen',
        'No' => 'Nem',
        'yes' => 'igen',
        'no' => 'nem',
        'Off' => 'Ki',
        'off' => 'ki',
        'On' => 'Be',
        'on' => 'be',
        'top' => 'Teteje',
        'end' => 'vége',
        'Done' => 'Kész',
        'Cancel' => 'Mégsem',
        'Reset' => 'Alapállás',
        'last' => 'legfeljebb ennyi ideje',
        'before' => 'legalább ennyi ideje',
        'Today' => 'Ma',
        'Tomorrow' => 'Holnap',
        'Next week' => '',
        'day' => 'nap',
        'days' => 'nap',
        'day(s)' => 'nap',
        'd' => '',
        'hour' => 'óra',
        'hours' => 'óra',
        'hour(s)' => 'óra',
        'Hours' => '',
        'h' => '',
        'minute' => 'Perc',
        'minutes' => 'perc',
        'minute(s)' => 'perc',
        'Minutes' => '',
        'm' => '',
        'month' => 'hónap',
        'months' => 'hónap',
        'month(s)' => 'hónap',
        'week' => 'hét',
        'week(s)' => 'hét',
        'year' => 'év',
        'years' => 'év',
        'year(s)' => 'év',
        'second(s)' => 'mp',
        'seconds' => 'mp',
        'second' => 'mp',
        's' => '',
        'wrote' => 'írta',
        'Message' => 'Üzenet',
        'Error' => 'Hiba',
        'Bug Report' => 'Hibajelentés',
        'Attention' => 'Figyelem',
        'Warning' => 'Figyelem',
        'Module' => 'Modul',
        'Modulefile' => 'Modulfile',
        'Subfunction' => 'Alfunkció',
        'Line' => 'Vonal',
        'Setting' => 'Beállítás',
        'Settings' => 'Beállítások',
        'Example' => 'Példa',
        'Examples' => 'Példa',
        'valid' => 'érvényes',
        'Valid' => 'Érvényesség',
        'invalid' => 'érvénytelen',
        'Invalid' => '',
        '* invalid' => '* érvénytelen',
        'invalid-temporarily' => 'ideiglenesen érvénytelen',
        ' 2 minutes' => ' 2 Perc',
        ' 5 minutes' => ' 5 Perc',
        ' 7 minutes' => ' 7 Perc',
        '10 minutes' => '10 Perc',
        '15 minutes' => '15 Perc',
        'Mr.' => 'Mr.',
        'Mrs.' => 'Mrs.',
        'Next' => 'Következő',
        'Back' => 'Vissza',
        'Next...' => 'Következő...',
        '...Back' => '...Vissza',
        '-none-' => '-nincs-',
        'none' => 'semmi',
        'none!' => 'semmi!',
        'none - answered' => 'semmi - megválaszolt',
        'please do not edit!' => 'kérjük ne javítsa!',
        'Need Action' => '',
        'AddLink' => 'Kapcsolat hozzáadása',
        'Link' => 'Kapcsolat',
        'Unlink' => 'Kapcsolat feloldása',
        'Linked' => 'Kapcsolat',
        'Link (Normal)' => 'Link (Normál)',
        'Link (Parent)' => 'Link (Szülő)',
        'Link (Child)' => 'Link (Gyerek)',
        'Normal' => 'Normál',
        'Parent' => 'Szülő',
        'Child' => 'Gyerek',
        'Hit' => 'Találat',
        'Hits' => 'Találatok',
        'Text' => 'Szöveg',
        'Standard' => '',
        'Lite' => 'Egyszerű',
        'User' => 'Felhasználó',
        'Username' => 'Felhasználónév',
        'Language' => 'Nyelv',
        'Languages' => 'Nyelv',
        'Password' => 'Jelszó',
        'Preferences' => 'Beállítások',
        'Salutation' => 'Megszólítás',
        'Salutations' => 'Megszólítások',
        'Signature' => 'Aláírás',
        'Signatures' => 'Aláírások',
        'Customer' => 'Ügyfél',
        'CustomerID' => 'Ügyfélazonosító',
        'CustomerIDs' => 'Ügyfélazonosítók',
        'customer' => 'ügyfél',
        'agent' => 'Ügyintéző',
        'system' => 'rendszer',
        'Customer Info' => 'Ügyfél Info',
        'Customer Information' => '',
        'Customer Company' => 'Ügyfél cég',
        'Customer Companies' => '',
        'Company' => 'Cég',
        'go!' => 'Indítás!',
        'go' => 'indítás',
        'All' => 'Összes',
        'all' => 'összes',
        'Sorry' => 'Sajnálom',
        'update!' => 'Módosítás!',
        'update' => 'módosítás',
        'Update' => 'Módosítás',
        'Updated!' => 'Frissítve!',
        'submit!' => 'Elküldés!',
        'submit' => 'elküldés',
        'Submit' => 'Elküldés',
        'change!' => 'Változtatás!',
        'Change' => 'Változtatás',
        'change' => 'változtatás',
        'click here' => 'kattints ide',
        'Comment' => 'Megjegyzés',
        'Invalid Option!' => 'Érvénytelen beállítás',
        'Invalid time!' => 'Hibás időpont!',
        'Invalid date!' => 'Hibás dátum!',
        'Name' => 'Név',
        'Group' => 'Csoport',
        'Description' => 'Leírás',
        'description' => 'leírás',
        'Theme' => 'Téma',
        'Created' => 'Létrehozás ideje',
        'Created by' => 'Létrehozta',
        'Changed' => 'Módosítás ideje',
        'Changed by' => 'Módosította',
        'Search' => 'Keresés',
        'and' => 'és',
        'between' => 'között',
        'Fulltext Search' => 'Szabadszavas Keresés',
        'Data' => 'Adat',
        'Options' => 'Beállítások',
        'Title' => 'Cím',
        'Item' => 'Tétel',
        'Delete' => 'Törlés',
        'Edit' => 'Szerkesztés',
        'View' => 'Nézet',
        'Number' => 'Szám',
        'System' => 'Rendszer',
        'Contact' => 'Kapcsolat',
        'Contacts' => 'Kapcsolatok',
        'Export' => 'Exportál',
        'Up' => 'Fel',
        'Down' => 'Le',
        'Add' => 'Hozzáadás',
        'Added!' => 'Hozzáadva!',
        'Category' => 'Kategória',
        'Viewer' => 'Néző',
        'Expand' => 'Bővít',
        'Small' => '',
        'Medium' => '',
        'Large' => '',
        'Date picker' => '',
        'New message' => 'Új üzenet',
        'New message!' => 'Új üzenet!',
        'Please answer this ticket(s) to get back to the normal queue view!' =>
            'Kérjük válaszoljon erre(ezekre) a jegy(ek)re hogy visszatérhessen a normál várólista nézethez!',
        'You have %s new message(s)!' => '%s új üzenete van!',
        'You have %s reminder ticket(s)!' => '%s emlékeztető jegye van!',
        'The recommended charset for your language is %s!' => 'Az ajánlott karakterkészlet az ön nyelvénél %s!',
        'Change your password.' => '',
        'Please activate %s first!' => '',
        'No suggestions' => 'Nincsenek javaslatok',
        'Word' => 'Szó',
        'Ignore' => 'Figyelmen kívül hagy',
        'replace with' => 'csere ezzel',
        'There is no account with that login name.' => 'Azzal a névvel nincs azonosító.',
        'Login failed! Your user name or password was entered incorrectly.' =>
            '',
        'There is no acount with that user name.' => '',
        'Please contact your administrator' => '',
        'Logout' => 'Kilépés',
        'Logout successful. Thank you for using OTRS!' => 'Kilépés megtörtént! Köszönjük, hogy az OTRS-t használja!',
        'Invalid SessionID!' => 'Hibás folyamat azonosító!',
        'Feature not active!' => 'Képesség nem aktív!',
        'Agent updated!' => 'Ügyintéző módosítva!',
        'Create Database' => 'Adatbázis létrehozása',
        'System Settings' => 'Rendszerbeállítások',
        'Mail Configuration' => '',
        'Finished' => 'Befejezve',
        'Install OTRS' => '',
        'Intro' => '',
        'License' => 'Licensz',
        'Database' => 'Adatbázis',
        'Configure Mail' => '',
        'Database deleted.' => '',
        'Database setup succesful!' => '',
        'Login is needed!' => 'Belépés szükséges!',
        'Password is needed!' => 'Jelszó szükséges!',
        'Take this Customer' => 'Átveszi ez az ügyfél',
        'Take this User' => 'Átveszi ez a felhasználó',
        'possible' => 'lehetséges',
        'reject' => 'elutasítás',
        'reverse' => 'fordított',
        'Facility' => 'Képesség',
        'Time Zone' => '',
        'Pending till' => 'Várakozás eddig',
        'Don\'t use the Superuser account to work with OTRS! Create new Agents and work with these accounts instead.' =>
            '',
        'Dispatching by email To: field.' => 'Szétválogatás az e-mail címzett mezője szerint.',
        'Dispatching by selected Queue.' => 'Szétválogatás a kiválasztott várólista szerint.',
        'No entry found!' => 'Nem található tétel!',
        'Session has timed out. Please log in again.' => 'Az folyamat időtúllépés miatt befejeződött. Kérjük lépjen be újra.',
        'No Permission!' => 'Nincs jogosultság!',
        'To: (%s) replaced with database email!' => 'Címzett: (%s) felülírva az adatbázis címmel!',
        'Cc: (%s) added database email!' => 'Másolat: (%s) e-mail címe hozzáadva az adatbázishoz!',
        '(Click here to add)' => '(Kattinston ide a hozzáadáshoz)',
        'Preview' => 'Előnézet',
        'Package not correctly deployed! Please reinstall the package.' =>
            '',
        '%s is not writable!' => '',
        'Cannot create %s!' => '',
        'Check to activate this date' => '',
        'You have Out of Office enabled, would you like to disable it?' =>
            '',
        'Customer %s added' => '',
        'Role added!' => '',
        'Role updated!' => '',
        'Attachment added!' => '',
        'Attachment updated!' => '',
        'Response added!' => '',
        'Response updated!' => '',
        'Group updated!' => '',
        'Queue added!' => '',
        'Queue updated!' => '',
        'State added!' => '',
        'State updated!' => '',
        'Type added!' => '',
        'Type updated!' => '',
        'Customer updated!' => '',
        'Customer company added!' => '',
        'Customer company updated!' => '',
        'Mail account added!' => '',
        'Mail account updated!' => '',
        'System e-mail address added!' => '',
        'System e-mail address updated!' => '',
        'Contract' => 'Kapcsolat',
        'Online Customer: %s' => 'Bejelentkezett ügyfél: %s',
        'Online Agent: %s' => 'Bejelentkezett ügyintéző: %s',
        'Calendar' => 'Naptár',
        'File' => 'Fájl',
        'Filename' => 'Fájlnév',
        'Type' => 'Típus',
        'Size' => 'Méret',
        'Upload' => 'Feltöltés',
        'Directory' => 'Könyvtár',
        'Signed' => 'Aláírt',
        'Sign' => 'Aláírás',
        'Crypted' => 'Kódolt',
        'Crypt' => 'Kódolás',
        'PGP' => '',
        'PGP Key' => '',
        'PGP Keys' => '',
        'S/MIME' => 'S/MIME',
        'S/MIME Certificate' => '',
        'S/MIME Certificates' => '',
        'Office' => 'Iroda',
        'Phone' => 'Telefonszám',
        'Fax' => 'Fax szám',
        'Mobile' => 'Mobil szám',
        'Zip' => 'Irányítószám',
        'City' => 'Város',
        'Street' => 'Utca',
        'Country' => 'Ország',
        'Location' => 'Hely',
        'installed' => 'telepített',
        'uninstalled' => 'nem telepített',
        'Security Note: You should activate %s because application is already running!' =>
            'Biztonsági megjegyzés: Aktiválnia kellene a %s modult, mert az alakalmazás már fut!',
        'Unable to parse repository index document.' => '',
        'No packages for your framework version found in this repository, it only contains packages for other framework versions.' =>
            '',
        'No packages, or no new packages, found in selected repository.' =>
            '',
        'Edit the system configuration settings.' => '',
        'printed at' => 'nyomtatva',
        'Loading...' => '',
        'Dear Mr. %s,' => 'Kedves %s Úr!',
        'Dear Mrs. %s,' => 'Kedves %s Hölgy',
        'Dear %s,' => 'Kedves %s!',
        'Hello %s,' => 'Hello %s!',
        'This email address already exists. Please log in or reset your password.' =>
            '',
        'New account created. Sent login information to %s. Please check your email.' =>
            '',
        'Please press Back and try again.' => 'Kérem nyomja meg a Vissza gombot és próbálja újra!',
        'Sent password reset instructions. Please check your email.' => '',
        'Sent new password to %s. Please check your email.' => '',
        'Upcoming Events' => 'Következő események',
        'Event' => 'Esemény',
        'Events' => 'Esemény',
        'Invalid Token!' => 'Érvénytelen token!',
        'more' => 'tovább',
        'For more info see:' => 'További információért:',
        'Package verification failed!' => 'Csomag ellenőrzés nem sikerült!',
        'Collapse' => 'Összecsuk',
        'Shown' => '',
        'News' => 'Hírek',
        'Product News' => 'Termék hírek',
        'OTRS News' => '',
        '7 Day Stats' => '',
        'Bold' => 'Kövér',
        'Italic' => 'Dölt',
        'Underline' => 'Aláhúzott',
        'Font Color' => 'Betű szín',
        'Background Color' => 'Háttér szín',
        'Remove Formatting' => 'Formázás eltávolítása',
        'Show/Hide Hidden Elements' => 'Mutatja/Elrejti a rejtett elemeket ',
        'Align Left' => 'Balra rendez',
        'Align Center' => 'Középre rendez',
        'Align Right' => 'Jobbra rendez',
        'Justify' => 'Sorkizár',
        'Header' => 'Fejléc',
        'Indent' => 'Bekezdés befele',
        'Outdent' => 'Bekezdés kifele',
        'Create an Unordered List' => 'Sorszámozatlan lista létrehozása',
        'Create an Ordered List' => 'Sorszámozott lista létrehozása',
        'HTML Link' => 'HTML Link',
        'Insert Image' => 'Kép beszúrása',
        'CTRL' => 'CRTL',
        'SHIFT' => 'SHIFT',
        'Undo' => 'Visszavon',
        'Redo' => 'Újravon',
        'Scheduler process is registered but might not be running.' => '',
        'Scheduler is not running.' => '',

        # Template: AAACalendar
        'New Year\'s Day' => '',
        'International Workers\' Day' => '',
        'Christmas Eve' => '',
        'First Christmas Day' => '',
        'Second Christmas Day' => '',
        'New Year\'s Eve' => '',

        # Template: AAAGenericInterface
        'OTRS as requester' => '',
        'OTRS as provider' => '',
        'Webservice "%s" created!' => '',
        'Webservice "%s" updated!' => '',

        # Template: AAAMonth
        'Jan' => 'Jan',
        'Feb' => 'Feb',
        'Mar' => 'Már',
        'Apr' => 'Ápr',
        'May' => 'Máj',
        'Jun' => 'Jún',
        'Jul' => 'Júl',
        'Aug' => 'Aug',
        'Sep' => 'Sze',
        'Oct' => 'Okt',
        'Nov' => 'Nov',
        'Dec' => 'Dec',
        'January' => 'Január',
        'February' => 'Február',
        'March' => 'Március',
        'April' => 'Április',
        'May_long' => 'Május',
        'June' => 'Június',
        'July' => 'Július',
        'August' => 'Augusztus',
        'September' => 'Szeptember',
        'October' => 'Október',
        'November' => 'November',
        'December' => 'December',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Beállítások sikeresen frissítve!',
        'User Profile' => '',
        'Email Settings' => '',
        'Other Settings' => '',
        'Change Password' => 'Jelszó megváltoztatása',
        'Current password' => '',
        'New password' => 'Új jelszó',
        'Verify password' => '',
        'Spelling Dictionary' => 'Helyesírás-ellenőrző szótár',
        'Default spelling dictionary' => '',
        'Max. shown Tickets a page in Overview.' => 'Max. megjelenített jegy az áttekintésnél.',
        'The current password is not correct. Please try again!' => '',
        'Can\'t update password, your new passwords do not match. Please try again!' =>
            '',
        'Can\'t update password, it contains invalid characters!' => '',
        'Can\'t update password, it must be at least %s characters long!' =>
            '',
        'Can\'t update password, it must contain at least 2 lowercase  and 2 uppercase characters!' =>
            '',
        'Can\'t update password, it must contain at least 1 digit!' => '',
        'Can\'t update password, it must contain at least 2 characters!' =>
            '',
        'Can\'t update password, this password has already been used. Please choose a new one!' =>
            '',
        'Select the separator character used in CSV files (stats and searches). If you don\'t select a separator here, the default separator for your language will be used.' =>
            '',
        'CSV Separator' => '',

        # Template: AAAStats
        'Stat' => 'Statisztika',
        'Sum' => '',
        'Please fill out the required fields!' => 'Kérem töltse ki a kötelező mezőket!',
        'Please select a file!' => 'Kérem válasszon egy fájlt!',
        'Please select an object!' => 'Kérem válasszok egy objektumot!',
        'Please select a graph size!' => 'Kérem válasszon egy grafikon méretet!',
        'Please select one element for the X-axis!' => 'Kérem válasszon egy tulajdonságot az X tengelynek',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' =>
            'Kérem válasszon egy értéket vagy kapcsolja ki a \'Rögzített\' kapcsolót a megjelölt mezőnél.',
        'If you use a checkbox you have to select some attributes of the select field!' =>
            'Ha egy jelölőnégyzetet használ, akkor néhány értéket is ki kell választania a tulajdonsághoz!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' =>
            'Adjon meg egy értéket a bemeneti mezőben vagy kapcsolja ki a \'Rögzített\' kapcsolót!',
        'The selected end time is before the start time!' => 'A befejezési időnek a kezdeti idő után kell lennie!',
        'You have to select one or more attributes from the select field!' =>
            'Válasszon ki egy vagy több értéket a mezőből!',
        'The selected Date isn\'t valid!' => 'A kiválasztott dátum érvénytelen!',
        'Please select only one or two elements via the checkbox!' => 'Kérem válasszon egy vagy két elemet a jelölőnégyetekből!',
        'If you use a time scale element you can only select one element!' =>
            'Amennyiben egy időskála elemet is választott, akkro csak egy elemet választhat közölük!',
        'You have an error in your time selection!' => 'Hibás a kiválasztott idő!',
        'Your reporting time interval is too small, please use a larger time scale!' =>
            'A kiválasztott idő intervallum túl kicsi, kérem válasszon nagyobb skálát.',
        'The selected start time is before the allowed start time!' => 'A kiválasztott kezdési idő a megengedett kezdési idő előtt van!',
        'The selected end time is after the allowed end time!' => 'A kiválasztott befejezési idő a megengedett befejezési idő után van!',
        'The selected time period is larger than the allowed time period!' =>
            'A kiválasztott ismétlődés a megengedett ismétlődésnél nagyobb!',
        'Common Specification' => 'Általános beállítások',
        'X-axis' => 'X tengely',
        'Value Series' => 'Megjelenített értékek',
        'Restrictions' => 'Megkötések',
        'graph-lines' => 'Grafikon - vonalak',
        'graph-bars' => 'Grafikon - oszlopok',
        'graph-hbars' => 'Grafikon - vízszintes oszlopok',
        'graph-points' => 'Grafikon - pontok',
        'graph-lines-points' => 'Grafikon - vonalak-pontok',
        'graph-area' => 'Grafikon - terület',
        'graph-pie' => 'Grafikon - torta',
        'extended' => 'Kiterjesztett',
        'Agent/Owner' => 'Ügyintéző/Tulajdonos',
        'Created by Agent/Owner' => 'Letrehozó ügyintéző/tulajdonos',
        'Created Priority' => 'Létrehozáskori prioritás',
        'Created State' => 'Létrehozáskori állapot',
        'Create Time' => 'Létrehozás ideje',
        'CustomerUserLogin' => 'Ügyfél felhasználóneve',
        'Close Time' => 'Lezárás ideje',
        'TicketAccumulation' => 'Jegytárolás',
        'Attributes to be printed' => 'Nyomtatandó jellemzők',
        'Sort sequence' => 'Sorrendbe rendez',
        'Order by' => 'Sorrend',
        'Limit' => 'Sorok száma legfeljebb',
        'Ticketlist' => 'Jegylista',
        'ascending' => 'növekvő',
        'descending' => 'csökkenő',
        'First Lock' => 'Első zárolás',
        'Evaluation by' => 'Értékelés',
        'Total Time' => 'Teljes Idő',
        'Ticket Average' => 'Jegy Átlag',
        'Ticket Min Time' => 'Jegy min. idő',
        'Ticket Max Time' => 'Jegy max. idő',
        'Number of Tickets' => 'Jegyek száma',
        'Article Average' => 'Cikk Áltag',
        'Article Min Time' => 'Cikk min. idő',
        'Article Max Time' => 'Cikk max. idő',
        'Number of Articles' => 'Cikkek száma',
        'Accounted time by Agent' => 'Ügyintéző álal elszámolt idő',
        'Ticket/Article Accounted Time' => 'Jegy/Cikk elszámolt idő',
        'TicketAccountedTime' => 'JegyElszámoltIdő',
        'Ticket Create Time' => 'Jegy létrehozásának ideje',
        'Ticket Close Time' => 'Jegy lezárásának ideje',

        # Template: AAATicket
        'Status View' => '',
        'Bulk' => '',
        'Lock' => 'Zárolás',
        'Unlock' => 'Feloldás',
        'History' => 'Előzmények',
        'Zoom' => 'Részletek',
        'Age' => 'Kor',
        'Bounce' => 'Visszaküldés',
        'Forward' => 'Továbbítás',
        'From' => 'Feladó',
        'To' => 'Címzett',
        'Cc' => 'Másolat',
        'Bcc' => 'Rejtett másolat',
        'Subject' => 'Tárgy',
        'Move' => 'Áthelyezés',
        'Queue' => 'Várólista',
        'Queues' => 'Várólisták',
        'Priority' => 'Prioritás',
        'Priorities' => '',
        'Priority Update' => 'Prioritás módosítása',
        'Priority added!' => '',
        'Priority updated!' => '',
        'Signature added!' => '',
        'Signature updated!' => '',
        'SLA' => 'SLA',
        'Service Level Agreement' => '',
        'Service Level Agreements' => '',
        'Service' => 'Szolgáltatás',
        'Services' => '',
        'State' => 'Állapot',
        'States' => '',
        'Status' => 'Állapot',
        'Statuses' => '',
        'Ticket Type' => '',
        'Ticket Types' => '',
        'Compose' => 'Készít',
        'Pending' => 'Várakozik',
        'Owner' => 'Tulajdonos',
        'Owner Update' => 'Tulajdonos módosítása',
        'Responsible' => 'Felelős',
        'Responsible Update' => 'Felelős módosítása',
        'Sender' => 'Küldő',
        'Article' => 'Bejegyzés',
        'Ticket' => 'Jegy',
        'Createtime' => 'Létrehozás ideje',
        'plain' => 'sima',
        'Email' => 'E-mail',
        'email' => 'e-mail',
        'Close' => 'Lezárás',
        'Action' => 'Művelet',
        'Attachment' => 'Levélmelléklet',
        'Attachments' => 'Levélmellékletek',
        'This message was written in a character set other than your own.' =>
            'Ezt az üzenetet más karakterkészlettel írták mint amit ön használ.',
        'If it is not displayed correctly,' => 'Ha nem helyesen jelent meg,',
        'This is a' => 'Ez egy',
        'to open it in a new window.' => 'hogy megnyissa új ablakban.',
        'This is a HTML email. Click here to show it.' => 'Ez egy HTML e-mail. Kattintson ide a megtekintéshez.',
        'Free Fields' => 'Szabad mezők',
        'Merge' => 'Egyesítés',
        'merged' => 'egyesített',
        'closed successful' => 'sikeresen lezárva',
        'closed unsuccessful' => 'sikertelenül lezárva',
        'Locked Tickets Total' => '',
        'Locked Tickets Reminder Reached' => '',
        'Locked Tickets New' => '',
        'Responsible Tickets Total' => '',
        'Responsible Tickets New' => '',
        'Responsible Tickets Reminder Reached' => '',
        'Watched Tickets Total' => '',
        'Watched Tickets New' => '',
        'Watched Tickets Reminder Reached' => '',
        'All tickets' => 'Összes jegy',
        'Available tickets' => '',
        'Escalation' => 'Eszkaláció',
        'last-search' => '',
        'QueueView' => 'Várólista nézet',
        'Ticket Escalation View' => 'Jegy Eszkaláció Nézet',
        'Message from' => '',
        'End message' => '',
        'Forwarded message from' => '',
        'End forwarded message' => '',
        'new' => 'új',
        'open' => 'nyitott',
        'Open' => 'Nyitott',
        'Open tickets' => '',
        'closed' => 'lezárt',
        'Closed' => 'Lezárt',
        'Closed tickets' => '',
        'removed' => 'törölt',
        'pending reminder' => 'emlékeztetőre várakozik',
        'pending auto' => 'automatikusra várakozik',
        'pending auto close+' => 'automatikus zárásra várakozik+',
        'pending auto close-' => 'automatikus zárásra várakozik-',
        'email-external' => 'külső e-mail',
        'email-internal' => 'belső e-mail',
        'note-external' => 'külső jegyzet',
        'note-internal' => 'belső jegyzet',
        'note-report' => 'jegyzet jelentés',
        'phone' => 'telefon',
        'sms' => 'sms',
        'webrequest' => 'webkérés',
        'lock' => 'zárolt',
        'unlock' => 'feloldott',
        'very low' => 'nagyon alacsony',
        'low' => 'alacsony',
        'normal' => 'normál',
        'high' => 'magas',
        'very high' => 'nagyon magas',
        '1 very low' => '1 nagyon alacsony',
        '2 low' => '2 alacsony',
        '3 normal' => '3 normál',
        '4 high' => '4 magas',
        '5 very high' => '5 nagyon magas',
        'auto follow up' => 'automatikus válasz',
        'auto reject' => 'automatikus visszautasítás',
        'auto remove' => 'automatikus törlés',
        'auto reply' => 'automatikus válasz',
        'auto reply/new ticket' => 'automatikus válasz/új jegy',
        'Ticket "%s" created!' => 'A "%s" jegy létrehozva!',
        'Ticket Number' => 'Jegy száma',
        'Ticket Object' => 'Jegy objektum',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Nincs "%s" számú jegy! Nem tudom csatolni!',
        'You don\'t have write access to this ticket.' => '',
        'Sorry, you need to be the ticket owner to perform this action.' =>
            '',
        'Ticket selected.' => '',
        'Ticket is locked by another agent.' => '',
        'Ticket locked.' => '',
        'Don\'t show closed Tickets' => 'Ne jelenítse meg a lezárt jegyeket.',
        'Show closed Tickets' => 'Mutasd a lezárt jegyeket',
        'New Article' => 'Új bejegyzés',
        'Unread article(s) available' => '',
        'Remove from list of watched tickets' => '',
        'Add to list of watched tickets' => '',
        'Email-Ticket' => 'E-mail jegy',
        'Create new Email Ticket' => 'Új E-mail Jegy létrehozása',
        'Phone-Ticket' => 'Telefon-jegy',
        'Search Tickets' => 'Jegyek keresése',
        'Edit Customer Users' => 'Ügyfél felhasználó szerkesztése',
        'Edit Customer Company' => 'Ügyfél cég szerkesztése',
        'Bulk Action' => 'Csoportos művelet',
        'Bulk Actions on Tickets' => 'Csoportos művelet jegyeken',
        'Send Email and create a new Ticket' => 'E-mail küldése és új Jegy létrehozása',
        'Create new Email Ticket and send this out (Outbound)' => 'Új E-mail jegy létrehozása és kiküldése (Kimenő)',
        'Create new Phone Ticket (Inbound)' => 'Új Telefon-jegy létrehozása (Bejövő)',
        'Overview of all open Tickets' => 'Összes nyitott jegy áttekintése',
        'Locked Tickets' => 'Zárolt jegyek',
        'My Locked Tickets' => '',
        'My Watched Tickets' => '',
        'My Responsible Tickets' => '',
        'Watched Tickets' => 'Követett jegyek',
        'Watched' => 'Követett',
        'Watch' => '',
        'Unwatch' => '',
        'Lock it to work on it' => '',
        'Unlock to give it back to the queue' => '',
        'Shows the ticket history!' => 'Jegy előzményeinek megjelenítése!',
        'Print this ticket!' => 'Jegy nyomtatása!',
        'Change the ticket priority!' => 'Jegy prioritásának módosítása!',
        'Change the ticket free fields!' => 'Jegy szabad mezőinek módosítása!',
        'Link this ticket to an other objects!' => 'Összekapcsolja a jegyet egy másik objektummal!',
        'Change the ticket owner!' => 'Jegy tulajdonosának módosítása!',
        'Change the ticket customer!' => 'Jegyhez tartozó ügyfél módosítása!',
        'Add a note to this ticket!' => 'Megjegyzés írása a jegyhez!',
        'Merge this ticket!' => 'Egyesíti a jegyet egy másikkal!',
        'Set this ticket to pending!' => 'Jegy várakozó állapotba helyezése!',
        'Close this ticket!' => 'Jegy lezárása!',
        'Look into a ticket!' => 'Jegy részletesebb megtekintése!',
        'Delete this ticket!' => 'Jegy törlése!',
        'Mark as Spam!' => 'Jegy spamnek jelölése!',
        'My Queues' => 'Saját várólistáim',
        'Shown Tickets' => 'Megjelenített jegyek',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            'Az Ön "<OTRS_TICKET>" jegy számmal rendelkező e-mailje egyesítésre került a "<OTRS_MERGE_TO_TICKET>" jeggyel.',
        'Ticket %s: first response time is over (%s)!' => 'Jegy %s: első válasz ideje letelt (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Jegy %s: első válasz ideje le fog telni %s időn belül!',
        'Ticket %s: update time is over (%s)!' => 'Jegy %s: frissítés ideje letelt (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Jegy %s: frissítés ideje le fog telni %s időn belül!',
        'Ticket %s: solution time is over (%s)!' => 'Jegy %s: megoldás ideje letelt (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Jegy %s: megoldás ideje le fog telni %s időn belül!',
        'There are more escalated tickets!' => 'Több kiemelt jegy van!',
        'Plain Format' => '',
        'Reply All' => '',
        'Direction' => '',
        'Agent (All with write permissions)' => '',
        'Agent (Owner)' => '',
        'Agent (Responsible)' => '',
        'New ticket notification' => 'Új jegy értesítés',
        'Send me a notification if there is a new ticket in "My Queues".' =>
            'Küldjön nekem értesítést, ha új jegy van a "Saját várólistáim"-ban.',
        'Send new ticket notifications' => '',
        'Ticket follow up notification' => '',
        'Ticket lock timeout notification' => 'Jegyzárolás-lejárat értesítés',
        'Send me a notification if a ticket is unlocked by the system.' =>
            'Küldjön értesítést ha egy jegy zárolását a renszer feloldotta.',
        'Send ticket lock timeout notifications' => '',
        'Ticket move notification' => '',
        'Send me a notification if a ticket is moved into one of "My Queues".' =>
            'Küldjön nekem értesítést, ha egy jegyet a "Saját várólistáim" egyikébe mozgatták.',
        'Send ticket move notifications' => '',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' =>
            '',
        'Custom Queue' => 'Egyedi várólisták',
        'QueueView refresh time' => 'Várólista nézet frissítési ideje',
        'If enabled, the QueueView will automatically refresh after the specified time.' =>
            '',
        'Refresh QueueView after' => '',
        'Screen after new ticket' => 'Új jegy utáni képernyő',
        'Show this screen after I created a new ticket' => '',
        'Closed Tickets' => 'Lezárt jegyek',
        'Show closed tickets.' => 'Mutasd a lezárt jegyeket.',
        'Max. shown Tickets a page in QueueView.' => 'A megjelenített jegyek számának maximuma a Várólista nézetnél.',
        'Ticket Overview "Small" Limit' => '',
        'Ticket limit per page for Ticket Overview "Small"' => '',
        'Ticket Overview "Medium" Limit' => '',
        'Ticket limit per page for Ticket Overview "Medium"' => '',
        'Ticket Overview "Preview" Limit' => '',
        'Ticket limit per page for Ticket Overview "Preview"' => '',
        'Ticket watch notification' => '',
        'Send me the same notifications for my watched tickets that the ticket owners will get.' =>
            '',
        'Send ticket watch notifications' => '',
        'Out Of Office Time' => '',
        'New Ticket' => 'Új jegy',
        'Create new Ticket' => 'Új jegy létrehozása',
        'Customer called' => 'Ügyfél telefonált',
        'phone call' => 'telefonhívás',
        'Phone Call Outbound' => '',
        'Phone Call Inbound' => '',
        'Reminder Reached' => 'Emlékeztető lejárt',
        'Reminder Tickets' => 'Emlékeztető Jegyek',
        'Escalated Tickets' => 'Eszkalált Jegyek',
        'New Tickets' => 'Új Jegyek',
        'Open Tickets / Need to be answered' => 'Nyitott Jegyek / Válaszra várnak',
        'All open tickets, these tickets have already been worked on, but need a response' =>
            '',
        'All new tickets, these tickets have not been worked on yet' => '',
        'All escalated tickets' => '',
        'All tickets with a reminder set where the reminder date has been reached' =>
            '',
        'Archived tickets' => '',
        'Unarchived tickets' => '',
        'History::Move' => 'Történet::Mozgat',
        'History::TypeUpdate' => 'Updated Type to %s (ID=%s).',
        'History::ServiceUpdate' => 'Updated Service to %s (ID=%s).',
        'History::SLAUpdate' => 'Updated SLA to %s (ID=%s).',
        'History::NewTicket' => 'Történet::ÚjJegy',
        'History::FollowUp' => 'Történet::Válasz',
        'History::SendAutoReject' => 'Történet::AutomatikusElutasításKüldés',
        'History::SendAutoReply' => 'Történet::AutomatikusVálaszKüldés',
        'History::SendAutoFollowUp' => 'Történet::AutomatikusReakcióKüldés',
        'History::Forward' => 'Történet::Továbbít',
        'History::Bounce' => 'Történet::Visszaküld',
        'History::SendAnswer' => 'Történet::VálaszKüldés',
        'History::SendAgentNotification' => 'Történet::ÜgyintézőÉrtesítésKüldés',
        'History::SendCustomerNotification' => 'Történet::ÜgyfélÉrtesítésKüldés',
        'History::EmailAgent' => 'Történet::EmailÜgyintéző',
        'History::EmailCustomer' => 'Történet::EmailÜgyfél',
        'History::PhoneCallAgent' => 'Történet::ÜgyintézőTelefonHívás',
        'History::PhoneCallCustomer' => 'Történet::ÜgyfélTelefonHívás',
        'History::AddNote' => 'Történet::MegjegyzésHozzáadás',
        'History::Lock' => 'Történet::Zárol',
        'History::Unlock' => 'Történet::Feloldás',
        'History::TimeAccounting' => 'Történet::IdőElszámolás',
        'History::Remove' => 'Történet::Eltávolítás',
        'History::CustomerUpdate' => 'Történet::ÜgyfélMódosítás',
        'History::PriorityUpdate' => 'Történet::PrioritásMódosítás',
        'History::OwnerUpdate' => 'Történet::TulajdonosVáltás',
        'History::LoopProtection' => 'Történet::VisszacsatolásVédelem',
        'History::Misc' => 'Történet::Vegyes',
        'History::SetPendingTime' => 'Történet::VárakozásiIdőBeállítás',
        'History::StateUpdate' => 'Történet::ÁllapotMódosítás',
        'History::TicketDynamicFieldUpdate' => 'Történet::JegySzabadSzövegMódosítás',
        'History::WebRequestCustomer' => 'Történet::ÜgyfélWebKérés',
        'History::TicketLinkAdd' => 'Történet::JegyCsatolásHozzáadás',
        'History::TicketLinkDelete' => 'Történet::JegyCsatolásTörlés',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',
        'History::SystemRequest' => '',
        'History::ResponsibleUpdate' => '',
        'History::ArchiveFlagUpdate' => '',

        # Template: AAAWeekDay
        'Sun' => 'Vas',
        'Mon' => 'Hét',
        'Tue' => 'Ked',
        'Wed' => 'Sze',
        'Thu' => 'Csü',
        'Fri' => 'Pén',
        'Sat' => 'Szo',

        # Template: AdminAttachment
        'Attachment Management' => 'Levélmellékletek kezelése',
        'Actions' => '',
        'Go to overview' => '',
        'Add attachment' => '',
        'List' => 'Lista',
        'Validity' => '',
        'No data found.' => '',
        'Download file' => '',
        'Delete this attachment' => '',
        'Add Attachment' => '',
        'Edit Attachment' => '',
        'This field is required.' => '',
        'or' => 'vagy',

        # Template: AdminAutoResponse
        'Auto Response Management' => 'Automatikus válasz kezelőnek',
        'Add auto response' => '',
        'Add Auto Response' => '',
        'Edit Auto Response' => '',
        'Response' => 'Válasz',
        'Auto response from' => '',
        'Reference' => 'Referencia',
        'You can use the following tags' => '',
        'To get the first 20 character of the subject.' => 'Az első 20 karakter használata a tárgyból',
        'To get the first 5 lines of the email.' => 'Az első 5 sor használata az e-mailből.',
        'To get the realname of the sender (if given).' => 'A küldő valódi nevének használata (ha van ilyen)',
        'To get the article attribute' => '',
        ' e. g.' => '',
        'Options of the current customer user data' => '',
        'Ticket owner options' => '',
        'Ticket responsible options' => '',
        'Options of the current user who requested this action' => '',
        'Options of the ticket data' => '',
        'Config options' => '',
        'Example response' => '',

        # Template: AdminCustomerCompany
        'Customer Company Management' => 'Ügyfél cégek kezelése',
        'Wildcards like \'*\' are allowed.' => '',
        'Add customer company' => '',
        'Please enter a search term to look for customer companies.' => '',
        'Add Customer Company' => 'Ügyfél cég hozzáadása',

        # Template: AdminCustomerUser
        'Customer Management' => '',
        'Add customer' => '',
        'Select' => 'Kiválasztás',
        'Hint' => '',
        'Customer will be needed to have a customer history and to login via customer panel.' =>
            '',
        'Please enter a search term to look for customers.' => '',
        'Last Login' => '',
        'Add Customer' => '',
        'Edit Customer' => '',
        'This field is required and needs to be a valid email address.' =>
            '',
        'This email address is not allowed due to the system configuration.' =>
            '',
        'This email address failed MX check.' => '',
        'DNS problem, please check your configuration and the error log.' =>
            '',
        'The syntax of this email address is incorrect.' => '',

        # Template: AdminCustomerUserGroup
        'Manage Customer-Group Relations' => '',
        'Notice' => '',
        'This feature is disabled!' => 'Ez a képesség inaktív!',
        'Just use this feature if you want to define group permissions for customers.' =>
            '',
        'Enable it here!' => 'Aktiválja itt!',
        'Search for customers.' => '',
        'Edit Customer Default Groups' => '',
        'These groups are automatically assigned to all customers.' => '',
        'You can manage these groups via the configuration setting "CustomerGroupAlwaysGroups".' =>
            '',
        'Filter for Groups' => '',
        'Select the customer:group permissions.' => '',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the customer).' =>
            '',
        'Search Result:' => '',
        'Customers' => '',
        'Groups' => 'Csoportok',
        'No matches found.' => '',
        'Change Group Relations for Customer' => '',
        'Change Customer Relations for Group' => '',
        'Toggle %s Permission for all' => '',
        'Toggle %s permission for %s' => '',
        'Customer Default Groups:' => '',
        'No changes can be made to these groups.' => '',
        'ro' => 'Csak olvasás',
        'Read only access to the ticket in this group/queue.' => 'Csak olvasási jogosultság a jegyekhez ebben a csoportban/várólistában.',
        'rw' => 'Írás/Olvasás',
        'Full read and write access to the tickets in this group/queue.' =>
            'Teljes írás és olvasási jog a jegyekhez ebben a csoportban/várólistában.',

        # Template: AdminCustomerUserService
        'Manage Customer-Services Relations' => '',
        'Edit default services' => '',
        'Filter for Services' => '',
        'Allocate Services to Customer' => '',
        'Allocate Customers to Service' => '',
        'Toggle active state for all' => '',
        'Active' => 'Aktív',
        'Toggle active state for %s' => '',

        # Template: AdminDynamicField
        'Dynamic Fields Management' => '',
        'Add new field for object' => '',
        'To add a new field, select the field type form one of the object\'s list, the object defines the boundary of the field and it can\'t be changed after the field creation.' =>
            '',
        'Dynamic Fields List' => '',
        'Dynamic fields per page' => '',
        'Label' => '',
        'Order' => 'Sorrend',
        'Object' => 'Objektum',

        # Template: AdminDynamicFieldCheckbox
        'Dynamic Fields' => '',
        'Field' => '',
        'Go back to overview' => '',
        'General' => '',
        'This field is required, and the value should be alphabetic and numeric characters only.' =>
            '',
        'Must be unique and only accept alphabetic and numeric characters.' =>
            '',
        'Changing this value will require manual changes in the system.' =>
            '',
        'This is the name to be shown on the screens where the field is active.' =>
            '',
        'Field order' => '',
        'This field is required and must be numeric.' => '',
        'This is the order in which this field will be shown on the screens where is active.' =>
            '',
        'Field type' => '',
        'Object type' => '',
        'Field Settings' => '',
        'Default value' => '',
        'This is the default value for this field.' => '',
        'Save' => 'Mentés',

        # Template: AdminDynamicFieldDateTime
        'Default date difference' => '',
        'This field must be numeric.' => '',
        'The difference from NOW (in seconds) to calculate the field default value (e.g. 3600 or -60).' =>
            '',
        'Define years period' => '',
        'Activate this feature to define a fixed range of years (in the future and in the past) to be displayed on the year part of the field.' =>
            '',
        'Years in the past' => '',
        'Years in the past to display (default: 5 years).' => '',
        'Years in the future' => '',
        'Years in the future to display (default: 5 years).' => '',
        'Show link' => '',
        'Here you can specify an optional HTTP link for the field value in Overviews and Zoom screens.' =>
            '',

        # Template: AdminDynamicFieldDropdown
        'Possible values' => '',
        'Key' => 'Kulcs',
        'Value' => 'Érték',
        'Remove value' => '',
        'Add value' => '',
        'Add Value' => '',
        'Add empty value' => '',
        'Activate this option to create an empty selectable value.' => '',
        'Translatable values' => '',
        'If you activate this option the values will be translated to the user defined language.' =>
            '',
        'Note' => 'Megjegyzés',
        'You need to add the translations manually into the language translation files.' =>
            '',

        # Template: AdminDynamicFieldMultiselect

        # Template: AdminDynamicFieldText
        'Number of rows' => '',
        'Specify the height (in lines) for this field in the edit mode.' =>
            '',
        'Number of cols' => '',
        'Specify the width (in characters) for this field in the edit mode.' =>
            '',

        # Template: AdminEmail
        'Admin Notification' => 'Adminsztrátori értesítések',
        'With this module, administrators can send messages to agents, group or role members.' =>
            '',
        'Create Administrative Message' => '',
        'Your message was sent to' => '',
        'Send message to users' => '',
        'Send message to group members' => '',
        'Group members need to have permission' => '',
        'Send message to role members' => '',
        'Also send to customers in groups' => '',
        'Body' => 'Törzs',
        'Send' => 'Küldés',

        # Template: AdminGenericAgent
        'Generic Agent' => '',
        'Add job' => '',
        'Last run' => 'Utolsó végrehajtás',
        'Run Now!' => 'Végrehajtás most!',
        'Delete this task' => '',
        'Run this task' => '',
        'Job Settings' => '',
        'Job name' => '',
        'Currently this generic agent job will not run automatically.' =>
            'Jelenleg ez az általános ügyintéző munka nem fut le automatikusan.',
        'To enable automatic execution select at least one value from minutes, hours and days!' =>
            'Az automata végrehajtás beállításához válasszon legalább egy értéket a perc, óra és nap közül!',
        'Schedule minutes' => '',
        'Schedule hours' => '',
        'Schedule days' => '',
        'Toggle this widget' => '',
        'Ticket Filter' => '',
        '(e. g. 10*5155 or 105658*)' => 'pl. 10*5144 vagy 105658*',
        '(e. g. 234321)' => 'pl. 234321',
        'Customer login' => '',
        '(e. g. U5150)' => 'pl. U5150',
        'Fulltext-search in article (e. g. "Mar*in" or "Baue*").' => '',
        'Agent' => 'Ügyintéző',
        'Ticket lock' => '',
        'Create times' => '',
        'No create time settings.' => 'Nincsenek létrehozási idő beállítások.',
        'Ticket created' => 'Jegy létrehozva',
        'Ticket created between' => 'Jegy létrehozva időpontok között:',
        'Change times' => '',
        'No change time settings.' => 'Nincs változás az időbeállításban.',
        'Ticket changed' => 'Jegy változott',
        'Ticket changed between' => 'Jegy változott eközött',
        'Close times' => '',
        'No close time settings.' => 'Nincs lezárás ideje beállítás.',
        'Ticket closed' => 'Jegy lezárva',
        'Ticket closed between' => 'Jegy lezárva között:',
        'Pending times' => '',
        'No pending time settings.' => 'Nincsenek várakozási idő beállítások.',
        'Ticket pending time reached' => 'Várakozási idő letelt',
        'Ticket pending time reached between' => 'Várakozási idő letelt időpontok között:',
        'Escalation times' => '',
        'No escalation time settings.' => 'Nincs eszkalációs idő beállítva.',
        'Ticket escalation time reached' => 'Jegy eszkalációs ideje lejárt',
        'Ticket escalation time reached between' => 'Jegy eszkalációs ideje lejárt időpontok között:',
        'Escalation - first response time' => '',
        'Ticket first response time reached' => 'Jegy első válasz ideje lejárt',
        'Ticket first response time reached between' => 'Jegy első válasz ideje lejárt időpontok között:',
        'Escalation - update time' => '',
        'Ticket update time reached' => 'Jegy frissítés ideje lejárt',
        'Ticket update time reached between' => 'Jegy frissítés ideje lejárt időpontok között:',
        'Escalation - solution time' => '',
        'Ticket solution time reached' => 'Jegy megoldás ideje lejárt',
        'Ticket solution time reached between' => 'Jegy megoldás ideje lejárt időpontok között:',
        'Archive search option' => '',
        'Ticket Action' => '',
        'Set new service' => '',
        'Set new Service Level Agreement' => '',
        'Set new priority' => '',
        'Set new queue' => '',
        'Set new state' => '',
        'Set new agent' => '',
        'new owner' => '',
        'new responsible' => '',
        'Set new ticket lock' => '',
        'New customer' => '',
        'New customer ID' => '',
        'New title' => '',
        'New type' => '',
        'New Dynamic Field Values' => '',
        'Archive selected tickets' => '',
        'Add Note' => 'Megjegyzés hozzáadása',
        'Time units' => 'Idő egységek',
        ' (work units)' => ' (munkaegység)',
        'Ticket Commands' => '',
        'Send agent/customer notifications on changes' => 'Küldjön változatásokról értesítést az ügyintézőnek/ügyfélnek',
        'CMD' => 'PARANCS',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            'Ez a parancs lesz végrehajtva. Az ARG[0] lesz a jegy száma. Az ARG[1] lesz a jegy azonosítója.',
        'Delete tickets' => 'Jegyek törlése',
        'Warning: All affected tickets will be removed from the database and cannot be restored!' =>
            '',
        'Execute Custom Module' => '',
        'Param %s key' => '',
        'Param %s value' => '',
        'Save Changes' => '',
        'Results' => 'Eredmények',
        '%s Tickets affected! What do you want to do?' => '',
        'Warning: You used the DELETE option. All deleted tickets will be lost!' =>
            '',
        'Edit job' => '',
        'Run job' => '',
        'Affected Tickets' => '',

        # Template: AdminGenericInterfaceDebugger
        'GenericInterface Debugger for Web Service %s' => '',
        'Web Services' => '',
        'Debugger' => '',
        'Go back to web service' => '',
        'Clear' => '',
        'Do you really want to clear the debug log of this web service?' =>
            '',
        'Request List' => '',
        'Time' => 'Idő',
        'Remote IP' => '',
        'Loading' => '',
        'Select a single request to see its details.' => '',
        'Filter by type' => '',
        'Filter from' => '',
        'Filter to' => '',
        'Filter by remote IP' => '',
        'Refresh' => 'Frissítés',
        'Request Details' => '',
        'An error occurred during communication.' => '',
        'Show or hide the content' => '',
        'Clear debug log' => '',

        # Template: AdminGenericInterfaceInvokerDefault
        'Add new Invoker to Web Service %s' => '',
        'Change Invoker %s of Web Service %s' => '',
        'Add new invoker' => '',
        'Change invoker %s' => '',
        'Do you really want to delete this invoker?' => '',
        'All configuration data will be lost.' => '',
        'Invoker Details' => '',
        'The name is typically used to call up an operation of a remote web service.' =>
            '',
        'Please provide a unique name for this web service invoker.' => '',
        'The name you entered already exists.' => '',
        'Invoker backend' => '',
        'This OTRS invoker backend module will be called to prepare the data to be sent to the remote system, and to process its response data.' =>
            '',
        'Mapping for outgoing request data' => '',
        'Configure' => '',
        'The data from the invoker of OTRS will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Mapping for incoming response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the invoker of OTRS expects.' =>
            '',
        'Event Triggers' => '',
        'Asynchronous' => '',
        'Delete this event' => '',
        'This invoker will be triggered by the configured events.' => '',
        'Do you really want to delete this event trigger?' => '',
        'Add Event Trigger' => '',
        'To add a new event select the event object and event name and click on the "+" button' =>
            '',
        'Asynchronous event triggers are handled by the OTRS Scheduler in background (recommended).' =>
            '',
        'Synchronous event triggers would be processed directly during the web request.' =>
            '',
        'Save and continue' => '',
        'Save and finish' => '',
        'Delete this Invoker' => '',
        'Delete this Event Trigger' => '',

        # Template: AdminGenericInterfaceMappingSimple
        'GenericInterface Mapping Simple for Web Service %s' => '',
        'Go back to' => '',
        'Mapping Simple' => '',
        'Default rule for unmapped keys' => '',
        'This rule will apply for all keys with no mapping rule.' => '',
        'Default rule for unmapped values' => '',
        'This rule will apply for all values with no mapping rule.' => '',
        'New key map' => '',
        'Add key mapping' => '',
        'Mapping for Key ' => '',
        'Remove key mapping' => '',
        'Key mapping' => '',
        'Map key' => '',
        'matching the' => '',
        'to new key' => '',
        'Value mapping' => '',
        'Map value' => '',
        'to new value' => '',
        'Remove value mapping' => '',
        'New value map' => '',
        'Add value mapping' => '',
        'Do you really want to delete this key mapping?' => '',
        'Delete this Key Mapping' => '',

        # Template: AdminGenericInterfaceOperationDefault
        'Add new Operation to Web Service %s' => '',
        'Change Operation %s of Web Service %s' => '',
        'Add new operation' => '',
        'Change operation %s' => '',
        'Do you really want to delete this operation?' => '',
        'Operation Details' => '',
        'The name is typically used to call up this web service operation from a remote system.' =>
            '',
        'Please provide a unique name for this web service.' => '',
        'Mapping for incoming request data' => '',
        'The request data will be processed by this mapping, to transform it to the kind of data OTRS expects.' =>
            '',
        'Operation backend' => '',
        'This OTRS operation backend module will be called internally to process the request, generating data for the response.' =>
            '',
        'Mapping for outgoing response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Delete this Operation' => '',

        # Template: AdminGenericInterfaceTransportHTTPSOAP
        'GenericInterface Transport HTTP::SOAP for Web Service %s' => '',
        'Network transport' => '',
        'Properties' => '',
        'Endpoint' => '',
        'URI to indicate a specific location for accessing a service.' =>
            '',
        'e.g. http://local.otrs.com:8000/Webservice/Example' => '',
        'Namespace' => '',
        'URI to give SOAP methods a context, reducing ambiguities.' => '',
        'e.g urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions' =>
            '',
        'Maximum message length' => '',
        'This field should be an integer number.' => '',
        'Here you can specify the maximum size (in bytes) of SOAP messages that OTRS will process.' =>
            '',
        'Encoding' => '',
        'The character encoding for the SOAP message contents.' => '',
        'e.g utf-8, latin1, iso-8859-1, cp1250, Etc.' => '',
        'SOAPAction' => '',
        'Set to "Yes" to send a filled SOAPAction header.' => '',
        'Set to "No" to send an empty SOAPAction header.' => '',
        'SOAPAction separator' => '',
        'Character to use as separator between name space and SOAP method.' =>
            '',
        'Usually .Net web services uses a "/" as separator.' => '',
        'Authentication' => '',
        'The authentication mechanism to access the remote system.' => '',
        'A "-" value means no authentication.' => '',
        'The user name to be used to access the remote system.' => '',
        'The password for the privileged user.' => '',

        # Template: AdminGenericInterfaceWebservice
        'GenericInterface Web Service Management' => '',
        'Add web service' => '',
        'Clone web service' => '',
        'The name must be unique.' => '',
        'Clone' => '',
        'Export web service' => '',
        'Import web service' => '',
        'Configuration File' => '',
        'The file must be a valid web service configuration YAML file.' =>
            '',
        'Import' => 'Importálás',
        'Configuration history' => '',
        'Delete web service' => '',
        'Do you really want to delete this web service?' => '',
        'After you save the configuration you will be redirected again to the edit screen.' =>
            '',
        'If you want to return to overview please click the "Go to overview" button.' =>
            '',
        'Web Service List' => '',
        'Remote system' => '',
        'Provider transport' => '',
        'Requester transport' => '',
        'Details' => '',
        'Debug threshold' => '',
        'In provider mode, OTRS offers web services which are used by remote systems.' =>
            '',
        'In requester mode, OTRS uses web services of remote systems.' =>
            '',
        'Operations are individual system functions which remote systems can request.' =>
            '',
        'Invokers prepare data for a request to a remote web service, and process its response data.' =>
            '',
        'Controller' => '',
        'Inbound mapping' => '',
        'Outbound mapping' => '',
        'Delete this action' => '',
        'At least one %s has a controller that is either not active or not present, please check the controller registration or delete the %s' =>
            '',
        'Delete webservice' => '',
        'Delete operation' => '',
        'Delete invoker' => '',
        'Clone webservice' => '',
        'Import webservice' => '',

        # Template: AdminGenericInterfaceWebserviceHistory
        'GenericInterface Configuration History for Web Service %s' => '',
        'Go back to Web Service' => '',
        'Here you can view older versions of the current web service\'s configuration, export or even restore them.' =>
            '',
        'Configuration History List' => '',
        'Version' => 'Verzió',
        'Create time' => '',
        'Select a single configuration version to see its details.' => '',
        'Export web service configuration' => '',
        'Restore web service configuration' => '',
        'Do you really want to restore this version of the web service configuration?' =>
            '',
        'Your current web service configuration will be overwritten.' => '',
        'Show or hide the content.' => '',
        'Restore' => '',

        # Template: AdminGroup
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>
            'Figyelem: Ha az admin csoport nevét megváltoztatja a megfelelő SysConfig beállítások előtt, úgy ki lesz zárva az adminisztrációs felületről. Ha ez megtörtént, akkor nevezze vissza a csoportot admin névre egy megfelelő SQL parancs kiadásával.',
        'Group Management' => 'Csoportok kezelése',
        'Add group' => '',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            'Az admin csoport megkapja az admin területet és a státusz csoport megkapja a státusz területet.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...). ' =>
            '',
        'It\'s useful for ASP solutions. ' => '',
        'Add Group' => 'Csoport hozzáadása',
        'Edit Group' => '',

        # Template: AdminLog
        'System Log' => 'Rendszernapló',
        'Here you will find log information about your system.' => '',
        'Hide this message' => '',
        'Recent Log Entries' => '',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Levelezés beállításai',
        'Add mail account' => '',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            'Az összes fiókkal rendelkező bejövő e-mail egy kiválasztott várólistához lesz rendelve!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' =>
            'Ha az Ön fiókja megbízható, a már létező X-OTRS fejlécet használjuk beérkezéskor (prioritáshoz, ...)! Egyéb esetben a levelezési szűrők lesznek alkalmazva.',
        'Host' => 'Kiszolgáló',
        'Delete account' => '',
        'Fetch mail' => '',
        'Add Mail Account' => '',
        'Example: mail.example.com' => '',
        'IMAP Folder' => '',
        'Only modify this if you need to fetch mail from a different folder than INBOX.' =>
            '',
        'Trusted' => 'Megbízható',
        'Dispatching' => 'Szétválogatás',
        'Edit Mail Account' => '',

        # Template: AdminNavigationBar
        'Admin' => 'Adminisztráció',
        'Agent Management' => '',
        'Queue Settings' => '',
        'Ticket Settings' => '',
        'System Administration' => '',

        # Template: AdminNotification
        'Notification Management' => 'Értesítéskezelés',
        'Select a different language' => '',
        'Filter for Notification' => '',
        'Notifications are sent to an agent or a customer.' => 'Az értesítések ügyintézőnek vagy ügyfélnek kerülnek elküldésre.',
        'Notification' => 'Értesítés',
        'Edit Notification' => '',
        'e. g.' => '',
        'Options of the current customer data' => '',

        # Template: AdminNotificationEvent
        'Add notification' => '',
        'Delete this notification' => '',
        'Add Notification' => 'Értesítés hozzáadása',
        'Recipient groups' => '',
        'Recipient agents' => '',
        'Recipient roles' => '',
        'Recipient email addresses' => '',
        'Article type' => 'Bejegyzés típusa',
        'Only for ArticleCreate event' => '',
        'Subject match' => 'Tárgy egyezés',
        'Body match' => 'Levéltörzs egyezés',
        'Include attachments to notification' => '',
        'Notification article type' => '',
        'Only for notifications to specified email addresses' => '',
        'To get the first 20 character of the subject (of the latest agent article).' =>
            '(Legutolsó ügyintéző cikk) tárgyának első 20 karaktere.',
        'To get the first 5 lines of the body (of the latest agent article).' =>
            '(Legutolsó ügyintéző cikk) törzsének első 5 sora.',
        'To get the first 20 character of the subject (of the latest customer article).' =>
            '(Legutolsó ügyfél cikk) tárgyának első 20 karaktere.',
        'To get the first 5 lines of the body (of the latest customer article).' =>
            '(Legutolsó ügyfél cikk) törzsének első 5 sora.',

        # Template: AdminPGP
        'PGP Management' => 'PGP kulcs kezelése',
        'Use this feature if you want to work with PGP keys.' => '',
        'Add PGP key' => '',
        'In this way you can directly edit the keyring configured in SysConfig.' =>
            'Így közvetlenül szerkesztheti a kulcstartót amit a rendszer beállításainál beállított.',
        'Introduction to PGP' => '',
        'Result' => 'Eredmények',
        'Identifier' => 'Azonosító',
        'Bit' => 'Bitek száma',
        'Fingerprint' => 'Ujjlenyomat',
        'Expires' => 'Lejárati idő',
        'Delete this key' => '',
        'Add PGP Key' => '',
        'PGP key' => '',

        # Template: AdminPackageManager
        'Package Manager' => 'Csomagkezelő',
        'Uninstall package' => '',
        'Do you really want to uninstall this package?' => 'Valóban el akarja távolítani ezt a csomagot?',
        'Reinstall package' => '',
        'Do you really want to reinstall this package? Any manual changes will be lost.' =>
            '',
        'Continue' => 'Folytatás',
        'Install' => 'Telepítés',
        'Install Package' => '',
        'Update repository information' => '',
        'Did not find a required feature? OTRS Group provides their subscription customers with exclusive Add-Ons:' =>
            '',
        'Online Repository' => 'On-line csomagtároló',
        'Vendor' => 'Terjesztő',
        'Module documentation' => 'Modul dokumentáció',
        'Upgrade' => 'Frissítés',
        'Local Repository' => 'Helyi csomagtároló',
        'Uninstall' => 'Eltávolítás',
        'Reinstall' => 'Újratelepítés',
        'Download package' => '',
        'Rebuild package' => '',
        'Metadata' => '',
        'Change Log' => '',
        'Date' => 'Dátum',
        'List of Files' => '',
        'Permission' => 'Jogosultság',
        'Download' => 'Letöltés',
        'Download file from package!' => 'Fájl letöltése a csomagból!',
        'Required' => 'Követlemények',
        'PrimaryKey' => 'ElsődelegesKulcs',
        'AutoIncrement' => 'AutoNövekvő',
        'SQL' => 'SQL',
        'File differences for file %s' => '',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Teljesítmény napló',
        'This feature is enabled!' => 'Ez a képesség aktív!',
        'Just use this feature if you want to log each request.' => 'Használja ezt a képességet amennyiben naplózni szeretne minden egyes kérést.',
        'Activating this feature might affect your system performance!' =>
            'Ha bekapcsolja ezt a funkciót a rendszer teljesítményét jelentősen befolyásolhatja!',
        'Disable it here!' => 'Inaktiválja itt!',
        'Logfile too large!' => 'A naplófájl túl nagy!',
        'The logfile is too large, you need to reset it' => '',
        'Overview' => 'Áttekintés',
        'Range' => 'Tartomány',
        'Interface' => 'Felület',
        'Requests' => 'Kérések',
        'Min Response' => 'Min. Válasz',
        'Max Response' => 'Max. Válasz',
        'Average Response' => 'Átlagos Válasz',
        'Period' => 'Időszak',
        'Min' => 'Min.',
        'Max' => 'Max.',
        'Average' => 'Átlag',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Levelezési szűrők kezelése',
        'Add filter' => '',
        'To dispatch or filter incoming emails based on email headers. Matching using Regular Expressions is also possible.' =>
            '',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' =>
            'Amennyiben Ön csak az e-mail cím egyezését kívánja vizsgálni, akkor használja a EMAILADDRESS:info@example.com formulát a Feladó (From), Címzett (To) vagy Másolat (Cc) mezőkben.',
        'If you use Regular Expressions, you also can use the matched value in () as [***] in the \'Set\' action.' =>
            '',
        'Delete this filter' => '',
        'Add PostMaster Filter' => '',
        'Edit PostMaster Filter' => '',
        'Filter name' => '',
        'The name is required.' => '',
        'Stop after match' => 'Megáll egyezés után',
        'Filter Condition' => '',
        'The field needs to be a valid regular expression or a literal word.' =>
            '',
        'Set Email Headers' => '',
        'The field needs to be a literal word.' => '',

        # Template: AdminPriority
        'Priority Management' => 'Prioritás kezelés',
        'Add priority' => '',
        'Add Priority' => 'Prioritás hozzáadása',
        'Edit Priority' => '',

        # Template: AdminQueue
        'Manage Queues' => '',
        'Add queue' => '',
        'Add Queue' => '',
        'Edit Queue' => '',
        'Sub-queue of' => '',
        'Unlock timeout' => 'Feloldási időtúllépés',
        '0 = no unlock' => '0 = nincs feloldás',
        'Only business hours are counted.' => 'Csak a munkaórák kerülek számításba.',
        'If an agent locks a ticket and does not close it before the unlock timeout has passed, the ticket will unlock and will become available for other agents.' =>
            '',
        'Notify by' => 'Értesítés',
        '0 = no escalation' => '0 = nincs kiemelés',
        'If there is not added a customer contact, either email-external or phone, to a new ticket before the time defined here expires, the ticket is escalated.' =>
            '',
        'If there is an article added, such as a follow-up via email or the customer portal, the escalation update time is reset. If there is no customer contact, either email-external or phone, added to a ticket before the time defined here expires, the ticket is escalated.' =>
            '',
        'If the ticket is not set to closed before the time defined here expires, the ticket is escalated.' =>
            '',
        'Follow up Option' => 'Válasz kezelése',
        'Specifies if follow up to closed tickets would re-open the ticket, be rejected or lead to a new ticket.' =>
            '',
        'Ticket lock after a follow up' => 'Jegy zárolása válasz érkezése után.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked to the old owner.' =>
            '',
        'System address' => '',
        'Will be the sender address of this queue for email answers.' => 'Ennél a várólistánál ez lesz a feladó e-mail válaszokhoz.',
        'Default sign key' => '',
        'The salutation for email answers.' => 'A megszólítás az e-mail válaszokhoz.',
        'The signature for email answers.' => 'Az aláírás a válasz e-mailekhez.',

        # Template: AdminQueueAutoResponse
        'Manage Queue-Auto Response Relations' => '',
        'Filter for Queues' => '',
        'Filter for Auto Responses' => '',
        'Auto Responses' => 'Automatikus válaszok',
        'Change Auto Response Relations for Queue' => '',
        'settings' => 'beállítások',

        # Template: AdminQueueResponses
        'Manage Response-Queue Relations' => '',
        'Filter' => 'Szűrő',
        'Filter for Responses' => '',
        'Responses' => 'Válaszok',
        'Change Queue Relations for Response' => '',
        'Change Response Relations for Queue' => '',

        # Template: AdminResponse
        'Manage Responses' => '',
        'Add response' => '',
        'A response is default text to write faster answer (with default text) to customers.' =>
            'Egy reakció az alapértelmezett szöveg gyors válaszokhoz (az alapértelmezett szöveggel) az ügyfeleknek.',
        'Don\'t forget to add a new response a queue!' => 'Ne felejtsen el új reakciót hozzáadni a várólistához!',
        'Delete this entry' => '',
        'Add Response' => '',
        'Edit Response' => '',
        'The current ticket state is' => 'A jegy aktuális állapota',
        'Your email address is' => '',

        # Template: AdminResponseAttachment
        'Manage Responses <-> Attachments Relations' => '',
        'Filter for Attachments' => '',
        'Change Response Relations for Attachment' => '',
        'Change Attachment Relations for Response' => '',
        'Toggle active for all' => '',
        'Link %s to selected %s' => '',

        # Template: AdminRole
        'Role Management' => 'Szerepek kezelése',
        'Add role' => '',
        'Create a role and put groups in it. Then add the role to the users.' =>
            'Hozzon létre egy szerepet és tegyen bele csoportokat. Azután adja a szerepet a felhasználókhoz.',
        'There are no roles defined. Please use the \'Add\' button to create a new role.' =>
            '',
        'Add Role' => 'Szerep hozzáadása',
        'Edit Role' => '',

        # Template: AdminRoleGroup
        'Manage Role-Group Relations' => '',
        'Filter for Roles' => '',
        'Roles' => 'Szerepek',
        'Select the role:group permissions.' => '',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the role).' =>
            '',
        'Change Role Relations for Group' => '',
        'Change Group Relations for Role' => '',
        'Toggle %s permission for all' => '',
        'move_into' => 'mozgat',
        'Permissions to move tickets into this group/queue.' => 'Jogosultságok jegyek áthelyezéséhez ebbe a csoportba/várólistába.',
        'create' => 'készít',
        'Permissions to create tickets in this group/queue.' => 'Jogosultságok új jegyek létrehozásához ebben a csoportban/várólistában.',
        'priority' => 'prioritás',
        'Permissions to change the ticket priority in this group/queue.' =>
            'Jogosultágok a jegy prioritásnak megváltoztatásához ebben a csoportban/várólistában.',

        # Template: AdminRoleUser
        'Manage Agent-Role Relations' => '',
        'Filter for Agents' => '',
        'Agents' => '',
        'Manage Role-Agent Relations' => '',
        'Change Role Relations for Agent' => '',
        'Change Agent Relations for Role' => '',

        # Template: AdminSLA
        'SLA Management' => 'SLA kezelése',
        'Add SLA' => 'SLA hozzáadása',
        'Edit SLA' => '',
        'Please write only numbers!' => '',

        # Template: AdminSMIME
        'S/MIME Management' => 'S/MIME kezelés',
        'Add certificate' => '',
        'Add private key' => '',
        'Filter for certificates' => '',
        'Filter for SMIME certs' => '',
        'Here you can add relations to your private certificate, these will be embedded to the SMIME signature every time you use this certificate to sign an email.' =>
            '',
        'See also' => 'Lásd még',
        'In this way you can directly edit the certification and private keys in file system.' =>
            'Íly módon közvetlenül szerkesztheti a fájlrendszeren tárolt tanusítványokat és titkos kulcsokat.',
        'Hash' => 'Kivonat',
        'Create' => 'Létrehozás',
        'Handle related certificates' => '',
        'Delete this certificate' => '',
        'Add Certificate' => 'Tanusítvány Hozzáadása',
        'Add Private Key' => 'Titkos Kulcs Hozáadása',
        'Secret' => 'Titok',
        'Related Certificates for' => '',
        'Delete this relation' => '',
        'Available Certificates' => '',
        'Relate this certificate' => '',

        # Template: AdminSalutation
        'Salutation Management' => 'Megszólítások kezelése',
        'Add salutation' => '',
        'Add Salutation' => 'Megszólítás hozzáadása',
        'Edit Salutation' => '',
        'Example salutation' => '',

        # Template: AdminScheduler
        'This option will force Scheduler to start even if the process is still registered in the database' =>
            '',
        'Start scheduler' => '',
        'Scheduler could not be started. Check if scheduler is not running and try it again with Force Start option' =>
            '',

        # Template: AdminSecureMode
        'Secure mode needs to be enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' =>
            'Biztonságos üzemmód a telepítést követően fog teljesen működni.',
        'Secure mode must be disabled in order to reinstall using the web-installer.' =>
            'Biztonságos üzemmódot le kell tíltani ahhoz, hogy a webes telepítővel újra lehessen dolgozni.',
        'If secure mode is not activated, activate it via SysConfig because your application is already running.' =>
            '',

        # Template: AdminSelectBox
        'SQL Box' => 'SQL parancsok',
        'Here you can enter SQL to send it directly to the application database.' =>
            '',
        'The syntax of your SQL query has a mistake. Please check it.' =>
            '',
        'There is at least one parameter missing for the binding. Please check it.' =>
            '',
        'Result format' => '',
        'Run Query' => '',

        # Template: AdminService
        'Service Management' => 'Szolgáltatások kezelése',
        'Add service' => '',
        'Add Service' => 'Szolgáltatás hozzáadása',
        'Edit Service' => '',
        'Sub-service of' => '',

        # Template: AdminSession
        'Session Management' => 'Folyamatkezelés',
        'All sessions' => '',
        'Agent sessions' => '',
        'Customer sessions' => '',
        'Unique agents' => '',
        'Unique customers' => '',
        'Kill all sessions' => 'Összes folyamat törlése',
        'Kill this session' => '',
        'Session' => 'Folyamat',
        'Kill' => '',
        'Detail View for SessionID' => '',

        # Template: AdminSignature
        'Signature Management' => 'Aláírások kezelése',
        'Add signature' => '',
        'Add Signature' => 'Aláírás hozzáadása',
        'Edit Signature' => '',
        'Example signature' => '',

        # Template: AdminState
        'State Management' => 'Állapotok kezelése',
        'Add state' => '',
        'Please also update the states in SysConfig where needed.' => '',
        'Add State' => 'Állapot hozzáadása',
        'Edit State' => '',
        'State type' => '',

        # Template: AdminSysConfig
        'SysConfig' => 'Rendszerbeállítások',
        'Navigate by searching in %s settings' => '',
        'Navigate by selecting config groups' => '',
        'Download all system config changes' => '',
        'Export settings' => '',
        'Load SysConfig settings from file' => '',
        'Import settings' => '',
        'Import Settings' => '',
        'Please enter a search term to look for settings.' => '',
        'Subgroup' => 'Alcsoport',
        'Elements' => 'Elemek száma',

        # Template: AdminSysConfigEdit
        'Edit Config Settings' => '',
        'This config item is only available in a higher config level!' =>
            '',
        'Reset this setting' => '',
        'Error: this file could not be found.' => '',
        'Error: this directory could not be found.' => '',
        'Error: an invalid value was entered.' => '',
        'Content' => 'Tartalom',
        'Remove this entry' => '',
        'Add entry' => '',
        'Remove entry' => '',
        'Add new entry' => '',
        'Create new entry' => '',
        'New group' => '',
        'Group ro' => '',
        'Readonly group' => '',
        'New group ro' => '',
        'Loader' => '',
        'File to load for this frontend module' => '',
        'New Loader File' => '',
        'NavBarName' => 'NavMenüNév',
        'NavBar' => 'NavMenü',
        'LinkOption' => '',
        'Block' => 'Blokk',
        'AccessKey' => 'HozzáférésiKulcs',
        'Add NavBar entry' => '',
        'Year' => 'Év',
        'Month' => 'Hónap',
        'Day' => 'Nap',
        'Invalid year' => '',
        'Invalid month' => '',
        'Invalid day' => '',

        # Template: AdminSystemAddress
        'System Email Addresses Management' => 'Rendszer e-mail címek kezelése',
        'Add system address' => '',
        'All incoming email with this address in To or Cc will be dispatched to the selected queue.' =>
            '',
        'Email address' => '',
        'Display name' => '',
        'Add System Email Address' => '',
        'Edit System Email Address' => '',
        'The display name and email address will be shown on mail you send.' =>
            '',

        # Template: AdminType
        'Type Management' => 'Típusok kezelése',
        'Add ticket type' => '',
        'Add Type' => 'Típus hozzáadása',
        'Edit Type' => '',

        # Template: AdminUser
        'Add agent' => '',
        'Agents will be needed to handle tickets.' => '',
        'Don\'t forget to add a new agent to groups and/or roles!' => '',
        'Please enter a search term to look for agents.' => '',
        'Last login' => '',
        'Login as' => 'Belép mint',
        'Switch to agent' => '',
        'Add Agent' => '',
        'Edit Agent' => '',
        'Firstname' => 'Keresztnév',
        'Lastname' => 'Vezetéknév',
        'Password is required.' => '',
        'Start' => 'Eleje',
        'End' => 'Vége',

        # Template: AdminUserGroup
        'Manage Agent-Group Relations' => '',
        'Change Group Relations for Agent' => '',
        'Change Agent Relations for Group' => '',
        'note' => '',
        'Permissions to add notes to tickets in this group/queue.' => '',
        'owner' => 'tulajdonos',
        'Permissions to change the owner of tickets in this group/queue.' =>
            '',

        # Template: AgentBook
        'Address Book' => 'Címjegyzék',
        'Search for a customer' => '',
        'Add email address %s to the To field' => '',
        'Add email address %s to the Cc field' => '',
        'Add email address %s to the Bcc field' => '',
        'Apply' => '',

        # Template: AgentCustomerSearch
        'Search Customer' => 'Ügyfél keresése',
        'Duplicated entry' => '',
        'This address already exists on the address list.' => '',

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => 'Vezérlőpult',

        # Template: AgentDashboardCalendarOverview
        'in' => 'ebben',

        # Template: AgentDashboardIFrame

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s elérhető!',
        'Please update now.' => 'Kérem most frissítsen.',
        'Release Note' => 'Kiadási megjegyzés',
        'Level' => 'Szint',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => 'Beküldve %s ezelőtt.',

        # Template: AgentDashboardTicketGeneric
        'My locked tickets' => '',
        'My watched tickets' => '',
        'My responsibilites' => '',
        'Tickets in My Queues' => '',

        # Template: AgentDashboardTicketStats

        # Template: AgentDashboardUserOnline

        # Template: AgentHTMLReferenceForms

        # Template: AgentHTMLReferenceOverview

        # Template: AgentHTMLReferencePageLayout
        'The ticket has been locked' => '',
        'Undo & close window' => '',

        # Template: AgentInfo
        'Info' => 'Info',
        'To accept some news, a license or some changes.' => '',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Kapcsolódó Objektum: %s',
        'Close window' => '',
        'go to link delete screen' => '',
        'Select Target Object' => '',
        'Link Object' => 'Objektumok összekapcsolása',
        'with' => 'Ezzel',
        'Unlink Object: %s' => 'Leválaszott Objektum: %s',
        'go to link add screen' => '',

        # Template: AgentNavigationBar

        # Template: AgentPreferences
        'Edit your preferences' => '',

        # Template: AgentSpelling
        'Spell Checker' => 'Helyesírásellenőrző',
        'spelling error(s)' => 'helyesírási hiba(k)',
        'Apply these changes' => 'Módosítások érvényesítése',

        # Template: AgentStatsDelete
        'Delete stat' => '',
        'Stat#' => 'Stat#',
        'Do you really want to delete this stat?' => '',

        # Template: AgentStatsEditRestrictions
        'Step %s' => '',
        'General Specifications' => '',
        'Select the element that will be used at the X-axis' => '',
        'Select the elements for the value series' => 'Válassza ki a tulajdonságokat a grafikonon megjelenő értékekhez',
        'Select the restrictions to characterize the stat' => '',
        'Here you can make restrictions to your stat.' => 'Itt megkötéseket adhat a statsztikához.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' =>
            'Ha eltávolítja a "Rögzített" jelölőnégyzetet, akkor a statisztikát előállítő ügyintéző megváltoztathatja az értékeit a megfelelő tulajdonságnak.',
        'Fixed' => 'Rögzített',
        'Please select only one element or turn off the button \'Fixed\'.' =>
            'Kérem válasszon egy értéket vagy kapcsolja ki a \'Rögzített\' kapcsolót.',
        'Absolute Period' => '',
        'Between' => 'Időszak:',
        'Relative Period' => 'Relatív időszak',
        'The last' => 'A legutóbbi',
        'Finish' => 'Befejezés',

        # Template: AgentStatsEditSpecification
        'Permissions' => 'Jogosultságok',
        'You can select one or more groups to define access for different agents.' =>
            '',
        'Some result formats are disabled because at least one needed package is not installed.' =>
            '',
        'Please contact your administrator.' => '',
        'Graph size' => '',
        'If you use a graph as output format you have to select at least one graph size.' =>
            'Amennyiben grafikont is kiválasztott, mint kimeneti formátum, úgy ki kell választania legalább egy grafikon méretet.',
        'Sum rows' => 'Sorok összegzése',
        'Sum columns' => 'Oszlopok összegzése',
        'Use cache' => '',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' =>
            'A statisztikák többsége használhat gyorsítótárat. Ez gyorsítja az elkészítését a statisztikának.',
        'If set to invalid end users can not generate the stat.' => '',

        # Template: AgentStatsEditValueSeries
        'Here you can define the value series.' => '',
        'You have the possibility to select one or two elements.' => '',
        'Then you can select the attributes of elements.' => '',
        'Each attribute will be shown as single value series.' => '',
        'If you don\'t select any attribute all attributes of the element will be used if you generate a stat, as well as new attributes which were added since the last configuration.' =>
            '',
        'Scale' => 'Skála',
        'minimal' => 'minimális',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' =>
            'Kérem ne felejtse, hogy adatsorok skálázásának nagyobbnak kell lennie az X tengely skálázásánál (pl. X-Tengely => Hónap, ÉrtékSorozat => Év )',

        # Template: AgentStatsEditXaxis
        'Here you can define the x-axis. You can select one element via the radio button.' =>
            '',
        'maximal period' => 'maximum periódus',
        'minimal scale' => 'minimális skála',

        # Template: AgentStatsImport
        'Import Stat' => '',
        'File is not a Stats config' => 'A fájl nem egy statisztika beállítás fájl',
        'No File selected' => 'Nincsen fájl kiválasztva',

        # Template: AgentStatsOverview
        'Stats' => 'Statisztika',

        # Template: AgentStatsPrint
        'Print' => 'Nyomtatás',
        'No Element selected.' => 'Nincsen érték kiválasztva.',

        # Template: AgentStatsView
        'Export config' => '',
        'With the input and select fields you can influence the format and contents of the statistic.' =>
            '',
        'Exactly what fields and formats you can influence is defined by the statistic administrator.' =>
            '',
        'Stat Details' => '',
        'Format' => 'Formátum',
        'Graphsize' => 'Grafikon mérete',
        'Cache' => 'Gyorsítótár',
        'Exchange Axis' => 'Tengelyek fölcserélése',
        'Configurable params of static stat' => 'Állandó statisztika konfigurálható paraméterei',
        'No element selected.' => 'Nincsenek ertékek kiválasztva.',
        'maximal period from' => 'maximális periódus ezóta',
        'to' => 'eddig',

        # Template: AgentTicketActionCommon
        'Change Free Text of Ticket' => '',
        'Change Owner of Ticket' => '',
        'Close Ticket' => '',
        'Add Note to Ticket' => '',
        'Set Pending' => 'Várakozás beállítás',
        'Change Priority of Ticket' => '',
        'Change Responsible of Ticket' => '',
        'Cancel & close window' => '',
        'Service invalid.' => '',
        'New Owner' => 'Új tulajdonos',
        'Please set a new owner!' => '',
        'Previous Owner' => 'Korábbi tulajdonos',
        'Inform Agent' => 'Ügyintéző értsítése',
        'Optional' => 'Nem kötelező',
        'Inform involved Agents' => 'Érintett ügyintézők értesítése',
        'Spell check' => '',
        'Note type' => 'Jegyzet típusa',
        'Next state' => 'Következő állapot',
        'Pending date' => 'Várakozási dátum',
        'Date invalid!' => '',

        # Template: AgentTicketActionPopupClose

        # Template: AgentTicketBounce
        'Bounce Ticket' => '',
        'Bounce to' => 'Visszaküldés ide:',
        'You need a email address.' => '',
        'Need a valid email address or don\'t use a local email address.' =>
            '',
        'Next ticket state' => 'A jegy következő állapota',
        'Inform sender' => 'Küldő tájékoztatása',
        'Send mail!' => 'E-mail küldése!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Csoportos jegy-művelet',
        'Send Email' => '',
        'Merge to' => 'Egyesíti',
        'Invalid ticket identifier!' => '',
        'Merge to oldest' => 'Legrégebbihez egyesíti',
        'Link together' => 'Összekapcsol',
        'Link to parent' => '',
        'Unlock tickets' => '',

        # Template: AgentTicketClose

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'Válaszadás a jegyre',
        'Remove Ticket Customer' => '',
        'Please remove this entry and enter a new one with the correct value.' =>
            '',
        'Please include at least one recipient' => '',
        'Remove Cc' => '',
        'Remove Bcc' => '',
        'Address book' => '',
        'Pending Date' => 'Várakozás dátuma',
        'for pending* states' => 'várakozó* státuszhoz',
        'Date Invalid!' => '',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'A jegyhez tartozó ügyfél megváltoztatása',
        'Customer Data' => 'Ügyfél adatok',
        'Customer user' => '',

        # Template: AgentTicketEmail
        'Create New Email Ticket' => '',
        'From queue' => '',
        'To customer' => '',
        'Please include at least one customer for the ticket.' => '',
        'Get all' => '',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Forward ticket: %s - %s' => '',
        'Need a valid email address or don\'t use a local email address' =>
            '',

        # Template: AgentTicketFreeText

        # Template: AgentTicketHistory
        'History of' => 'Előzmények:',
        'History Content' => '',
        'Zoom view' => '',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'Jegy egyesítése',
        'You need to use a ticket number!' => 'Adja meg egy jegy számát!',
        'A valid ticket number is required.' => '',
        'Need a valid email address.' => '',

        # Template: AgentTicketMove
        'Move Ticket' => 'Jegy áthelyezése',
        'New Queue' => 'Új várólista',

        # Template: AgentTicketNote

        # Template: AgentTicketOverviewMedium
        'Select all' => '',
        'No ticket data found.' => '',
        'First Response Time' => 'Első válaszidő',
        'Service Time' => 'Szolgáltatás ideje',
        'Update Time' => 'Frissítés ideje',
        'Solution Time' => 'Megoldás ideje',
        'Move ticket to a different queue' => '',
        'Change queue' => 'Várólista megváltoztatása',

        # Template: AgentTicketOverviewNavBar
        'Change search options' => 'Keresési beállítások módosítása',
        'Tickets per page' => '',

        # Template: AgentTicketOverviewPreview
        '","26' => '',

        # Template: AgentTicketOverviewSmall
        'Escalation in' => 'Eszkaláció ebben',
        'Locked' => 'Zárolás',
        '","30' => '',

        # Template: AgentTicketOwner

        # Template: AgentTicketPending

        # Template: AgentTicketPhone
        'Create New Phone Ticket' => '',
        'From customer' => '',
        'To queue' => '',

        # Template: AgentTicketPhoneCommon
        'Phone call' => 'Telefonhívás',

        # Template: AgentTicketPlain
        'Email Text Plain View' => '',
        'Plain' => 'Egyszerű',
        'Download this email' => '',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Jegy információ',
        'Accounted time' => 'Elszámolt idő',
        'Linked-Object' => 'Kapcsolódó objektum',
        'by' => 'általa:',

        # Template: AgentTicketPriority

        # Template: AgentTicketQueue

        # Template: AgentTicketResponsible

        # Template: AgentTicketSearch
        'Search template' => 'Kereső sablon',
        'Create Template' => '',
        'Create New' => '',
        'Profile link' => '',
        'Save changes in template' => '',
        'Add another attribute' => '',
        'Output' => 'Eredmény űrlap',
        'Fulltext' => 'Teljes szöveg',
        'Remove' => '',
        'Customer User Login' => 'Ügyfél felhasználó belépés',
        'Created in Queue' => 'Létrehozáskori várólista',
        'Lock state' => '',
        'Watcher' => 'Figyelő',
        'Article Create Time (before/after)' => '',
        'Article Create Time (between)' => '',
        'Ticket Create Time (before/after)' => '',
        'Ticket Create Time (between)' => '',
        'Ticket Change Time (before/after)' => '',
        'Ticket Change Time (between)' => '',
        'Ticket Close Time (before/after)' => '',
        'Ticket Close Time (between)' => '',
        'Archive Search' => '',
        'Run search' => '',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Article filter' => '',
        'Article Type' => 'Cikk tipusa',
        'Sender Type' => '',
        'Save filter settings as default' => 'Szűrő beállítások alapértelmezettkénti mentése',
        'Ticket Information' => '',
        'Linked Objects' => '',
        'Article(s)' => '',
        'Change Queue' => '',
        'Article Filter' => '',
        'Add Filter' => '',
        'Set' => 'Beállítás',
        'Reset Filter' => '',
        'Show one article' => '',
        'Show all articles' => '',
        'Unread articles' => '',
        'No.' => '',
        'Unread Article!' => '',
        'Incoming message' => '',
        'Outgoing message' => '',
        'Internal message' => '',
        'Resize' => '',

        # Template: AttachmentBlocker
        'To protect your privacy, active or/and remote content has blocked.' =>
            '',
        'Load blocked content.' => '',

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerError
        'Traceback' => 'Visszakövetés',

        # Template: CustomerFooter
        'Powered by' => 'Készítette',
        'One or more errors occurred!' => '',
        'Close this dialog' => '',
        'Could not open popup window. Please disable any popup blockers for this application.' =>
            '',

        # Template: CustomerHeader

        # Template: CustomerLogin
        'Login' => 'Belépés',
        'User name' => '',
        'Your user name' => '',
        'Your password' => '',
        'Forgot password?' => '',
        'Log In' => '',
        'Not yet registered?' => '',
        'Sign up now' => '',
        'Request new password' => 'Új jelszó kérése',
        'Your User Name' => '',
        'A new password will be sent to your email address.' => '',
        'Create Account' => 'Azonosító létrehozása',
        'Please fill out this form to receive login credentials.' => '',
        'How we should address you' => '',
        'Your First Name' => '',
        'Please supply a first name' => '',
        'Your Last Name' => '',
        'Please supply a last name' => '',
        'Your email address (this will become your username)' => '',
        'Please supply a' => '',

        # Template: CustomerNavigationBar
        'Edit personal preferences' => '',
        'Logout %s' => '',

        # Template: CustomerPreferences

        # Template: CustomerRichTextEditor

        # Template: CustomerTicketMessage
        'Service level agreement' => '',

        # Template: CustomerTicketOverview
        'Welcome!' => '',
        'Please click the button below to create your first ticket.' => '',
        'Create your first ticket' => '',

        # Template: CustomerTicketPrint
        'Ticket Print' => '',

        # Template: CustomerTicketSearch
        'Profile' => 'Profil',
        'e. g. 10*5155 or 105658*' => '',
        'Customer ID' => '',
        'Fulltext search in tickets (e. g. "John*n" or "Will*")' => '',
        'Recipient' => 'Címzett',
        'Carbon Copy' => '',
        'Time restrictions' => '',
        'No time settings' => '',
        'Only tickets created' => '',
        'Only tickets created between' => '',
        'Ticket archive system' => '',
        'Save search as template?' => '',
        'Save as Template?' => '',
        'Save as Template' => '',
        'Template Name' => '',
        'Pick a profile name' => '',
        'Output to' => '',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort
        'of' => 'kitől',
        'Page' => 'Oldal',
        'Search Results for' => '',
        '","18' => '',

        # Template: CustomerTicketZoom
        'Expand article' => '',
        'Reply' => '',

        # Template: CustomerWarning

        # Template: Datepicker
        'Invalid date (need a future date)!' => '',
        'Previous' => '',
        'Sunday' => '',
        'Monday' => '',
        'Tuesday' => '',
        'Wednesday' => '',
        'Thursday' => '',
        'Friday' => '',
        'Saturday' => '',
        'Su' => '',
        'Mo' => '',
        'Tu' => '',
        'We' => '',
        'Th' => '',
        'Fr' => '',
        'Sa' => '',
        'Open date selection' => '',

        # Template: Error
        'Oops! An Error occurred.' => '',
        'Error Message' => '',
        'You can' => '',
        'Send a bugreport' => '',
        'go back to the previous page' => '',
        'Error Details' => '',

        # Template: Footer
        'Top of page' => '',

        # Template: FooterJS
        'If you now leave this page, all open popup windows will be closed, too!' =>
            '',
        'A popup of this screen is already open. Do you want to close it and load this one instead?' =>
            '',
        'Please enter at least one search value or * to find anything.' =>
            '',

        # Template: FooterSmall

        # Template: HTMLHead

        # Template: HTMLHeadBlockEvents

        # Template: Header
        'You are logged in as' => '',

        # Template: HeaderSmall

        # Template: Installer
        'JavaScript not available' => '',
        'In order to experience OTRS, you\'ll need to enable JavaScript in your browser.' =>
            '',
        'Database Settings' => '',
        'General Specifications and Mail Settings' => '',
        'Registration' => '',
        'Welcome to %s' => 'Üdvözli az %s',
        'Web site' => '',
        'Database check successful.' => '',
        'Mail check successful.' => '',
        'Error in the mail settings. Please correct and try again.' => '',

        # Template: InstallerConfigureMail
        'Configure Outbound Mail' => '',
        'Outbound mail type' => '',
        'Select outbound mail type.' => '',
        'Outbound mail port' => '',
        'Select outbound mail port.' => '',
        'SMTP host' => '',
        'SMTP host.' => '',
        'SMTP authentication' => '',
        'Does your SMTP host need authentication?' => '',
        'SMTP auth user' => '',
        'Username for SMTP auth.' => '',
        'SMTP auth password' => '',
        'Password for SMTP auth.' => '',
        'Configure Inbound Mail' => '',
        'Inbound mail type' => '',
        'Select inbound mail type.' => '',
        'Inbound mail host' => '',
        'Inbound mail host.' => '',
        'Inbound mail user' => '',
        'User for inbound mail.' => '',
        'Inbound mail password' => '',
        'Password for inbound mail.' => '',
        'Result of mail configuration check' => '',
        'Check mail configuration' => '',
        'Skip this step' => '',
        'Skipping this step will automatically skip the registration of your OTRS. Are you sure you want to continue?' =>
            '',

        # Template: InstallerDBResult
        'False' => '',

        # Template: InstallerDBStart
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' =>
            'Ha be van állítva adatbázis root jelszó, akkor azt itt kell megadni. Ha nem hagyja üresen a mezőt. Biztonsági megfontolásokból javasoljuk hogy használjon root jelszót. További információt talál az adatbázis dokumentációban.',
        'Currently only MySQL is supported in the web installer.' => '',
        'If you want to install OTRS on another database type, please refer to the file README.database.' =>
            '',
        'Database-User' => 'Adatbázis felhasználó',
        'New' => 'Új',
        'A new database user with limited rights will be created for this OTRS system.' =>
            '',
        'default \'hot\'' => 'alapértelmezett',
        'DB--- host' => '',
        'Check database settings' => '',
        'Result of database check' => '',

        # Template: InstallerFinish
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' =>
            'Ahhoz, hogy az OTRS-t használni tudja, a következő parancsot kell begépelnie parancssorban (terminálban/héjjban) root-ként.',
        'Restart your webserver' => 'Indítsa újra a web-kiszolgálót',
        'After doing so your OTRS is up and running.' => 'Ha ez kész, az OTRS kész és fut.',
        'Start page' => 'Start oldal',
        'Your OTRS Team' => 'Az ön OTRS csapata',

        # Template: InstallerLicense
        'Accept license' => 'Lincensz elfogadása',
        'Don\'t accept license' => 'Licensz elutasítása',

        # Template: InstallerLicenseText

        # Template: InstallerRegistration
        'Organization' => 'Szervezet',
        'Position' => '',
        'Complete registration and continue' => '',
        'Please fill in all fields marked as mandatory.' => '',

        # Template: InstallerSystem
        'SystemID' => 'Rendszer azonosító',
        'The identifier of the system. Each ticket number and each HTTP session ID contain this number.' =>
            '',
        'System FQDN' => 'Rendszer FQDN',
        'Fully qualified domain name of your system.' => '',
        'AdminEmail' => 'AdminEmail',
        'Email address of the system administrator.' => '',
        'Log' => 'Napló',
        'LogModule' => 'Log modul',
        'Log backend to use.' => '',
        'LogFile' => '',
        'Log file location is only needed for File-LogModule!' => '',
        'Webfrontend' => 'Webes felhasználói felület',
        'Default language' => '',
        'Default language.' => '',
        'CheckMXRecord' => 'MX Rekord ellenőrzés',
        'Email addresses that are manually entered are checked against the MX records found in DNS. Don\'t use this option if your DNS is slow or does not resolve public addresses.' =>
            '',

        # Template: LinkObject
        'Object#' => '',
        'Add links' => '',
        'Delete links' => '',

        # Template: Login
        'JavaScript Not Available' => '',
        'Browser Warning' => '',
        'The browser you are using is too old.' => '',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.' =>
            '',
        'Please see the documentation or ask your admin for further information.' =>
            '',
        'Lost your password?' => 'Elfelejtette a jelszavát?',
        'Request New Password' => '',
        'Back to login' => '',

        # Template: Motd
        'Message of the Day' => '',

        # Template: NoPermission
        'Insufficient Rights' => '',
        'Back to the previous page' => '',

        # Template: Notify

        # Template: Pagination
        'Show first page' => '',
        'Show previous pages' => '',
        'Show page %s' => '',
        'Show next pages' => '',
        'Show last page' => '',

        # Template: PictureUpload
        'Need FormID!' => '',
        'No file found!' => '',
        'The file is not an image that can be shown inline!' => '',

        # Template: PrintFooter
        'URL' => 'URL',

        # Template: PrintHeader
        'printed by' => 'Nyomtatta',

        # Template: PublicDefault

        # Template: Redirect

        # Template: RichTextEditor

        # Template: SpellingInline

        # Template: Test
        'OTRS Test Page' => 'OTRS tesztoldal',
        'Welcome %s' => 'Üdvözöljük %s',
        'Counter' => 'Számláló',

        # Template: Warning
        'Go back to the previous page' => '',

        # SysConfig
        'ACL module that allows closing parent tickets only if all its children are already closed ("State" shows which states are not available for the parent ticket until all child tickets are closed).' =>
            '',
        'Activates a blinking mechanism of the queue that contains the oldest ticket.' =>
            '',
        'Activates lost password feature for agents, in the agent interface.' =>
            '',
        'Activates lost password feature for customers.' => '',
        'Activates support for customer groups.' => '',
        'Activates the article filter in the zoom view to specify which articles should be shown.' =>
            '',
        'Activates the available themes on the system. Value 1 means active, 0 means inactive.' =>
            '',
        'Activates the ticket archive system search in the customer interface.' =>
            '',
        'Activates the ticket archive system to have a faster system by moving some tickets out of the daily scope. To search for these tickets, the archive flag has to be enabled in the ticket search.' =>
            '',
        'Activates time accounting.' => '',
        'Add a note to this ticket' => '',
        'Adds a suffix with the actual year and month to the OTRS log file. A logfile for every month will be created.' =>
            '',
        'Adds customers email addresses to recipients in the ticket compose screen of the agent interface.' =>
            '',
        'Adds the one time vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the one time vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Agent Notifications' => '',
        'Agent interface article notification module to check PGP.' => '',
        'Agent interface article notification module to check S/MIME.' =>
            '',
        'Agent interface module to access fulltext search via nav bar.' =>
            '',
        'Agent interface module to access search profiles via nav bar.' =>
            '',
        'Agent interface module to check incoming emails in the Ticket-Zoom-View if the S/MIME-key is available and true.' =>
            '',
        'Agent interface notification module to check the used charset.' =>
            '',
        'Agent interface notification module to see the number of tickets an agent is responsible for.' =>
            '',
        'Agent interface notification module to see the number of watched tickets.' =>
            '',
        'Agents <-> Groups' => '',
        'Agents <-> Roles' => '',
        'Allows adding notes in the close ticket screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket free text screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket note screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket responsible screen of the agent interface.' =>
            '',
        'Allows agents to exchange the axis of a stat if they generate one.' =>
            '',
        'Allows agents to generate individual-related stats.' => '',
        'Allows choosing between showing the attachments of a ticket in the browser (inline) or just make them downloadable (attachment).' =>
            '',
        'Allows choosing the next compose state for customer tickets in the customer interface.' =>
            '',
        'Allows customers to change the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket SLA in the customer interface.' =>
            '',
        'Allows customers to set the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket queue in the customer interface. If this is set to \'No\', QueueDefault should be configured.' =>
            '',
        'Allows customers to set the ticket service in the customer interface.' =>
            '',
        'Allows defining new types for ticket (if ticket type feature is enabled).' =>
            '',
        'Allows defining services and SLAs for tickets (e. g. email, desktop, network, ...), and escalation attributes for SLAs (if ticket service/SLA feature is enabled).' =>
            '',
        'Allows extended search conditions in ticket search of the agent interface. With this feature you can search w. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows extended search conditions in ticket search of the customer interface. With this feature you can search w. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows having a medium format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows having a small format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows the administrators to login as other users, via the users administration panel.' =>
            '',
        'Allows to set a new ticket state in the move ticket screen of the agent interface.' =>
            '',
        'Attachments <-> Responses' => 'Levélmellékletek <-> Válaszok',
        'Auto Responses <-> Queues' => '',
        'Automated line break in text messages after x number of chars.' =>
            '',
        'Automatically lock and set owner to current Agent after selecting for an Bulk Action.' =>
            '',
        'Automatically sets the owner of a ticket as the responsible for it (if ticket responsible feature is enabled).' =>
            '',
        'Automatically sets the responsible of a ticket (if it is not set yet) after the first owner update.' =>
            '',
        'Balanced white skin by Felix Niklas.' => '',
        'Blocks all the incoming emails that do not have a valid ticket number in subject with From: @example.com address.' =>
            '',
        'Builds an article index right after the article\'s creation.' =>
            '',
        'CMD example setup. Ignores emails where external CMD returns some output on STDOUT (email will be piped into STDIN of some.bin).' =>
            '',
        'Cache time in seconds for agent authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for customer authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for the web service config backend.' => '',
        'Change password' => '',
        'Change queue!' => '',
        'Change the customer for this ticket' => '',
        'Change the free fields for this ticket' => '',
        'Change the owner for this ticket' => '',
        'Change the responsible person for this ticket' => '',
        'Change the ticket priority' => '',
        'Changes the owner of tickets to everyone (useful for ASP). Normally only agent with rw permissions in the queue of the ticket will be shown.' =>
            '',
        'Checkbox' => '',
        'Checks the SystemID in ticket number detection for follow-ups (use "No" if SystemID has been changed after using the system).' =>
            '',
        'Close this ticket' => '',
        'Closed tickets of customer' => '',
        'Comment for new history entries in the customer interface.' => '',
        'Companies' => '',
        'Company Tickets' => '',
        'Company name for the customer web interface. Will also be included in emails as an X-Header.' =>
            '',
        'Configure your own log text for PGP.' => '',
        'Configures a default TicketDynmicField setting. "Name" defines the dynamic field which should be used, "Value" is the data that will be set, and "Event" defines the trigger event. Please check the developer manual (http://doc.otrs.org/), chapter "Ticket Event Module".' =>
            '',
        'Configures the full-text index. Execute "bin/otrs.RebuildFulltextIndex.pl" in order to generate a new index.' =>
            '',
        'Controls if customers have the ability to sort their tickets.' =>
            '',
        'Converts HTML mails into text messages.' => '',
        'Create and manage Service Level Agreements (SLAs).' => '',
        'Create and manage agents.' => '',
        'Create and manage attachments.' => '',
        'Create and manage companies.' => '',
        'Create and manage customers.' => '',
        'Create and manage dynamic fields.' => '',
        'Create and manage event based notifications.' => '',
        'Create and manage groups.' => '',
        'Create and manage notifications that are sent to agents.' => '',
        'Create and manage queues.' => '',
        'Create and manage response templates.' => '',
        'Create and manage responses that are automatically sent.' => '',
        'Create and manage roles.' => '',
        'Create and manage salutations.' => '',
        'Create and manage services.' => '',
        'Create and manage signatures.' => '',
        'Create and manage ticket priorities.' => '',
        'Create and manage ticket states.' => '',
        'Create and manage ticket types.' => '',
        'Create and manage web services.' => '',
        'Create new email ticket and send this out (outbound)' => '',
        'Create new phone ticket (inbound)' => '',
        'Custom text for the page shown to customers that have no tickets yet.' =>
            '',
        'Customer item (icon) which shows the closed tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer item (icon) which shows the open tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customers <-> Groups' => '',
        'Customers <-> Services' => '',
        'DEPRECATED! This setting is not used any more and will be removed in a future version of OTRS.' =>
            '',
        'Data used to export the search result in CSV format.' => '',
        'Date / Time' => '',
        'Debugs the translation set. If this is set to "Yes" all strings (text) without translations are written to STDERR. This can be helpful when you are creating a new translation file. Otherwise, this option should remain set to "No".' =>
            '',
        'Default ACL values for ticket actions.' => '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimePointFormat=year;TicketCreateTimePointStart=Last;TicketCreateTimePoint=2;".' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimeStartYear=2010;TicketCreateTimeStartMonth=10;TicketCreateTimeStartDay=4;TicketCreateTimeStopYear=2010;TicketCreateTimeStopMonth=11;TicketCreateTimeStopDay=3;".' =>
            '',
        'Default loop protection module.' => '',
        'Default queue ID used by the system in the agent interface.' => '',
        'Default skin for OTRS 3.0 interface.' => '',
        'Default skin for interface.' => '',
        'Default ticket ID used by the system in the agent interface.' =>
            '',
        'Default ticket ID used by the system in the customer interface.' =>
            '',
        'Define a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Define the start day of the week for the date picker.' => '',
        'Defines a customer item, which generates a LinkedIn icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a XING icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google maps icon at the end of a customer info block.' =>
            '',
        'Defines a default list of words, that are ignored by the spell checker.' =>
            '',
        'Defines a filter for html output to add links behind CVE numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind MSBulletin numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind bugtraq numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter to process the text in the articles, in order to highlight predefined keywords.' =>
            '',
        'Defines a regular expression that excludes some addresses from the syntax check (if "CheckEmailAddresses" is set to "Yes"). Please enter a regex in this field for email addresses, that aren\'t syntactically valid, but are necessary for the system (i.e. "root@localhost").' =>
            '',
        'Defines a regular expression that filters all email addresses that should not be used in the application.' =>
            '',
        'Defines a useful module to load specific user options or to display news.' =>
            '',
        'Defines all the X-headers that should be scanned.' => '',
        'Defines all the languages that are available to the application. The Key/Content pair links the front-end display name to the appropriate language PM file. The "Key" value should be the base-name of the PM file (i.e. de.pm is the file, then de is the "Key" value). The "Content" value should be the display name for the front-end. Specify any own-defined language here (see the developer documentation http://doc.otrs.org/ for more infomation). Please remember to use the HTML equivalents for non-ASCII characters (i.e. for the German oe = o umlaut, it is necessary to use the &ouml; symbol).' =>
            '',
        'Defines all the parameters for the RefreshTime object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for the ShownTickets object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for this item in the customer preferences.' =>
            '',
        'Defines all the possible stats output formats.' => '',
        'Defines an alternate URL, where the login link refers to.' => '',
        'Defines an alternate URL, where the logout link refers to.' => '',
        'Defines an alternate login URL for the customer panel..' => '',
        'Defines an alternate logout URL for the customer panel.' => '',
        'Defines an external link to the database of the customer (e.g. \'http://yourhost/customer.php?CID=$Data{"CustomerID"}\' or \'\').' =>
            '',
        'Defines how the From field from the emails (sent from answers and email tickets) should look like.' =>
            '',
        'Defines if a ticket lock is required in the close ticket screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket bounce screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket compose screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket forward screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket free text screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket merge screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket note screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket owner screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket pending screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone inbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket priority screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket responsible screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required to change the customer of a ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if composed messages have to be spell checked in the agent interface.' =>
            '',
        'Defines if time accounting is mandatory in the agent interface.' =>
            '',
        'Defines if time accounting must be set to all tickets in bulk action.' =>
            '',
        'Defines scheduler PID update time in seconds (floating point number).' =>
            '',
        'Defines scheduler sleep time in seconds after processing all available tasks (floating point number).' =>
            '',
        'Defines the =hHeight for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the IP regular expression for accessing the local repository. You need to enable this to have access to your local repository and the package::RepositoryList is required on the remote host.' =>
            '',
        'Defines the URL CSS path.' => '',
        'Defines the URL base path of icons, CSS and Java Script.' => '',
        'Defines the URL image path of icons for navigation.' => '',
        'Defines the URL java script path.' => '',
        'Defines the URL rich text editor path.' => '',
        'Defines the address of a dedicated DNS server, if necessary, for the "CheckMXRecord" look-ups.' =>
            '',
        'Defines the body text for notification mails sent to agents, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to agents, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, about new account.' =>
            '',
        'Defines the body text for notification mails sent to customers, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for rejected emails.' => '',
        'Defines the boldness of the line drawed by the graph.' => '',
        'Defines the colors for the graphs.' => '',
        'Defines the column to store the keys for the preferences table.' =>
            '',
        'Defines the config parameters of this item, to be shown in the preferences view.' =>
            '',
        'Defines the config parameters of this item, to be shown in the preferences view. Take care to maintain the dictionaries installed in the system in the data section.' =>
            '',
        'Defines the connections for http/ftp, via a proxy.' => '',
        'Defines the date input format used in forms (option or input fields).' =>
            '',
        'Defines the default CSS used in rich text editors.' => '',
        'Defines the default auto response type of the article for this operation.' =>
            '',
        'Defines the default body of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default front-end (HTML) theme to be used by the agents and customers. The default themes are Standard and Lite. If you like, you can add your own theme. Please refer the administrator manual located at http://doc.otrs.org/.' =>
            '',
        'Defines the default front-end language. All the possible values are determined by the available language files on the system (see the next setting).' =>
            '',
        'Defines the default history type in the customer interface.' => '',
        'Defines the default maximum number of X-axis attributes for the time scale.' =>
            '',
        'Defines the default maximum number of search results shown on the overview page.' =>
            '',
        'Defines the default next state for a ticket after customer follow up in the customer interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being forwarded, in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket if it is composed / answered in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default priority of follow up customer tickets in the ticket zoom screen in the customer interface.' =>
            '',
        'Defines the default priority of new customer tickets in the customer interface.' =>
            '',
        'Defines the default priority of new tickets.' => '',
        'Defines the default queue for new customer tickets in the customer interface.' =>
            '',
        'Defines the default selection at the drop down menu for dynamic objects (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for permissions (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for stats format (Form: Common Specification). Please insert the format key (see Stats::Format).' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for tickets in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default sender type of the article for this operation.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen. Example: a text, 1, DynamicField_Field1StartYear=2002;DynamicField_Field1StartMonth=12;DynamicField_Field1StartDay=12;DynamicField_Field1StartHour=00;DynamicField_Field1StartMinute=00;DynamicField_Field1StartSecond=00;DynamicField_Field1StopYear=2009;DynamicField_Field1StopMonth=02;DynamicField_Field1StopDay=10;DynamicField_Field1StopHour=23;DynamicField_Field1StopMinute=59;DynamicField_Field1StopSecond=59;.' =>
            '',
        'Defines the default sort criteria for all queues displayed in the queue view, after sort by priority is done.' =>
            '',
        'Defines the default sort order for all queues in the queue view, after priority sort.' =>
            '',
        'Defines the default spell checker dictionary.' => '',
        'Defines the default state of new customer tickets in the customer interface.' =>
            '',
        'Defines the default state of new tickets.' => '',
        'Defines the default subject for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default subject for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default subject of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in a ticket search of the customer interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the escalation view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the locked ticket view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the responsible view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the status view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the watch view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of the agent interface.' =>
            '',
        'Defines the default ticket bounced notification for customer/sender in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default ticket order (after priority sort) in the escalation view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order (after priority sort) in the status view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the responsible view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket locked view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket search result of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the watch view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order of a search result in the customer interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket priority in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default type for article in the customer interface.' =>
            '',
        'Defines the default type of forwarded message in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default type of the article for this operation.' => '',
        'Defines the default type of the note in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the agent interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the customer interface.' =>
            '',
        'Defines the default value for the action parameter for the public frontend. The action parameter is used in the scripts of the system.' =>
            '',
        'Defines the default viewable sender types of a ticket (default: customer).' =>
            '',
        'Defines the filter that processes the text in the articles, in order to highlight URLs.' =>
            '',
        'Defines the format of responses in the ticket compose screen of the agent interface ($QData{"OrigFrom"} is From 1:1, $QData{"OrigFromName"} is only realname of From).' =>
            '',
        'Defines the fully qualified domain name of the system. This setting is used as a variable, OTRS_CONFIG_FQDN which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the groups every customer user will be in (if CustomerGroupSupport is enabled and you don\'t want to manage every user for these groups).' =>
            '',
        'Defines the height of the legend.' => '',
        'Defines the history comment for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history comment for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the history comment for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history type for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the history type for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the hours and week days of the indicated calendar, to count the working time.' =>
            '',
        'Defines the hours and week days to count the working time.' => '',
        'Defines the key to be checked with Kernel::Modules::AgentInfo module. If this user preferences key is true, the message is accepted by the system.' =>
            '',
        'Defines the key to check with CustomerAccept. If this user preferences key is true, then the message is accepted by the system.' =>
            '',
        'Defines the link type \'Normal\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type \'ParentChild\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type groups. The link types of the same group cancel one another. Example: If ticket A is linked per a \'Normal\' link with ticket B, then these tickets could not be additionally linked with link of a \'ParentChild\' relationship.' =>
            '',
        'Defines the list of online repositories. Another installations can be used as repository, for example: Key="http://example.com/otrs/public.pl?Action=PublicRepository;File=" and Content="Some Name".' =>
            '',
        'Defines the location to get online repository list for additional packages. The first available result will be used.' =>
            '',
        'Defines the log module for the system. "File" writes all messages in a given logfile, "SysLog" uses the syslog daemon of the system, e.g. syslogd.' =>
            '',
        'Defines the maximal size (in bytes) for file uploads via the browser.' =>
            '',
        'Defines the maximal valid time (in seconds) for a session id.' =>
            '',
        'Defines the maximum number of pages per PDF file.' => '',
        'Defines the maximum size (in MB) of the log file.' => '',
        'Defines the module that shows a generic notification in the agent interface. Either "Text" - if configured - or the contents of "File" will be displayed.' =>
            '',
        'Defines the module that shows all the currently loged in customers in the agent interface.' =>
            '',
        'Defines the module that shows all the currently logged in agents in the agent interface.' =>
            '',
        'Defines the module that shows the currently loged in agents in the customer interface.' =>
            '',
        'Defines the module that shows the currently loged in customers in the customer interface.' =>
            '',
        'Defines the module to authenticate customers.' => '',
        'Defines the module to display a notification in the agent interface, (only for agents on the admin group) if the scheduler is not running.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having out-of-office active.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the system is used by the admin user (normally you shouldn\'t work as admin).' =>
            '',
        'Defines the module to generate html refresh headers of html sites, in the customer interface.' =>
            '',
        'Defines the module to generate html refresh headers of html sites.' =>
            '',
        'Defines the module to send emails. "Sendmail" directly uses the sendmail binary of your operating system. Any of the "SMTP" mechanisms use a specified (external) mailserver. "DoNotSendEmail" doesn\'t send emails and it is useful for test systems.' =>
            '',
        'Defines the module used to store the session data. With "DB" the frontend server can be splitted from the db server. "FS" is faster.' =>
            '',
        'Defines the name of the application, shown in the web interface, tabs and title bar of the web browser.' =>
            '',
        'Defines the name of the column to store the data in the preferences table.' =>
            '',
        'Defines the name of the column to store the user identifier in the preferences table.' =>
            '',
        'Defines the name of the indicated calendar.' => '',
        'Defines the name of the key for customer sessions.' => '',
        'Defines the name of the session key. E.g. Session, SessionID or OTRS.' =>
            '',
        'Defines the name of the table, where the customer preferences are stored.' =>
            '',
        'Defines the next possible states after composing / answering a ticket in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the next possible states after forwarding a ticket in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the next possible states for customer tickets in the customer interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being moved to another queue, in the move ticket screen of the agent interface.' =>
            '',
        'Defines the parameters for the customer preferences table.' => '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the password to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the path and TTF-File to handle bold italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle proportional font in PDF documents.' =>
            '',
        'Defines the path for scheduler to store its console output (SchedulerOUT.log and SchedulerERR.log).' =>
            '',
        'Defines the path of the shown info file, that is located under Kernel/Output/HTML/Standard/CustomerAccept.dtl.' =>
            '',
        'Defines the path to PGP binary.' => '',
        'Defines the path to open ssl binary. It may need a HOME env ($ENV{HOME} = \'/var/lib/wwwrun\';).' =>
            '',
        'Defines the placement of the legend. This should be a two letter key of the form: \'B[LCR]|R[TCB]\'. The first letter indicates the placement (Bottom or Right), and the second letter the alignment (Left, Right, Center, Top, or Bottom).' =>
            '',
        'Defines the postmaster default queue.' => '',
        'Defines the receipent target of the phone ticket and the sender of the email ticket ("Queue" shows all queues, "SystemAddress" displays all system addresses) in the agent interface.' =>
            '',
        'Defines the receipent target of the tickets ("Queue" shows all queues, "SystemAddress" displays all system addresses) in the customer interface.' =>
            '',
        'Defines the search limit for the stats.' => '',
        'Defines the sender for rejected emails.' => '',
        'Defines the separator between the agents real name and the given queue email address.' =>
            '',
        'Defines the spacing of the legends.' => '',
        'Defines the standard permissions available for customers within the application. If more permissions are needed, you can enter them here. Permissions must be hard coded to be effective. Please ensure, when adding any of the afore mentioned permissions, that the "rw" permission remains the last entry.' =>
            '',
        'Defines the standard size of PDF pages.' => '',
        'Defines the state of a ticket if it gets a follow-up and the ticket was already closed.' =>
            '',
        'Defines the state of a ticket if it gets a follow-up.' => '',
        'Defines the state type of the reminder for pending tickets.' => '',
        'Defines the subject for notification mails sent to agents, about new password.' =>
            '',
        'Defines the subject for notification mails sent to agents, with token about new requested password.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new account.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new password.' =>
            '',
        'Defines the subject for notification mails sent to customers, with token about new requested password.' =>
            '',
        'Defines the subject for rejected emails.' => '',
        'Defines the system administrator\'s email address. It will be displayed in the error screens of the application.' =>
            '',
        'Defines the system identifier. Every ticket number and http session string contain this ID. This ensures that only tickets which belong to your system will be processed as follow-ups (useful when communicating between two instances of OTRS).' =>
            '',
        'Defines the target attribute in the link to external customer database. E.g. \'target="cdb"\'.' =>
            '',
        'Defines the time in days to keep log backup files.' => '',
        'Defines the time in seconds after which the Scheduler performs an automatic self-restart.' =>
            '',
        'Defines the time zone of the indicated calendar, which can be assigned later to a specific queue.' =>
            '',
        'Defines the type of protocol, used by ther web server, to serve the application. If https protocol will be used instead of plain http, it must be specified it here. Since this has no affect on the web server\'s settings or behavior, it will not change the method of access to the application and, if it is wrong, it will not prevent you from logging into the application. This setting is used as a variable, OTRS_CONFIG_HttpType which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the used character for email quotes in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the user identifier for the customer panel.' => '',
        'Defines the username to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the valid state types for a ticket.' => '',
        'Defines the valid states for unlocked tickets. To unlock tickets the script "bin/otrs.UnlockTickets.pl" can be used.' =>
            '',
        'Defines the viewable locks of a ticket. Default: unlock, tmp_lock.' =>
            '',
        'Defines the width for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the width of the legend.' => '',
        'Defines which article sender types should be shown in the preview of a ticket.' =>
            '',
        'Defines which states should be set automatically (Content), after the pending time of state (Key) has been reached.' =>
            '',
        'Defines wich article type should be expanded when entering the overview. If nothing defined, latest article will be expanded.' =>
            '',
        'Delay time between autocomplete queries in milliseconds.' => '',
        'Delete this ticket' => '',
        'Deletes a session if the session id is used with an invalid remote IP address.' =>
            '',
        'Deletes requested sessions if they have timed out.' => '',
        'Determines if the list of possible queues to move to ticket into should be displayed in a dropdown list or in a new window in the agent interface. If "New Window" is set you can add a move note to the ticket.' =>
            '',
        'Determines if the search results container for the autocomplete feature should adjust its width dynamically.' =>
            '',
        'Determines if the statistics module may generate ticket lists.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new email ticket in the agent interface.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new phone ticket in the agent interface.' =>
            '',
        'Determines the next screen after new customer ticket in the customer interface.' =>
            '',
        'Determines the next screen after the follow up screen of a zoomed ticket in the customer interface.' =>
            '',
        'Determines the next screen after the ticket is moved. LastScreenOverview will return to search results, queueview, dashboard or the like, LastScreenView will return to TicketZoom.' =>
            '',
        'Determines the possible states for pending tickets that changed state after reaching time limit.' =>
            '',
        'Determines the strings that will be shown as receipent (To:) of the phone ticket and as sender (From:) of the email ticket in the agent interface. For Queue as NewQueueSelectionType "<Queue>" shows the names of the queues and for SystemAddress "<Realname> <<Email>>" shows the name and email of the receipent.' =>
            '',
        'Determines the strings that will be shown as receipent (To:) of the ticket in the customer interface. For Queue as CustomerPanelSelectionType, "<Queue>" shows the names of the queues, and for SystemAddress, "<Realname> <<Email>>" shows the name and email of the receipent.' =>
            '',
        'Determines the way the linked objects are displayed in each zoom mask.' =>
            '',
        'Determines which options will be valid of the recepient (phone ticket) and the sender (email ticket) in the agent interface.' =>
            '',
        'Determines which queues will be valid for ticket\'s recepients in the customer interface.' =>
            '',
        'Disables sending reminder notifications to the responsible agent of a ticket (Ticket::Responsible needs to be activated).' =>
            '',
        'Disables the web installer (http://yourhost.example.com/otrs/installer.pl), to prevent the system from being hijacked. If set to "No", the system can be reinstalled and the current basic configuration will be used to pre-populate the questions within the installer script. If not active, it also disables the GenericAgent, PackageManager and SQL Box (to avoid the use of destructive queries, such as DROP DATABASE, and also to steal user passwords).' =>
            '',
        'Displays the accounted time for an article in the ticket zoom view.' =>
            '',
        'Dropdown' => '',
        'Dynamic Fields Checkbox Backend GUI' => '',
        'Dynamic Fields Date Time Backend GUI' => '',
        'Dynamic Fields Drop-down Backend GUI' => '',
        'Dynamic Fields GUI' => '',
        'Dynamic Fields Multiselect Backend GUI' => '',
        'Dynamic Fields Overview Limit' => '',
        'Dynamic Fields Text Backend GUI' => '',
        'Dynamic Fields used to export the search result in CSV format.' =>
            '',
        'Dynamic fields limit per page for Dynamic Fields Overview' => '',
        'Dynamic fields options shown in the ticket message screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required. NOTE. If you want to display these fields also in the ticket zoom of the customer interface, you have to enable them in CustomerTicketZoom###AttributesView.' =>
            '',
        'Dynamic fields shown in the ticket close screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket compose screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket email screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket forward screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket free text screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket medium format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket move screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket note screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket owner screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket pending screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone inbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket preview format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket priority screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket responsible screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket search overview results screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket small format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'DynamicField backend registration.' => '',
        'DynamicField object registration.' => '',
        'Email Addresses' => 'E-mail címek',
        'Enables PDF output. The CPAN module PDF::API2 is required, if not installed, PDF output will be disabled.' =>
            '',
        'Enables PGP support. When PGP support is enabled for signing and securing mail, it is HIGHLY recommended that the web server be run as the OTRS user. Otherwise, there will be problems with the privileges when accessing .gnupg folder.' =>
            '',
        'Enables S/MIME support.' => '',
        'Enables customers to create their own accounts.' => '',
        'Enables file upload in the package manager frontend.' => '',
        'Enables or disable the debug mode over frontend interface.' => '',
        'Enables or disables the autocomplete feature for the customer search in the agent interface.' =>
            '',
        'Enables or disables the ticket watcher feature, to keep track of tickets without being the owner nor the responsible.' =>
            '',
        'Enables performance log (to log the page response time). It will affect the system performance. Frontend::Module###AdminPerformanceLog must be enabled.' =>
            '',
        'Enables spell checker support.' => '',
        'Enables ticket bulk action feature for the agent frontend to work on more than one ticket at a time.' =>
            '',
        'Enables ticket bulk action feature only for the listed groups.' =>
            '',
        'Enables ticket responsible feature, to keep track of a specific ticket.' =>
            '',
        'Enables ticket watcher feature only for the listed groups.' => '',
        'Escalation view' => '',
        'Event list to be displayed on GUI to trigger generic interface invokers.' =>
            '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate). This is only possible if all Ticket dynamic fields need the same event.' =>
            '',
        'Example for dynamic dield' => '',
        'Example for dynamic field' => '',
        'Example for free text' => '',
        'Execute SQL statements.' => '',
        'Executes follow up checks on In-Reply-To or References headers for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up mail attachments checks in  mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up mail body checks in mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up plain/raw mail checks in mails that don\'t have a ticket number in the subject.' =>
            '',
        'Experimental "Slim" skin which tries to save screen space for power users.' =>
            '',
        'Exports the whole article tree in search result (it can affect the system performance).' =>
            '',
        'Fetches packages via proxy. Overwrites "WebUserAgent::Proxy".' =>
            '',
        'File that is displayed in the Kernel::Modules::AgentInfo module, if located under Kernel/Output/HTML/Standard/AgentInfo.dtl.' =>
            '',
        'Filter incoming emails.' => '',
        'Forces encoding of outgoing emails (7bit|8bit|quoted-printable|base64).' =>
            '',
        'Forces to choose a different ticket state (from current) after lock action. Define the current state as key, and the next state after lock action as content.' =>
            '',
        'Forces to unlock tickets after being moved to another queue.' =>
            '',
        'Frontend language' => '',
        'Frontend module registration (disable company link if no company feature is used).' =>
            '',
        'Frontend module registration for the agent interface.' => '',
        'Frontend module registration for the customer interface.' => '',
        'Frontend theme' => '',
        'GenericAgent' => 'Automata ügyintéző',
        'GenericInterface Debugger GUI' => '',
        'GenericInterface Invoker GUI' => '',
        'GenericInterface Operation GUI' => '',
        'GenericInterface TransportHTTPSOAP GUI' => '',
        'GenericInterface Web Service GUI' => '',
        'GenericInterface Webservice History GUI' => '',
        'GenericInterface Webservice Mapping GUI' => '',
        'GenericInterface module registration for the invoker layer.' => '',
        'GenericInterface module registration for the mapping layer.' => '',
        'GenericInterface module registration for the operation layer.' =>
            '',
        'GenericInterface module registration for the transport layer.' =>
            '',
        'Gives end users the possibility to override the separator character for CSV files, defined in the translation files.' =>
            '',
        'Grants access, if the customer ID of the ticket matches the customer user\'s ID and the customer user has group permissions on the queue the ticket is in.' =>
            '',
        'Helps to extend your articles full-text search (From, To, Cc, Subject and Body search). Runtime will do full-text searches on live data (it works fine for up to 50.000 tickets). StaticDB will strip all articles and will build an index after article creation, increasing fulltext searches about 50%. To create an initial index use "bin/otrs.RebuildFulltextIndex.pl".' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a database driver (normally autodetection is used) can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a password to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a username to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the DSN for the connection to the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the column name for the CustomerPassword in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the crypt type of passwords must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the column for the CustomerKey in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the table where your customer data should be stored must be specified.' =>
            '',
        'If "DB" was selected for SessionModule, a column for the identifiers in session table must be specified.' =>
            '',
        'If "DB" was selected for SessionModule, a column for the values in session table must be specified.' =>
            '',
        'If "DB" was selected for SessionModule, a table in database where session data will be stored must be specified.' =>
            '',
        'If "FS" was selected for SessionModule, a directory where the session data will be stored must be specified.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify (by using a RegExp) to strip parts of REMOTE_USER (e. g. for to remove trailing domains). RegExp-Note, $1 will be the new Login.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify to strip leading parts of user names (e. g. for domains like example_domain\user to user).' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and if you want to add a suffix to every customer login name, specifiy it here, e. g. you just want to write the username user but in your LDAP directory exists user@domain.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and special paramaters are needed for the Net::LDAP perl module, you can specify them here. See "perldoc Net::LDAP" for more information about the parameters.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the password for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the username for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the BaseDN must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the LDAP host can be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the user identifier must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, user attributes can be specified. For LDAP posixGroups use UID, for non LDAP posixGroups use full user DN.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify access attributes here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "LDAP" was selected for Customer::Authmodule, you can check if the user is allowed to authenticate because he is in a posixGroup, e.g. user needs to be in a group xyz to use OTRS. Specify the group, who may access the system.' =>
            '',
        'If "LDAP" was selected, you can add a filter to each LDAP query, e.g. (mail=*), (objectclass=user) or (!objectclass=computer).' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the password to authenticate to the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "Sendmail" was selected as SendmailModule, the location of the sendmail binary and the needed options must be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, a special log facility can be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, a special log sock can be specified (on solaris you may need to use \'stream\').' =>
            '',
        'If "SysLog" was selected for LogModule, the charset that should be used for logging can be specified.' =>
            '',
        'If "file" was selected for LogModule, a logfile must be specified. If the file doesn\'t exist, it will be created by the system.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the close ticket screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket free text screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket note screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, a password must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, an username must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the mailhost that sends out the mails must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the port where your mailserver is listening for incoming connections must be specified.' =>
            '',
        'If enabled, OTRS will deliver all CSS files in minified form. WARNING: If you turn this off, there will likely be problems in IE 7, because it cannot load more than 32 CSS files.' =>
            '',
        'If enabled, OTRS will deliver all JavaScript files in minified form.' =>
            '',
        'If enabled, TicketPhone and TicketEmail will be open in new windows.' =>
            '',
        'If enabled, the OTRS version tag will be removed from the HTTP headers.' =>
            '',
        'If enabled, the different overviews (Dashboard, LockedView, QueueView) will automatically refresh after the specified time.' =>
            '',
        'If enabled, the first level of the main menu opens on mouse hover (instead of click only).' =>
            '',
        'If set, this address is used as envelope from header in outgoing notifications. If no address is specified, the envelope from header is empty.' =>
            '',
        'If this regex matches, no message will be send by the autoresponder.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, specify the DSN to this database.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, the password to authenticate to this database can be specified.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, the user to authenticate to this database can be specified.' =>
            '',
        'Ignore article with system sender type for new article feature (e. g. auto responses or email notifications).' =>
            '',
        'Includes article create times in the ticket search of the agent interface.' =>
            '',
        'IndexAccelerator: to choose your backend TicketViewAccelerator module. "RuntimeDB" generates each queue view on the fly from ticket table (no performance problems up to approx. 60.000 tickets in total and 6.000 open tickets in the system). "StaticDB" is the most powerful module, it uses an extra ticket-index table that works like a view (recommended if more than 80.000 and 6.000 open tickets are stored in the system). Use the script "bin/otrs.RebuildTicketIndex.pl" for initial index update.' =>
            '',
        'Install ispell or aspell on the system, if you want to use a spell checker. Please specify the path to the aspell or ispell binary on your operating system.' =>
            '',
        'Interface language' => '',
        'It is possible to configure different skins, for example to distinguish between diferent agents, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different skins, for example to distinguish between diferent customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different themes, for example to distinguish between agents and customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid theme on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'Link agents to groups.' => '',
        'Link agents to roles.' => '',
        'Link attachments to responses templates.' => '',
        'Link customers to groups.' => '',
        'Link customers to services.' => '',
        'Link queues to auto responses.' => '',
        'Link responses to queues.' => '',
        'Link roles to groups.' => '',
        'Link this ticket to other objects' => '',
        'Links 2 tickets with a "Normal" type link.' => '',
        'Links 2 tickets with a "ParentChild" type link.' => '',
        'List of CSS files to always be loaded for the agent interface.' =>
            '',
        'List of CSS files to always be loaded for the customer interface.' =>
            '',
        'List of IE6-specific CSS files to always be loaded for the customer interface.' =>
            '',
        'List of IE7-specific CSS files to always be loaded for the agent interface.' =>
            '',
        'List of IE7-specific CSS files to always be loaded for the customer interface.' =>
            '',
        'List of IE8-specific CSS files to always be loaded for the agent interface.' =>
            '',
        'List of IE8-specific CSS files to always be loaded for the customer interface.' =>
            '',
        'List of JS files to always be loaded for the agent interface.' =>
            '',
        'List of JS files to always be loaded for the customer interface.' =>
            '',
        'List of default StandardResponses which are assigned automatically to new Queues upon creation.' =>
            '',
        'Log file for the ticket counter.' => '',
        'Mail Accounts' => '',
        'Makes the application check the MX record of email addresses before sending an email or submitting a telephone or email ticket.' =>
            '',
        'Makes the application check the syntax of email addresses.' => '',
        'Makes the picture transparent.' => '',
        'Makes the session management use html cookies. If html cookies are disabled or if the client browser disabled html cookies, then the system will work as usual and append the session id to the links.' =>
            '',
        'Manage PGP keys for email encryption.' => '',
        'Manage POP3 or IMAP accounts to fetch email from.' => '',
        'Manage S/MIME certificates for email encryption.' => '',
        'Manage existing sessions.' => '',
        'Manage periodic tasks.' => '',
        'Max size (in characters) of the customer information table (phone and email) in the compose screen.' =>
            '',
        'Max size of the subjects in an email reply.' => '',
        'Maximal auto email responses to own email-address a day (Loop-Protection).' =>
            '',
        'Maximal size in KBytes for mails that can be fetched via POP3/POP3S/IMAP/IMAPS (KBytes).' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the agent interface.' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the customer interface.' =>
            '',
        'Maximum size (in characters) of the customer info table in the queue view.' =>
            '',
        'Maximum size (in characters) of the customer information table in the ticket zoom view.' =>
            '',
        'Merge into a different ticket' => '',
        'Module for To-selection in new ticket screen in the customer interface.' =>
            '',
        'Module to check customer permissions.' => '',
        'Module to check if a user is in a special group. Access is granted, if the user is in the specified group and has ro and rw permissions.' =>
            '',
        'Module to check if arrived emails should be marked as email-internal (because of original forwared internal email it college). ArticleType and SenderType define the values for the arrived email/article.' =>
            '',
        'Module to check the agent responsible of a ticket.' => '',
        'Module to check the group permissions for the access to customer tickets.' =>
            '',
        'Module to check the owner of a ticket.' => '',
        'Module to check the watcher agents of a ticket.' => '',
        'Module to compose signed messages (PGP or S/MIME).' => '',
        'Module to crypt composed messages (PGP or S/MIME).' => '',
        'Module to filter and manipulate incoming messages. Block/ignore all spam email with From: noreply@ address.' =>
            '',
        'Module to filter and manipulate incoming messages. Get a 4 digit number to ticket free text, use regex in Match e. g. From => \'(.+?)@.+?\', and use () as [***] in Set =>.' =>
            '',
        'Module to generate accounted time ticket statistics.' => '',
        'Module to generate html OpenSearch profile for short ticket search in the agent interface.' =>
            '',
        'Module to generate html OpenSearch profile for short ticket search in the customer interface.' =>
            '',
        'Module to generate ticket solution and response time statistics.' =>
            '',
        'Module to generate ticket statistics.' => '',
        'Module to show notifications and escalations (ShownMax: max. shown escalations, EscalationInMinutes: Show ticket which will escalation in, CacheTime: Cache of calculated escalations in seconds).' =>
            '',
        'Module to use database filter storage.' => '',
        'Multiselect' => '',
        'My Tickets' => '',
        'Name of custom queue. The custom queue is a queue selection of your preferred queues and can be selected in the preferences settings.' =>
            '',
        'New email ticket' => '',
        'New phone ticket' => '',
        'Next possible ticket states after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Next possible ticket states after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Notifications (Event)' => 'Értesítés (Event)',
        'Number of displayed tickets' => '',
        'Number of lines (per ticket) that are shown by the search utility in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the customer interface.' =>
            '',
        'Open tickets of customer' => '',
        'Overloads (redefines) existing functions in Kernel::System::Ticket. Used to easily add customizations.' =>
            '',
        'Overview Escalated Tickets' => '',
        'Overview Refresh Time' => '',
        'Overview of all open Tickets.' => '',
        'PGP Key Management' => '',
        'PGP Key Upload' => '',
        'Parameters for the CreateNextMask object in the preference view of the agent interface.' =>
            '',
        'Parameters for the CustomQueue object in the preference view of the agent interface.' =>
            '',
        'Parameters for the FollowUpNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the LockTimeoutNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the MoveNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the NewTicketNotify object in the preferences view of the agent interface.' =>
            '',
        'Parameters for the RefreshTime object in the preference view of the agent interface.' =>
            '',
        'Parameters for the WatcherNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the dashboard backend of the new tickets overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket calendar of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket escalation overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket stats of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the pages (in which the dynamic fields are shown) of the dynamic fields overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the medium ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the small ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the ticket preview overview.' =>
            '',
        'Parameters of the example SLA attribute Comment2.' => '',
        'Parameters of the example queue attribute Comment2.' => '',
        'Parameters of the example service attribute Comment2.' => '',
        'Path for the log file (it only applies if "FS" was selected for LoopProtectionModule and it is mandatory).' =>
            '',
        'Path of the file that stores all the settings for the QueueObject object for the agent interface.' =>
            '',
        'Path of the file that stores all the settings for the QueueObject object for the customer interface.' =>
            '',
        'Path of the file that stores all the settings for the TicketObject for the agent interface.' =>
            '',
        'Path of the file that stores all the settings for the TicketObject for the customer interface.' =>
            '',
        'Performs the configured action for each event (as an Invoker) for each configured Webservice.' =>
            '',
        'Permitted width for compose email windows.' => '',
        'Permitted width for compose note windows.' => '',
        'Picture-Upload' => '',
        'PostMaster Filters' => '',
        'PostMaster Mail Accounts' => '',
        'Print this ticket' => '',
        'Protection against CSRF (Cross Site Request Forgery) exploits (for more info see http://en.wikipedia.org/wiki/Cross-site_request_forgery).' =>
            '',
        'Queue view' => '',
        'Refresh Overviews after' => '',
        'Refresh interval' => '',
        'Replaces the original sender with current customer\'s email address on compose answer in the ticket compose screen of the agent interface.' =>
            '',
        'Required permissions to change the customer of a ticket in the agent interface.' =>
            '',
        'Required permissions to use the close ticket screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket bounce screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket compose screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket forward screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket free text screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket merge screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket note screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone inbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone outbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket responsible screen in the agent interface.' =>
            '',
        'Resets and unlocks the owner of a ticket if it was moved to another queue.' =>
            '',
        'Responses <-> Queues' => 'Válaszok <-> Várólista',
        'Restores a ticket from the archive (only if the event is a state change, from closed to any open available state).' =>
            '',
        'Roles <-> Groups' => 'Szerepek <-> Csoportok',
        'Runs an initial wildcard search of the existing customer users when accessing the AdminCustomerUser module.' =>
            '',
        'Runs the system in "Demo" mode. If set to "Yes", agents can change preferences, such as selection of language and theme via the agent web interface. These changes are only valid for the current session. It will not be possible for agents to change their passwords.' =>
            '',
        'S/MIME Certificate Upload' => '',
        'Saves the attachments of articles. "DB" stores all data in the database (not recommended for storing big attachments). "FS" stores the data on the filesystem; this is faster but the webserver should run under the OTRS user. You can switch between the modules even on a system that is already in production without any loss of data.' =>
            '',
        'Saves the login and password on the session table in the database, if "DB" was selected for SessionModule.' =>
            '',
        'Search backend default router.' => '',
        'Search backend router.' => '',
        'Select your frontend Theme.' => 'Válassza ki a felhasználói felület stílusát.',
        'Selects the module to handle uploads via the web interface. "DB" stores all uploads in the database, "FS" uses the file system.' =>
            '',
        'Selects the ticket number generator module. "AutoIncrement" increments the ticket number, the SystemID and the counter are used with SystemID.counter format (e.g. 1010138, 1010139). With "Date" the ticket numbers will be generated by the current date, the SystemID and the counter. The format looks like Year.Month.Day.SystemID.counter (e.g. 200206231010138, 200206231010139). With "DateChecksum"  the counter will be appended as checksum to the string of date and SystemID. The checksum will be rotated on a daily basis. The format looks like Year.Month.Day.SystemID.Counter.CheckSum (e.g. 2002070110101520, 2002070110101535). "Random" generates randomized ticket numbers in the format "SystemID.Random" (e.g. 100057866352, 103745394596).' =>
            '',
        'Send me a notification if a customer sends a follow up and I\'m the owner of the ticket or the ticket is unlocked and is in one of my subscribed queues.' =>
            '',
        'Send notifications to users.' => '',
        'Send ticket follow up notifications' => '',
        'Sender type for new tickets from the customer inteface.' => '',
        'Sends agent follow-up notification only to the owner, if a ticket is unlocked (the default is to send the notification to all agents).' =>
            '',
        'Sends all outgoing email via bcc to the specified address. Please use this only for backup reasons.' =>
            '',
        'Sends customer notifications just to the mapped customer. Normally, if no customer is mapped, the latest customer sender gets the notification.' =>
            '',
        'Sends reminder notifications of unlocked ticket after reaching the reminder date (only sent to ticket owner).' =>
            '',
        'Sends the notifications which are configured in the admin interface under "Notfication (Event)".' =>
            '',
        'Set sender email addresses for this system.' => '',
        'Set the default height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set the maximum height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set this ticket to pending' => '',
        'Set this to yes if you trust in all your public and private pgp keys, even if they are not certified with a trusted signature.' =>
            '',
        'Sets if ticket owner must be selected by the agent.' => '',
        'Sets the PendingTime of a ticket to 0 if the state is changed to a non-pending state.' =>
            '',
        'Sets the age in minutes (first level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the age in minutes (second level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the configuration level of the administrator. Depending on the config level, some sysconfig options will be not shown. The config levels are in in ascending order: Expert, Advanced, Beginner. The higher the config level is (e.g. Beginner is the highest), the less likely is it that the user can accidentally configure the system in a way that it is not usable any more.' =>
            '',
        'Sets the default article type for new email tickets in the agent interface.' =>
            '',
        'Sets the default article type for new phone tickets in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default link type of splitted tickets in the agent interface.' =>
            '',
        'Sets the default next state for new phone tickets in the agent interface.' =>
            '',
        'Sets the default next ticket state, after the creation of an email ticket in the agent interface.' =>
            '',
        'Sets the default note text for new telephone tickets. E.g \'New ticket via call\' in the agent interface.' =>
            '',
        'Sets the default priority for new email tickets in the agent interface.' =>
            '',
        'Sets the default priority for new phone tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new email tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new phone ticket in the agent interface.' =>
            '',
        'Sets the default subject for new email tickets (e.g. \'email Outbound\') in the agent interface.' =>
            '',
        'Sets the default subject for new phone tickets (e.g. \'Phone call\') in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default text for new email tickets in the agent interface.' =>
            '',
        'Sets the display order of the different items in the preferences view.' =>
            '',
        'Sets the inactivity time (in seconds) to pass before a session is killed and a user is loged out.' =>
            '',
        'Sets the minimal ticket counter size (if "AutoIncrement" was selected as TicketNumberGenerator). Default is 5, this means the counter starts from 10000.' =>
            '',
        'Sets the minimum number of characters before autocomplete query is sent.' =>
            '',
        'Sets the number of lines that are displayed in text messages (e.g. ticket lines in the QueueZoom).' =>
            '',
        'Sets the number of search results to be displayed for the autocomplete feature.' =>
            '',
        'Sets the options for PGP binary.' => '',
        'Sets the order of the different items in the customer preferences view.' =>
            '',
        'Sets the password for private PGP key.' => '',
        'Sets the prefered time units (e.g. work units, hours, minutes).' =>
            '',
        'Sets the prefix to the scripts folder on the server, as configured on the web server. This setting is used as a variable, OTRS_CONFIG_ScriptAlias which is found in all forms of messaging used by the application, to build links to the tickets within the system.' =>
            '',
        'Sets the responsible agent of the ticket in the close ticket screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket note screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the service in the close ticket screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket free text screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket note screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket responsible screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the size of the statistic graph.' => '',
        'Sets the stats hook.' => '',
        'Sets the system time zone (required a system with UTC as system time). Otherwise this is a diff time to the local time.' =>
            '',
        'Sets the ticket owner in the close ticket screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket note screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the ticket type in the close ticket screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket type in the ticket free text screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket note screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket responsible screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the time type which should be shown.' => '',
        'Sets the timeout (in seconds) for http/ftp downloads.' => '',
        'Sets the timeout (in seconds) for package downloads. Overwrites "WebUserAgent::Timeout".' =>
            '',
        'Sets the user time zone per user (required a system with UTC as system time and UTC under TimeZone). Otherwise this is a diff time to the local time.' =>
            '',
        'Sets the user time zone per user based on java script / browser time zone offset feature at login time.' =>
            '',
        'Show a responsible selection in phone and email tickets in the agent interface.' =>
            '',
        'Show article as rich text even if rich text writing is disabled.' =>
            '',
        'Shows a count of icons in the ticket zoom, if the article has attachments.' =>
            '',
        'Shows a link in the menu for subscribing / unsubscribing from a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu that allows linking a ticket with another object in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu that allows merging tickets in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to access the history of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a free text field in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a note in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a note to a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to delete a ticket in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to delete a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to go back in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to lock / unlock a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link in the menu to lock/unlock tickets in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to move a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to print a ticket or an article in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the customer who requested the ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the history of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to see the owner of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the priority of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the responsible agent of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to set a ticket as pending in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to set a ticket as spam in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to set the priority of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to zoom a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link to access article attachments via a html online viewer in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to download article attachments in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to see a zoomed email ticket in plain text.' => '',
        'Shows a link to set a ticket as spam in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a preview of the ticket overview (CustomerInfo => 1 - shows also Customer-Info, CustomerInfoMaxSize max. size in characters of Customer-Info).' =>
            '',
        'Shows all both ro and rw queues in the queue view.' => '',
        'Shows all open tickets (even if they are locked) in the escalation view of the agent interface.' =>
            '',
        'Shows all open tickets (even if they are locked) in the status view of the agent interface.' =>
            '',
        'Shows all the articles of the ticket (expanded) in the zoom view.' =>
            '',
        'Shows all the customer identifiers in a multi-select field (not useful if you have a lot of customer identifiers).' =>
            '',
        'Shows an owner selection in phone and email tickets in the agent interface.' =>
            '',
        'Shows colors for different article types in the article table.' =>
            '',
        'Shows customer history tickets in AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer.' =>
            '',
        'Shows either the last customer article\'s subject or the ticket title in the small format overview.' =>
            '',
        'Shows existing parent/child queue lists in the system in the form of a tree or a list.' =>
            '',
        'Shows the activated ticket attributes in the customer interface (0 = Disabled and 1 = Enabled).' =>
            '',
        'Shows the articles sorted normally or in reverse, under ticket zoom in the agent interface.' =>
            '',
        'Shows the customer user information (phone and email) in the compose screen.' =>
            '',
        'Shows the customer user\'s info in the ticket zoom view.' => '',
        'Shows the message of the day (MOTD) in the agent dashboard. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually.' =>
            '',
        'Shows the message of the day on login screen of the agent interface.' =>
            '',
        'Shows the ticket history' => '',
        'Shows the ticket history (reverse ordered) in the agent interface.' =>
            '',
        'Shows the ticket priority options in the close ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the move ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket bulk screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket note screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows the title fields in the close ticket screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket note screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows time in long format (days, hours, minutes), if set to "Yes"; or in short format (days, hours), if set to "No".' =>
            '',
        'Shows time use complete description (days, hours, minutes), if set to "Yes"; or just first letter (d, h, m), if set to "No".' =>
            '',
        'Skin' => '',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the queue view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the QueueID for the key and 0 or 1 for value.' =>
            '',
        'Spam Assassin example setup. Ignores emails that are marked with SpamAssassin.' =>
            '',
        'Spam Assassin example setup. Moves marked mails to spam queue.' =>
            '',
        'Specifies if an agent should receive email notification of his own actions.' =>
            '',
        'Specifies the background color of the chart.' => '',
        'Specifies the background color of the picture.' => '',
        'Specifies the border color of the chart.' => '',
        'Specifies the border color of the legend.' => '',
        'Specifies the bottom margin of the chart.' => '',
        'Specifies the different article types that will be used in the system.' =>
            '',
        'Specifies the different note types that will be used in the system.' =>
            '',
        'Specifies the directory to store the data in, if "FS" was selected for TicketStorageModule.' =>
            '',
        'Specifies the directory where SSL certificates are stored.' => '',
        'Specifies the directory where private SSL certificates are stored.' =>
            '',
        'Specifies the email address that should be used by the application when sending notifications. The email address is used to build the complete display name for the notification master (i.e. "OTRS Notification Master" otrs@your.example.com). You can use the OTRS_CONFIG_FQDN variable as set in your configuation, or choose another email address. Notifications are messages such as en::Customer::QueueUpdate or en::Agent::Move.' =>
            '',
        'Specifies the left margin of the chart.' => '',
        'Specifies the name that should be used by the application when sending notifications. The sender name is used to build the complete display name for the notification master (i.e. "OTRS Notification Master" otrs@your.example.com). Notifications are messages such as en::Customer::QueueUpdate or en::Agent::Move.' =>
            '',
        'Specifies the path of the file for the logo in the page header (gif|jpg|png, 700 x 100 pixel).' =>
            '',
        'Specifies the path of the file for the performance log.' => '',
        'Specifies the path to the converter that allows the view of Microsoft Excel files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of Microsoft Word files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of PDF documents, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of XML files, in the web interface.' =>
            '',
        'Specifies the right margin of the chart.' => '',
        'Specifies the text color of the chart (e. g. caption).' => '',
        'Specifies the text color of the legend.' => '',
        'Specifies the text that should appear in the log file to denote a CGI script entry.' =>
            '',
        'Specifies the top margin of the chart.' => '',
        'Specifies user id of the postmaster data base.' => '',
        'Standard available permissions for agents within the application. If more permissions are needed, they can be entered here. Permissions must be defined to be effective. Some other good permissions have also been provided built-in: note, close, pending, customer, freetext, move, compose, responsible, forward, and bounce. Make sure that "rw" is always the last registered permission.' =>
            '',
        'Start number for statistics counting. Every new stat increments this number.' =>
            '',
        'Starts a wildcard search of the active object after the link object mask is started.' =>
            '',
        'Statistics' => '',
        'Status view' => '',
        'Stores cookies after the browser has been closed.' => '',
        'Strips empty lines on the ticket preview in the queue view.' => '',
        'Textarea' => '',
        'The "bin/PostMasterMailAccount.pl" will reconnect to POP3/POP3S/IMAP/IMAPS host after the specified count of messages.' =>
            '',
        'The agent skin\'s InternalName which should be used in the agent interface. Please check the available skins in Frontend::Agent::Skins.' =>
            '',
        'The customer skin\'s InternalName which should be used in the customer interface. Please check the available skins in Frontend::Customer::Skins.' =>
            '',
        'The divider between TicketHook and ticket number. E.g \': \'.' =>
            '',
        'The duration in minutes after emitting an event, in which the new escalation notify and start events are suppressed.' =>
            '',
        'The format of the subject. \'Left\' means \'[TicketHook#:12345] Some Subject\', \'Right\' means \'Some Subject [TicketHook#:12345]\', \'None\' means \'Some Subject\' and no ticket number. In the last case you should enable PostmasterFollowupSearchInRaw or PostmasterFollowUpSearchInReferences to recognize followups based on email headers and/or body.' =>
            '',
        'The headline shown in the customer interface.' => '',
        'The identifier for a ticket, e.g. Ticket#, Call#, MyTicket#. The default is Ticket#.' =>
            '',
        'The logo shown in the header of the agent interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown in the header of the customer interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown on top of the login box of the agent interface. The URL to the image must be relative URL to the skin image directory.' =>
            '',
        'The text at the beginning of the subject in an email reply, e.g. RE, AW, or AS.' =>
            '',
        'The text at the beginning of the subject when an email is forwarded, e.g. FW, Fwd, or WG.' =>
            '',
        'This module and its PreRun() function will be executed, if defined, for every request. This module is useful to check some user options or to display news about new applications.' =>
            '',
        'This setting allows you to override the built-in country list with your own list of countries. This is particularly handy if you just want to use a small select group of countries.' =>
            '',
        'Ticket event module that triggers the escalation stop events.' =>
            '',
        'Ticket overview' => '',
        'Tickets' => 'Jegyek',
        'Time in seconds that gets added to the actual time if setting a pending-state (default: 86400 = 1 day).' =>
            '',
        'Toolbar Item for a shortcut.' => '',
        'Turns on the animations used in the GUI. If you have problems with these animations (e.g. performance issues), you can turn them off here.' =>
            '',
        'Turns on the remote ip address check. It should be set to "No" if the application is used, for example, via a proxy farm or a dialup connection, because the remote ip address is mostly different for the requests.' =>
            '',
        'Types' => '',
        'Update Ticket "Seen" flag if every article got seen or a new Article got created.' =>
            '',
        'Update and extend your system with software packages.' => '',
        'Updates the ticket escalation index after a ticket attribute got updated.' =>
            '',
        'Updates the ticket index accelerator.' => '',
        'Uses Cc recipients in reply Cc list on compose an email answer in the ticket compose screen of the agent interface.' =>
            '',
        'Uses richtext for viewing and editing: articles, salutations, signatures, standard responses, auto responses and notifications.' =>
            '',
        'View performance benchmark results.' => '',
        'View system log messages.' => '',
        'Wear this frontend skin' => '',
        'Webservice path separator.' => '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. In this text area you can define this text (This text cannot be changed by the agent).' =>
            '',
        'When tickets are merged, the customer can be informed per email by setting the check box "Inform Sender". In this text area, you can define a pre-formatted text which can later be modified by the agents.' =>
            '',
        'Your language' => '',
        'Your queue selection of your favorite queues. You also get notified about those queues via email if enabled.' =>
            'Saját várólistáknak tekintett várólisták kiválasztása. E-mail értesítítések fog kapni ezekről a várólistákról, amennyiben ez engedélyezett.',

        #
        # OBSOLETE ENTRIES FOR REFERENCE, DO NOT TRANSLATE!
        #
        '"}' => '"}',
        '%s Tickets affected! Do you really want to use this job?' => '%s jegy érintett! Valóban el akarja végezni ezt a teendőt a jegyeken?',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' =>
            '(Ellenőrizd le az MX rekordot a használt email címben a válasz írásakor!)',
        '(Email of the system admin)' => '(A rendszergazda e-mailje)',
        '(Full qualified domain name of your system)' => '(Teljes ellenőrzött domain név a rendszerben)',
        '(Logfile just needed for File-LogModule!)' => '(Logfile szükséges a File-LogModul számára!)',
        '(Note: It depends on your installation how many dynamic objects you can use)' =>
            '(Megjegyzés: A telepítéstől függ mennyi dinamikus objektumot használhat.)',
        '(Note: Useful for big databases and low performance server)' => '(Megyjegyzés: Ez hasznos nagy méretű adatbázisoknál és ki teljesítményű kiszolgáló használata esetén.)',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' =>
            '(Azonosítás a rendszerben. Minden jegyhez és minden http eljárás ezzel a sorszámmal indul)',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' =>
            '(Jegy azonosítás. pl. \'Jegy#\', \'Hívó#\' vagy \'Jegyem#\')',
        '(Used default language)' => '(A felhasználó alapértelmezett nyelve)',
        '(Used log backend)' => '(Használt háttér log)',
        '(Used ticket number format)' => '(Nyitott jegyek sorszámának formátuma)',
        'A article should have a title!' => 'Egy bejegyzésnek kell legyen címe!',
        'A message must be spell checked!' => 'Az üzenetnek helyesírásellenőrzésen kell átmennie!',
        'A message should have a To: recipient!' => 'Egy üzenethez kellene legyen címzett!',
        'A message should have a body!' => 'Egy üzenetnek kell legyen törzse!',
        'A message should have a subject!' => 'Egy üzenetnek kell legyen tárgya!',
        'A required field is:' => 'Szükséges mező:',
        'Absolut Period' => 'Abszolút időszak',
        'Add Customer User' => 'Ügyfél felhasználó hozzáadása',
        'Add System Address' => 'Rendszer cím hozzáadása',
        'Add User' => 'Felhasználó hozzáadása',
        'Add a new Agent.' => 'Új felhasználó hozzáadása',
        'Add a new Customer Company.' => 'Új ügyfél cég hozzadása',
        'Add a new Group.' => 'Új csoport hozzáadása',
        'Add a new Notification.' => 'Új értesítés hozzáadása.',
        'Add a new Priority.' => 'Új prioritás hozzáadása',
        'Add a new Role.' => 'Új szerep hozzáadása',
        'Add a new SLA.' => 'Új SLA hozzáadása',
        'Add a new Salutation.' => 'Új megszólítás hozzáadása',
        'Add a new Service.' => 'Új szolgáltatás hozzáadása',
        'Add a new Signature.' => 'Új aláírás hozzáadása',
        'Add a new State.' => 'Új állapot hozzáadása',
        'Add a new System Address.' => 'Új rendszer cím hozzáadása',
        'Add a new Type.' => 'Új típus hozzáadása',
        'Add note to ticket' => 'Megjegyzés hozzáadása a jegyhez',
        'Added User "%s"' => 'A "%s" felhasználó hozzáadva',
        'Admin-Area' => 'Adminisztrációs-terület',
        'Admin-Password' => 'Adminisztrátor jelszó',
        'Admin-User' => 'Adminisztrátor felhasználó',
        'Agent Mailbox' => 'Ügyintéző postafiókja',
        'Agent Preferences' => 'Ügyintéző beállításai',
        'Agent based' => 'Ügyök alapú',
        'Agent-Area' => 'Ügyintéző-terület',
        'All Agent variables.' => 'Ügyintéző összes változója',
        'All Agents' => 'Minden ügyintéző',
        'All Customer variables like defined in config option CustomerUser.' =>
            'Az összes ügyfél változó ahogyan az Ügyfél felhasználó opcióknál lett beállítva.',
        'All customer tickets.' => 'Összes ügyfél jegy.',
        'All email addresses get excluded on replaying on composing an email.' =>
            'Összes E-mail cím ki lesz hagyva ismételt levélírás esetén.',
        'All email addresses get excluded on replaying on composing and email.' =>
            'Összes E-mail cím ki lesz hagyva ismételt levélírás esetén.',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' =>
            'Az összes bejövő e-mail ezzel az címzettel a kiválasztott várólistához lesz rendelve!',
        'All messages' => 'Minden üzenet',
        'All new tickets!' => 'Összes új jegy!',
        'All tickets where the reminder date has reached!' => 'Összes jegy ahol az emlékeztető ideje lejárt!',
        'All tickets which are escalated!' => 'Összes eszkalált jegy!',
        'Allocate CustomerUser to service' => 'ÜgyfélFelhasználók hozzárendelése szolgáltatásokhoz',
        'Allocate services to CustomerUser' => 'Szolgáltatások hozzárendelése ÜgyfélFelhasználóhoz!',
        'Answer' => 'Válasz',
        'Article Create Times' => 'Cikk létrehozásának ideje',
        'Article created' => 'Cikk létrehozva',
        'Article created between' => 'Cikk létrehozva eközött',
        'Article filter settings' => 'Cikk szűrő beállításai',
        'Attach' => 'Csatolás',
        'Attribute' => 'Tulajdonság',
        'Auto Response From' => 'Automatikus válasz feladónak',
        'Bounce ticket' => 'Jegy visszaküldése',
        'Can not create link with %s!' => 'Nem tudom a %s kapcsolatát létrehozni!',
        'Can not delete link with %s!' => 'Nem tudom törölni %s kapcsolódását!',
        'Can\'t update password, invalid characters!' => 'Nem sikerült modosítani a jelszót, érvénytelen karakterek!',
        'Can\'t update password, must be at least %s characters!' => 'Nem sikerült modosítani a jelszót, legalább %s karakter megadása szükséges!',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' =>
            'Nem sikerült modosítani a jelszót, legalább 2 kisbetűnek és 2 nagybetűnek kell benne szerepelnie!',
        'Can\'t update password, needs at least 1 digit!' => 'Nem sikerült modosítani a jelszót, legalább egy számjegynek kell benne szerepelnie!',
        'Can\'t update password, needs at least 2 characters!' => 'Nem sikerült modosítani a jelszót, legalább 2 karakter megadása szükséges!',
        'Can\'t update password, your new passwords do not match! Please try again!' =>
            'Nem sikerült modosítani a jelszót, a jelszavak nem egyeznek! Kérem próbálja újra!',
        'Category Tree' => 'Kategória Fa',
        'Change %s settings' => '%s beállításainak módosítása',
        'Change Time' => 'Idő megváltoztatása',
        'Change Times' => 'Változás ideje',
        'Change free text of ticket' => 'Szabad szöveg változtatása a jegyben',
        'Change owner of ticket' => 'Jegy tulajdonosának módosítása',
        'Change priority of ticket' => 'Jegy prioritásának módosítása',
        'Change responsible of ticket' => 'Jegy felelősének megváltoztatása',
        'Change user <-> group settings' => 'A felhasználó <-> csoport beállítások megváltoztatása',
        'ChangeLog' => 'Változtatások',
        'Child-Object' => 'Gyerek objektum',
        'Classification' => 'Besorolás',
        'Clear From' => 'Mező törlése',
        'Clear To' => 'Mező törlése',
        'Click here to report a bug!' => 'Kattintson ide új hiba bejelentéséhez!',
        'Close Times' => 'Lezárás ideje',
        'Close ticket' => 'Jegy lezárása',
        'Close type' => 'Típus lezárása',
        'Close!' => 'Lezár!',
        'Collapse View' => 'Szűkített Nézet',
        'Comment (internal)' => 'Megjegyzés (belső)',
        'CompanyTickets' => 'Cég jegyek',
        'Compose Answer' => 'Válasz írása',
        'Compose Email' => 'Új e-mail írása',
        'Compose Follow up' => 'Válasz írása',
        'Config Options' => 'Beállítási lehetőségek',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Konfigurációs értékek (pl. &lt;OTRS_CONFIG_HttpType&gt;)',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Beállítás opciók (pl. <OTRS_CONFIG_HttpType>)',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Konfigurációs értékek (pl.  <OTRS_CONFIG_HttpType>).',
        'Contact customer' => 'Kapcsolatbalépés az ügyféllel',
        'Create Times' => 'Létrehozási idők',
        'Create new Phone Ticket' => 'Új telefon jegy létrehozása',
        'Create new database' => 'Új adatbázis létrehozása',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' =>
            'Hozzon létre új csoportot a különböző ügyintéző csoportok (pl. beszerző osztály, támogató osztály, eladó osztály, ...) hozzáférési jogainak kezeléséhez.',
        'CreateTicket' => 'JegyLétrehozás',
        'Current Impact Rating' => 'Jelenlegi befolyás besorolása',
        'Customer Move Notify' => 'Ügyfél értesítése mozgatáskor',
        'Customer Owner Notify' => 'Ügyfél értesítése tulajdonosváltáskor',
        'Customer State Notify' => 'Ügyfél értesítése állapotváltozáskor',
        'Customer User' => 'Ügyfél felhasználó',
        'Customer User Management' => 'Ügyfél felhasználók kezelése',
        'Customer Users' => 'Ügyfél felhasználók',
        'Customer Users <-> Groups' => 'Ügyfél felhasználók <-> Csoportok',
        'Customer Users <-> Groups Management' => 'Ügyfél felhasználók <-> Csoportok kezelése',
        'Customer Users <-> Services' => 'Ügyfél felhasználók <-> Szolgáltatások',
        'Customer Users <-> Services Management' => 'Ügyfél felhasználók <-> Szolgáltatások kezelése',
        'Customer history' => 'Ügyfél történet',
        'Customer history search' => 'Keresés az ügyfél történetében',
        'Customer history search (e. g. "ID342425").' => 'Keresés az ügyfél történetében (pl. "ID342425").',
        'Customer user will be needed to have a customer history and to login via customer panel.' =>
            'Ügyfél felhasználó létrehozása szükséges, hogy legyenek ügyfélhez tartozó előzmények és be lehessen lépni az ügyfél oldalon.',
        'CustomerUser' => 'Ügyfél felhasználó',
        'D' => 'Z',
        'DB Admin Password' => 'DB Admin jelszó',
        'DB Admin User' => 'DB Admin felhasználó',
        'DB connect host' => 'Adatbázis kiszolgáló',
        'Default' => 'Alapértelmezett',
        'Default Charset' => 'Alapértelmezett karakterkészlet',
        'Default Language' => 'Alapértelmezett nyelv',
        'Default Sign Key' => 'Alapértelmezett aláíró kulcs',
        'Delete old database' => 'Régi adatbázis törlése',
        'Detail' => 'Részletek',
        'Diff' => 'Különbség',
        'Discard all changes and return to the compose screen' => 'Minden változtatás megsemmisítése és visszatérés a szerkesztőképernyőre',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' =>
            'A beérkező e-mailek az X-Fejlécek alapján legyen hozzárendelve! Szabályos kifejezések alkalmazhatók.',
        'Do you really want to delete this Object?' => 'Valóban törölni szertné ezt az objektumot?',
        'Do you really want to reinstall this package (all manual changes get lost)?' =>
            'Valóban újra kívánja telepíteni ezt a csomagot (minden megváltoztatott beállítás elvész)?',
        'Don\'t forget to add a new user to groups and/or roles!' => 'Ne felejtse el az új felhasználót hozzáadni csoportokhoz és/vagy szerepekhez!',
        'Don\'t forget to add a new user to groups!' => 'Ne felejtsen el új felhasználót hozzáadni a csoportokhoz!',
        'Don\'t work with UserID 1 (System account)! Create new users!' =>
            'Ne dolgozzon az 1-es felhasználóval (Rendszer jogosultság)! Hozzon létre új felhasználót!',
        'Download Settings' => 'Beállítások letöltése',
        'Download all system config changes.' => 'Minden rendszerbeállítás modosítás letöltése.',
        'Drop Database' => 'Adatbázis törlése',
        'Dynamic-Object' => 'Dinamikus objektum',
        'Edit default services.' => 'Alap szolgáltatások szerkesztése.',
        'Email based' => 'E-mail alapú',
        'Escaladed Tickets' => 'Eszkalált Jegyek',
        'Escalation - First Response Time' => 'Eszkaláció - Első válasz ideje',
        'Escalation - Solution Time' => 'Eszkaláció - Megoldás ideje',
        'Escalation - Update Time' => 'Eszkaláció - Frissítés ideje',
        'Escalation Times' => 'Eszkalációs idő',
        'Escalation time' => 'Eszkaláció ideje',
        'Event is required!' => 'Esemény megadása szükséges!',
        'Expand View' => 'Kibővített Nézet',
        'Explanation' => 'Magyarázat',
        'Export Config' => 'Beállítások exportálása',
        'FAQ Search Result' => 'GYIK találati eredmények',
        'FAQ System History' => 'GYIK rendszer történet',
        'File-Name' => 'File-név',
        'File-Path' => 'File-útvonal',
        'Filelist' => 'Fájl lista',
        'Filtername' => 'Szűrő neve',
        'Follow up' => 'Válasz',
        'Follow up notification' => 'Válaszlevél értesítés',
        'For very complex stats it is possible to include a hardcoded file.' =>
            'Nagyon összetett statisztikáknál lehetség előre elkészített fájlok használata.',
        'Frontend' => 'Felhasználói felület',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Szöveg keresése a bejegyzésekben (pl. "Mar*in" or "Baue*")',
        'Go' => 'Indítás',
        'Group Ro' => 'Csoport Ro',
        'Group based' => 'Csoport alapú',
        'Group selection' => 'Csoport kiválasztása',
        'Have a lot of fun!' => 'Sok sikert!',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' =>
            'Itt kiválaszthatja a grafikonon megjelenő értékeket. Egy vagy két tulajdonságot jelölhet ki. Után kiválaszthatja a tulajdonság értékeit. Minden érték külön kerül ábrázolásra a grafikonon. Ha nem választ ki egyetlen értéket sem a tulajdonsághoz, akkor az összes érték használva lesz a statisztika létrehozásakor. Szintén hozzáadásra kerülnek a legutóbbi beállítás óta létrejött új értékek is.',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' =>
            'Itt definiálhatja az x-tengelyt. A választógomb segítségével tud választani. Ha nem választ semmit, akkor minden jellemző felhaszhálásra kerül a statisztika elkészítésénél. Ugyanúgy, ahogy egy új jellemző már hozzáadásra került a legutolsó konfiguráció óta.',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' =>
            'Itt állíthatja be az X tengelyt. Válasszon egyet a rádió gombok közül. Utána válassza ki két vagy több értékét a tulajdonságnak. Ha nem választ ki egyetlen értéket sem a tulajdonsághoz, akkor az összes érték használva lesz a statisztika létrehozásakor. Szintén hozzáadásra kerülnek a legutóbbi beállítás óta létrejött új értékek is.',
        'Here you can insert a description of the stat.' => 'Itt tudja megadni a statisztika leírását.',
        'Here you can select the dynamic object you want to use.' => 'Itt tudja kiválasztani azt a dinamikus objektumot, amelyet hasznáni kíván.',
        'Home' => 'Otthon',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' =>
            'Ha a biztonságos üzemmód nincs aktiválva, akkor a SysConfig-ben aktiválja, mivel az alkalmazás már fut.',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' =>
            'Ha rendelkezésre áll egy újabb előre elkészített fájl akkor az itt megjelenik és választható közülük egyet.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' =>
            'Ha a jegy le van zárva és az ügyfél válaszol a jegyre, akkor az zárolásra kerül a régi tulajdonos részére.',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' =>
            'Ha a jegy nem kerül megválaszolásra a megadott időn belül, csak ez a jegy lesz megjelenítve.',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' =>
            'Ha az ügyintéző zárolja a jegyet és nem küld választ ezen időn belül, a jegy zárolása megszűnik. Így a jegy látható lesz minden ügyintézőnek.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' =>
            'Ha nincs semmi kiválasztva, akkor nincsenek jogosultságok ebben a csoportban (a jegyek nem lesznek elérhetők a felhasználónak).',
        'If you need the sum of every column select yes.' => 'Amennyiben az oszlopok összegzésére van szüksége, akkor válassza az igent.',
        'If you need the sum of every row select yes' => 'Amennyiben a sorok összegzésére van szüksége, akkor válassza az igent.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' =>
            'Ha szabályos kifejzéseket használ, használhatja a ()-ben levő egyező értéket mint [***] a \'Beállítás\'-nál.',
        'Image' => 'Kép',
        'Important' => 'Fontos',
        'Imported' => 'Importálva',
        'Imported by' => 'Importálta',
        'In this form you can select the basic specifications.' => 'Ezen a felületen elvégezheti az alapvető beállításokat.',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' =>
            'Íly módon közvetlenül szerkesztheti a Kernel/Config.pm-ben beállított kulcskarikát.',
        'Information about the Stat' => 'Információ a statisztikáról',
        'Insert of the common specifications' => 'Az általános beállítások megadása',
        'Instance' => 'Instancia',
        'Is Job Valid' => 'Teendő érvényes',
        'Is Job Valid?' => 'Teendő érvényes?',
        'It\'s useful for ASP solutions.' => 'Ez hasznos ASP megoldásokhoz.',
        'It\'s useful for a lot of users and groups.' => 'Ez hasznos egy csomó felhasználónak és csoportnak',
        'Job-List' => 'Teendők listája',
        'Keyword' => 'Kulcsszó',
        'Keywords' => 'Kulcsszó',
        'Last update' => 'Utolsó frissítés',
        'Link to Parent' => 'Szülőhöz kapcsol',
        'Linked as' => 'Kapcsolva mint',
        'Load' => 'Betöltés',
        'Load Settings' => 'Beállítások betöltése',
        'Lock it to work on it!' => 'Jegy zárolása, hogy dolgozzon rajta!',
        'Logfile' => 'Log file',
        'Logfile too large, you need to reset it!' => 'A naplófájl túl nagy, kitörlése szükséges!',
        'Login failed! Your username or password was entered incorrectly.' =>
            'Belépés sikertelen! Hibásan adta meg a felhasználói nevét vagy jelszavát.',
        'Lookup' => 'Keres',
        'Mail Management' => 'E-mail kezelés',
        'Mailbox' => 'Postafiók',
        'Match' => 'Egyezés',
        'Message for new Owner' => 'Üzenet az új tulajdonosnak',
        'Message sent to' => 'Üzenet elküldve',
        'Misc' => 'Egyéb',
        'Modified' => 'Módosítva',
        'Modules' => 'Modul',
        'Move notification' => 'Áthelyezés értesítés',
        'Multiple selection of the output format.' => 'Több kimeneti formátum kiválasztása.',
        'My Queue' => 'Saját várólistám',
        'MyTickets' => 'Saját jegyek',
        'Name is required!' => 'A nevet meg kell adni!',
        'New Agent' => 'Új ügyintéző',
        'New Customer' => 'Új ügyfél',
        'New Group' => 'Új csoport',
        'New Group Ro' => 'Új Csoport Ro',
        'New Priority' => 'Új prioritás',
        'New SLA' => 'Új SLA',
        'New Service' => 'Új Szolgáltatás',
        'New State' => 'Új állapot',
        'New Ticket Lock' => 'Jegy új zárolási állapota',
        'New TicketFreeFields' => 'Új jegy szabad mezők',
        'New Title' => 'Új cím',
        'New Type' => 'Új Tipus',
        'New account created. Sent Login-Account to %s.' => 'Új felhasználó létrehozva. Belépési információ %s részére elküldve.',
        'New messages' => 'Új üzenetek',
        'New password again' => 'Új jelszó megismétlése',
        'Next Week' => 'Következő Hét',
        'No * possible!' => 'A "*" nem lehetséges!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' =>
            'Nincsenek csomagok a kért Keretrendszerhez ebben az on-line csomagtárolóban, viszont vannak más Keretrendszerekhez!',
        'No Packages or no new Packages in selected Online Repository!' =>
            'Nincsenek csomagok vagy nincsenek új csomagok a kiválasztott on-line csomagtárolóban!',
        'No Permission' => 'Nincs jogosultság',
        'No means, send agent and customer notifications on changes.' => 'Nem esetén mind az ügyintézőnek, mind az ügyfélnek küld értesítéseket a változásokról.',
        'No time settings.' => 'Nincs időbeállítás.',
        'Node-Address' => 'Node-cím',
        'Node-Name' => 'Node-név',
        'Note Text' => 'Jegyzet szöveg',
        'Notification (Customer)' => 'Értesítés (Ügyfél)',
        'Notifications' => 'Értesítések',
        'OTRS DB Password' => 'OTRS DB jelszó',
        'OTRS sends an notification email to the customer if the ticket is moved.' =>
            'Az OTRS értesítő levelet küld az ügyfélnek ha a jegy áthelyezésre került.',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' =>
            'Az OTRS értesítő levelet küld az ügyfélnek ha a jegy tulajdonosa megváltozott.',
        'OTRS sends an notification email to the customer if the ticket state has changed.' =>
            'Az OTRS értesítő levelet küld az ügyfélnek ha a jegy állapota megváltozott.',
        'Object already linked as %s.' => 'Objektum %s-ként már kapcsolódik.',
        'Of couse this feature will take some system performance it self!' =>
            'Természetesen ez a képesség maga is befolyásolja a rendszer teljesítményét!',
        'Only for ArticleCreate Event.' => 'Csak CikkLétrehoző eseményhez.',
        'Open Tickets' => 'Jegyek megnyitása',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' =>
            'Az aktuális ügyfél felhasználó adatai (pl. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' =>
            'Opciók az aktuális ügyfél felhasználói adatokhoz (pl. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' =>
            'Az aktuális ügyfél adatai (pl.  <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' =>
            'Opciók a jelenlegi felhasználó számára, aki kérte ezt a műveletet (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' =>
            'Opciók a aktuális felhasználónál aki kérte ezt az eljárást. (pl. <OTRS_CURRENT_UserFirstname>)',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' =>
            'A műveletet végző felhasználónak adatai (pl. <OTRS_CURRENT_UserFirstname>).',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' =>
            'Jegy adatok opciói (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' =>
            'Jegy adatok opciói (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' =>
            'A jegy adatai (pl.  <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' =>
            'A jegy adatai (pl. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Other Options' => 'Egyéb beállítások',
        'Out Of Office' => 'Házon kívül',
        'POP3 Account Management' => 'Levelezési POP3 fiókok kezelése',
        'Package' => 'Csomag',
        'Package not correctly deployed! You should reinstall the Package again!' =>
            'A csomag nincsen megfelelően telepítve! Telepítse újra a csomagot!',
        'Param 1' => '1. paraméter',
        'Param 2' => '2. paraméter',
        'Param 3' => '3. paraméter',
        'Param 4' => '4. paraméter',
        'Param 5' => '5. paraméter',
        'Param 6' => '6. paraméter',
        'Parent-Object' => 'Szülő objektum',
        'Password is already in use! Please use an other password!' => 'A jelszó már használatban van! Kérem válasszon másikat!',
        'Password is already used! Please use an other password!' => 'A jelszó már használatban van! Kérem válasszon másikat!',
        'Passwords doesn\'t match! Please try it again!' => 'A jelszavak nem egyeznek! Próbálja meg újra!',
        'Pending Times' => 'Várakozási idők',
        'Pending messages' => 'Várakozó üzenetek',
        'Pending type' => 'Várakozás típusa',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' =>
            'Jogosultság beállítások. Kiválaszthat egy vagy több csoportot, hogy a beállított statisztikát megtekinthetővé tegye a különböző ügyintézők számára.',
        'Permissions to change the ticket owner in this group/queue.' => 'Jogosultságok a jegy tulajdonosának megváltoztatásához ebben a csoportban/várólistában.',
        'PhoneView' => 'TelefonNézet',
        'Please contact your admin' => 'Kérjük vegye fel a kapcsolatot a rendszergazdájával',
        'PostMaster Filter' => 'Levelezési szűrők',
        'PostMaster POP3 Account' => 'Levelezési fiókok (POP3)',
        'Prio' => 'Prio',
        'Process-Path' => 'Process-útvonal',
        'Product' => 'Termék',
        'Queue <-> Auto Responses Management' => 'Várólista <-> Automatikus válaszok kezelése',
        'Queue Management' => 'Várólisták kezelése',
        'Queues <-> Auto Responses' => 'Várólista <-> Automatikus válaszok',
        'Realname' => 'Valódi név',
        'Rebuild' => 'Újraépítés',
        'Recipients' => 'Címzettek',
        'Reminder' => 'Emlékeztető',
        'Reminder messages' => 'Emlékeztető üzenetek',
        'Reporter' => 'Bejelentő',
        'Required Field' => 'Kötelező mezők',
        'Reset of escalation time.' => 'Eszkalációs idő nullázása.',
        'Reset of unlock time.' => 'Feloldási idő nullázása.',
        'Response Management' => 'Reakció kezelés',
        'Responses <-> Attachments Management' => 'Válaszok <-> Levélmellékletek kezelése',
        'Responses <-> Queue Management' => 'Válaszok <-> Várlisták kezelése',
        'Return to the compose screen' => 'Visszatérés a szerkesztőképernyőre',
        'Role' => 'Szerep',
        'Roles <-> Groups Management' => 'Szerepek <-> Csoportok kezelése',
        'Roles <-> Users' => 'Szerepek <-> Felhasználók',
        'Roles <-> Users Management' => 'Szerepek <-> Felhasználók kezelése',
        'Save Job as?' => 'Teendők mentése másképp?',
        'Save Search-Profile as Template?' => 'Elmenti a kereső profilt sablonként?',
        'Schedule' => 'Időzítés',
        'Search Result' => 'Keresési eredmény',
        'Search for' => 'Keresendő',
        'Secure Mode need to be enabled!' => 'Biztonságos üzemmódot engedélyezni kell!',
        'Select Box' => 'SQL lekérdezés',
        'Select Box Result' => 'SQL parancs eredménye',
        'Select Source (for add)' => 'Válassza ki a forrsát (hozzáadáshoz)',
        'Select the customeruser:service relations.' => 'Válassza ki az ügyfél felhasználó:szolgáltatás relációt.',
        'Select the element, which will be used at the X-axis' => 'Válassza ki a tulajdonságot, amely az X tengelyen fog megjelenni.',
        'Select the restrictions to characterise the stat' => 'Válassza ki a megkötéseket a statsztika testre szabásához',
        'Select the role:user relations.' => 'Válassza ki a szerep:felhasználó kapcsolatokat.',
        'Select the user:group permissions.' => 'A felhasználó:csoport jogok kiválasztása.',
        'Select your QueueView refresh time.' => 'Válassza ki a Várólista nézet frissítési idejét.',
        'Select your default spelling dictionary.' => 'Válassza ki az alapértelmezett helyesírásellenőrző szótárat.',
        'Select your frontend Charset.' => 'Válassza ki a felhasználói felület karakterkészletét.',
        'Select your frontend QueueView.' => 'Válassza ki a felhasználói felület Várólista nézetét.',
        'Select your frontend language.' => 'Válassza ki a felhasználói felület nyelvét.',
        'Select your out of office time.' => 'Válassza ki a házon kívül töltendő időt.',
        'Select your screen after creating a new ticket.' => 'Válassza ki a képernyőt új jegy létrehozása után.',
        'Selection needed' => 'Választák szükséges',
        'Send Notification' => 'Értesítés küldése',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' =>
            'Küldjön értesítést ha az ügyfél válaszol és én vagyok a tulajdonosa a jegynek.',
        'Send me a notification of an watched ticket like an owner of an ticket.' =>
            'Küldjön értesítést a figyelt jegyről úgy minta a jegy tulajdonosa lenne.',
        'Send no notifications' => 'Ne küldjön értesítéseket',
        'Sent new password to: %s' => 'Új jelszó %s részére elküldve.',
        'Sent password token to: %s' => 'Jelszó token %s részére elküldve.',
        'Service-Name' => 'Szolgáltatás neve',
        'SessionID invalid! Need user data!' => 'Hibás folyamat azonosító! Felhasználói adatok megadása szükséges!',
        'Sessions' => 'Folyamat',
        'Set customer user and customer id of a ticket' => 'A jegyhez tartozó ügyfél felhasználónak és ügyfél azonosítónak beállítása',
        'Show' => 'Megjelenítés',
        'Site' => 'Gép',
        'Solution' => 'Megoldás',
        'Sort by' => 'Rendezés így',
        'Source' => 'Forrás',
        'Spell Check' => 'Helyesírásellenőrzés',
        'Split' => 'Felosztás',
        'State Type' => 'Állapot típusa',
        'Static-File' => 'Statikus fájl',
        'Stats-Area' => 'Statisztika-terület',
        'Sub-Queue of' => 'Várólista alá tartozik',
        'Sub-Service of' => 'Szolgátatása alá tartozik',
        'Subscribe' => 'Feliratkozás',
        'System Address updated!' => 'Rendszer cím módosítva!',
        'System State Management' => 'Rendszerállapot kezelés',
        'System Status' => 'Rendszer állapota',
        'Systemaddress' => 'Rendszercím',
        'Take care that you also updated the default states in you Kernel/Config.pm!' =>
            'Figyeljen oda, hogy az Kernel/Config.pm fájlban is frissítse az alapértelmezett állapotokat!',
        'The message being composed has been closed.  Exiting.' => 'Az éppen elkészült levél lezárásra került. Kilépés.',
        'These values are read-only.' => 'Ezek az értékek csak olvashatók.',
        'These values are required.' => 'Ezen értékek megadása kötelező.',
        'This account exists.' => 'Ez a felhasználó már létezik.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' =>
            'Ez akkor hasznos, ha nem akarja, hogy valaki elérje a statisztika eredményét vagy a statsztika nincsen még teljesen beállítva.',
        'This window must be called from compose window' => 'Ezt az ablakot a szerkesztő ablakból kell hívni',
        'Ticket Lock' => 'Jegy zárolás',
        'Ticket Number Generator' => 'Jegy sorszám generátor',
        'Ticket Search' => 'Jegy keresés',
        'Ticket Status View' => 'Jegy állapotának megtekintése',
        'Ticket Type is required!' => 'Jegy tipus szükséges!',
        'Ticket escalation!' => 'Jegy kiemelése!',
        'Ticket locked!' => 'Jegy zárolva!',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' =>
            'Jegy tulajdonosának adatai (pl. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Jegy tulajdonos opciók (pl. <OTRS_OWNER_UserFirstname>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'A jegy tulajdonosának adatai (pl.  <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' =>
            'A jegy felelősének adatai (pl. <OTRS_RESPONSIBLE_UserFirstname>).',
        'Ticket selected for bulk action!' => 'Jegy kiválasztva csoportos művelethez!',
        'Ticket unlock!' => 'Jegy feloldása!',
        'Ticket-Area' => 'Jegy-terület',
        'TicketFreeFields' => 'Jegy szabad mezői',
        'TicketFreeText' => 'Jegy szabadszöveg',
        'TicketZoom' => 'JegyRészletek',
        'Tickets available' => 'Elérhető jegyek',
        'Tickets shown' => 'Mutatott jegyek',
        'Tickets which need to be answered!' => 'Válaszra váró Jegyek!',
        'Timeover' => 'Késés',
        'Times' => 'Idők',
        'Title of the stat.' => 'A statisztika címe.',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' =>
            'Cikk jellemzői pl. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' =>
            'A bejegyzés attributmának használata (pl. <OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> és <OTRS_CUSTOMER_Body>).',
        'Top of Page' => 'Lap teteje',
        'Total hits' => 'Összes találat',
        'U' => 'A',
        'Unable to parse Online Repository index document!' => 'Nem sikerült értelmezni az on-line csomagtároló index dokumentumát!',
        'Uniq' => 'Egyedi',
        'Unlock Tickets' => 'Jegyek feloldása',
        'Unlock to give it back to the queue!' => 'Oldja föl, hogy visszakerüljön a várólistába!',
        'Unsubscribe' => 'Leiratkozás',
        'Use utf-8 it your database supports it!' => 'Használd utf-8-at az adatbázis támogatásoknál!',
        'Useable options' => 'Használható opciók',
        'User Management' => 'Felhasználók kezelése',
        'User will be needed to handle tickets.' => 'Felhasználó szükséges a jegyek kezeléséhez.',
        'User-Name' => 'Felhasználónév',
        'User-Number' => 'Felhasználó-szám',
        'Users' => 'Felhasználók',
        'Users <-> Groups' => 'Felhasználók <-> Csoportok',
        'Users <-> Groups Management' => 'Felhasználók <-> Csoportok kezelése',
        'Warning! This tickets will be removed from the database! This tickets are lost!' =>
            'Figyelmeztetés! Ezek a jegyek el lesznek távolítva az adatbázisból! Ezek a jegyek elvesznek!',
        'Watch notification' => 'Figyelés értesítő',
        'Web-Installer' => 'Web-telepítő',
        'Welcome to OTRS' => 'Üdvözli az OTRS',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'Érvénytelen statisztika esetén nem lehetséges a statiszika előállítása.',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' =>
            'A bemeneti és kiválasztható mezőkkel kiválaszthatja a kívánt statisztikát. Az Ön által szerkeszthető statisztika értékek a statisztikát beállító adminisztrátortól függnek.',
        'Workflow Groups' => 'Workflow csoportok',
        'Yes means, send no agent and customer notifications on changes.' =>
            'Igen esetén nem küld értesítésekes sem az ügyintézőnek, sem az ügyfélnek a változásokról.',
        'Yes, save it with name' => 'Igen, elmentve ezen a néven',
        'You got new message!' => 'Új üzenete érkezett!',
        'You have to select two or more attributes from the select field!' =>
            'Legalább két értéket válasszon ki a mezőben!',
        'You need a email address (e. g. customer@example.com) in To:!' =>
            'Kell egy e-mail cím (pl. customer@example.com) címzettnek!',
        'You need min. one selected Ticket!' => 'Legalább egy jegyet ki kell választani!',
        'You need to account time!' => 'El kell számolnia az idővel!',
        'You need to activate %s first to use it!' => '%s aktiválására van szükség mielőtt használná!',
        'You use the DELETE option! Take care, all deleted Tickets are lost!!!' =>
            'A TÖRLÉS opciót használja! Legyen óvatos, az összes törölt jegy elveszik!!!',
        'Your email address is new' => 'Az ön e-mail címe új',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' =>
            'Az ön "<OTRS_TICKET>" számú jegyhez rendelt e-mailje visszaküldésre került a "<OTRS_BOUNCE_TO>" címre. Vegye fel ezzel a címmel a kapcsolatot további információkért.',
        'Your own Ticket' => 'Az ön saját jegye',
        'customer realname' => 'ügyfél valódi név',
        'down' => 'le',
        'false' => 'hamis',
        'for agent firstname' => 'ügyintéző keresztnévhez',
        'for agent lastname' => 'ügyintéző családinévhez',
        'for agent login' => 'ügyintéző belépéséhez',
        'for agent user id' => 'ügynük felhasználó azonosítójához',
        'kill all sessions' => 'Minden eljárás kilövése',
        'kill session' => 'folyamat törlése',
        'modified' => 'módosított',
        'new ticket' => 'új jegy',
        'next step' => 'következő lépés',
        'not rated' => 'nincs besorolva',
        'not verified' => 'nem ellenőrzött',
        'read' => 'olvasott',
        'send' => 'küldés',
        'sort downward' => 'rendezés lefelé',
        'sort upward' => 'rendezés felfelé',
        'tmp_lock' => 'ideiglenesen zárolt',
        'to get the first 20 character of the subject' => 'hogy megkapja az első 20 karaktert a tárgyból',
        'to get the first 5 lines of the email' => 'hogy megkapja az első 5 sort az e-mailből',
        'to get the from line of the email' => 'hogy megkapja a feladót az e-mailből',
        'to get the realname of the sender (if given)' => 'hogy megkapja a feladó valódi nevét (ha lehetséges)',
        'unknown' => 'ismeretlen',
        'unread' => 'olvasatlan',
        'up' => 'fel',
        'utf8' => 'utf8',
        'verified' => 'ellenőrzött',
        'x' => 'x',

    };
    # $$STOP$$
    return;
}

1;
