# --
# Serialize.t - SOAP Serialize tests
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: Serialize.t,v 1.5 2011/03/05 06:19:32 cr Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use vars (qw($Self));

use SOAP::Lite;
use XML::TreePP;
use Kernel::System::VariableCheck qw(:all);
use Kernel::GenericInterface::Transport::HTTP::SOAP;

# create needed objects
my $XMLObject = XML::TreePP->new();

my $SOAPHeader = '<?xml version="1.0" encoding="UTF-8"?>'
    . '<soap:Envelope '
    . 'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '
    . 'xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" '
    . 'xmlns:xsd="http://www.w3.org/2001/XMLSchema" '
    . 'soap:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" '
    . 'xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">'
    . '<soap:Body>';

my $SOAPFooter = '</soap:Body>'
    . '</soap:Envelope>';

my @SoapTests = (
    {
        Name      => 'Undefined data Fail',
        Operation => 'MyOperation',
        Data      => undef,
        XML       => ' ',
        Success   => 0,
    },
    {
        Name      => 'Empty Fail',
        Operation => 'MyOperation',
        Data      => '',
        XML       => ' ',
        Success   => 0,
    },
    {
        Name      => 'Scalar',
        Operation => 'MyOperation',
        Data      => {
            Var => 1,
        },
        XML     => '<Var>1</Var>',
        Success => 1,
    },
    {
        Name      => 'Hash',
        Operation => 'MyOperation',
        Data      => {
            Var => {
                Number => 2,
                String => 'foo',
                Hash   => {
                    Key1 => 1,
                    Key2 => 2,
                },
            },
        },
        XML => '<Var>'
            . '<Hash>'
            . '<Key1>1</Key1>'
            . '<Key2>2</Key2>'
            . '</Hash>'
            . '<Number>2</Number>'
            . '<String>foo</String>'
            . '</Var>',
        Success => 1,
    },
    {
        Name      => 'Array',
        Operation => 'MyOperation',
        Data      => {
            Var => [ 1, 2, 3 ],
        },
        XML => '<Var>1</Var>'
            . '<Var>2</Var>'
            . '<Var>3</Var>',
        Success => 1,
    },
    {
        Name      => 'Complex',
        Operation => 'MyOperation',
        Data      => {
            Var => [
                1,
                Hash => {
                    Key1 => [ 1, 2 ],
                    Key3 => 1,
                    Key4 => {
                        Key5 => 'Hash',
                    },
                },
            ],
        },
        XML => '<Var>1</Var>'
            . '<Var>Hash</Var>'
            . '<Var>'
            . '<Key1>1</Key1>'
            . '<Key1>2</Key1>'
            . '<Key3>1</Key3>'
            . '<Key4>'
            . '<Key5>Hash</Key5>'
            . '</Key4>'
            . '</Var>',
        Success => 1,
    },
    {
        Name      => 'ArrayRef inside ArrayRef Fail',
        Operation => 'MyOperation',
        Data      => {
            Var => [
                1,
                Hash => {
                    Key1 => [ 1, 2 ],
                    Key3 => 1,
                    Key4 => {
                        Key5 => 'Hash',
                    },
                },
                [
                    1,
                    2,
                    3
                ],
            ],
        },
        XML     => ' ',
        Success => 0,
    },
);

# loop trough the tests
for my $Test (@SoapTests) {

    # prepare data
    my @SOAPData = Kernel::GenericInterface::Transport::HTTP::SOAP->_SOAPOutputRecursion(
        Data => $Test->{Data},
    );

    # create return structure
    my $SOAPResult = SOAP::Data->value(@SOAPData);
    my $Content    = SOAP::Serializer
        ->autotype(0)
        ->envelope( response => $Test->{Operation} . 'Response', $SOAPResult, );

    # create an XML file to compare the expected results
    my $SOAPRawContent = $SOAPHeader
        . '<' . $Test->{Operation} . 'Response' . '>'
        . $Test->{XML}
        . '</' . $Test->{Operation} . 'Response' . '>'
        . $SOAPFooter;

    # convert soap XML back to perl structure for easy handling
    $XMLObject->set( attr_prefix => '' );
    my $XMLContent = $XMLObject->parse($Content);

    # check soap message
    $Self->Is(
        ref $XMLContent,
        'HASH',
        "Test $Test->{Name}: SOAP Message structure",
    );

    $Self->True(
        IsHashRefWithData($XMLContent),
        "Test $Test->{Name}: SOAP Message structure have content",
    );

    my $SoapEnvelope = $XMLContent->{'soap:Envelope'};

    # check soap envelope
    $Self->Is(
        ref $SoapEnvelope,
        'HASH',
        "Test $Test->{Name}: SOAP Envelope structure",
    );

    $Self->True(
        IsHashRefWithData($SoapEnvelope),
        "Test $Test->{Name}: SOAP Envelope structure have content",
    );

    # check soap:Body
    $Self->Is(
        ref $SoapEnvelope->{'soap:Body'},
        'HASH',
        "Test $Test->{Name}: SOAP Body structure",
    );

    $Self->True(
        IsHashRefWithData( $SoapEnvelope->{'soap:Body'} ),
        "Test $Test->{Name}: SOAP Body structure have content",
    );

    # check soap:Body Response
    $Self->Is(
        ref $SoapEnvelope->{'soap:Body'}->{ $Test->{Operation} . 'Response' },
        'HASH',
        "Test $Test->{Name}: SOAP Response structure",
    );

    $Self->True(
        IsHashRefWithData( $SoapEnvelope->{'soap:Body'}->{ $Test->{Operation} . 'Response' } ),
        "Test $Test->{Name}: SOAP Response structure have content",
    );

    # check for other soap components
    $Self->IsNot(
        $SoapEnvelope->{'xmlns:xsi'},
        '' || undef,
        "Test $Test->{Name}: SOAP Envelope component xmlns:xsi is not empty",
    );

    $Self->IsNot(
        $SoapEnvelope->{'xmlns:soapenc'},
        '' || undef,
        "Test $Test->{Name}: SOAP Envelope component xmlns:soapenc is not empty",
    );

    $Self->IsNot(
        $SoapEnvelope->{'xmlns:xsd'},
        '' || undef,
        "Test $Test->{Name}: SOAP Envelope component xmlns:xsd is not empty",
    );

    $Self->IsNot(
        $SoapEnvelope->{'soap:encodingStyle'},
        '' || undef,
        "Test $Test->{Name}: SOAP Envelope component soap:encodingStyle is not empty",
    );

    $Self->IsNot(
        $SoapEnvelope->{'xmlns:soap'},
        '' || undef,
        "Test $Test->{Name}: SOAP Envelope component xmlns:soap is not empty",
    );

    # deserialize with SOAP::Lite
    my $SOAPObject = eval { SOAP::Deserializer->deserialize($Content); };
    my $SOAPError = $@;

    $Self->False(
        $SOAPError,
        "Test $Test->{Name}: SOAP::Lite Deserialize with no errors",
    );

    if ( $Test->{Success} ) {

        $Self->IsDeeply(
            $Content,
            $SOAPRawContent,
            "Test $Test->{Name}: SOAP Response data raw as normal XML IsDeeply",
        );

        $Self->IsDeeply(
            $SoapEnvelope->{'soap:Body'}->{ $Test->{Operation} . 'Response' },
            $Test->{Data},
            "Test $Test->{Name}: SOAP Response data parsed as normal XML IsDeeply",
        );

        my $SOAPBody = $SOAPObject->body();
        $Self->IsDeeply(
            $SOAPBody->{ $Test->{Operation} . 'Response' },
            $Test->{Data},
            "Test $Test->{Name}: SOAP Response data parsed as SOAP message IsDeeply",
        );
    }
    else {
        $Self->IsNotDeeply(
            $SoapEnvelope->{'soap:Body'}->{ $Test->{Operation} . 'Response' },
            $Test->{Data},
            "Test $Test->{Name}: SOAP Response data parsed as normal XML IsNotDeeply",
        );

        my $SOAPBody = $SOAPObject->body();
        $Self->IsNotDeeply(
            $SOAPBody->{ $Test->{Operation} . 'Response' },
            $Test->{Data},
            "Test $Test->{Name}: SOAP Response data parsed as SOAP message IsNotDeeply",
        );
    }
}

1;