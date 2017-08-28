Insert into MONETARYUNIT (ID,DESCRIPTION,NAME) values (1,'EURO','EUR');
Insert into MONETARYUNIT (ID,DESCRIPTION,NAME) values (2,'New romanian lei','RON');
Insert into MONETARYUNIT (ID,DESCRIPTION,NAME) values (3,'US DOLLAR','USD');
Insert into MONETARYUNIT (ID,DESCRIPTION,NAME) values (4,'Japan rules','JPY');

--object model
Insert into CURRENCYEXCHANGEOBJECTMODEL (ID,CREATIONDATE) values (1,to_date('01-AUG-17','DD-MON-RR'));
Insert into CURRENCYEXCHANGEOBJECTMODEL (ID,CREATIONDATE) values (2,to_date('03-AUG-17','DD-MON-RR'));

update CURRENCYEXCHANGEOBJECTMODEL set XMLDATA = '<?xml version="1.0" encoding="utf-8"?>
<DataSet xmlns="http://www.bnr.ro/xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.bnr.ro/xsd nbrfxrates.xsd">
	<Header>
		<Publisher>National Bank of Romania</Publisher>
		<PublishingDate>2017-08-01</PublishingDate>
		<MessageType>DR</MessageType>
	</Header>
	<Body>
		<Subject>Reference rates</Subject>
		<OrigCurrency>RON</OrigCurrency>
		<Cube date="2017-08-01">
			<Rate currency="AED">1.0501</Rate>
			<Rate currency="AUD">3.0865</Rate>
			<Rate currency="BGN">2.3304</Rate>
			<Rate currency="BRL">1.2333</Rate>
			<Rate currency="CAD">3.0973</Rate>
			<Rate currency="CHF">3.9976</Rate>
			<Rate currency="CNY">0.5739</Rate>
			<Rate currency="CZK">0.1743</Rate>
			<Rate currency="DKK">0.6128</Rate>
			<Rate currency="EGP">0.2161</Rate>
			<Rate currency="EUR">4.5577</Rate>
			<Rate currency="GBP">5.1050</Rate>
			<Rate currency="HRK">0.6150</Rate>
			<Rate currency="HUF" multiplier="100">1.5023</Rate>
			<Rate currency="INR">0.0602</Rate>
			<Rate currency="JPY" multiplier="100">3.4946</Rate>
			<Rate currency="KRW" multiplier="100">0.3439</Rate>
			<Rate currency="MDL">0.2147</Rate>
			<Rate currency="MXN">0.2171</Rate>
			<Rate currency="NOK">0.4887</Rate>
			<Rate currency="NZD">2.8901</Rate>
			<Rate currency="PLN">1.0710</Rate>
			<Rate currency="RSD">0.0380</Rate>
			<Rate currency="RUB">0.0643</Rate>
			<Rate currency="SEK">0.4771</Rate>
			<Rate currency="THB">0.1159</Rate>
			<Rate currency="TRY">1.0960</Rate>
			<Rate currency="UAH">0.1495</Rate>
			<Rate currency="USD">3.8569</Rate>
			<Rate currency="XAU">157.1857</Rate>
			<Rate currency="XDR">5.4477</Rate>
			<Rate currency="ZAR">0.2912</Rate>
		</Cube>
	</Body>
</DataSet>' where ID = 1;


update CURRENCYEXCHANGEOBJECTMODEL set XMLDATA = '<?xml version="1.0" encoding="utf-8"?>
<DataSet xmlns="http://www.bnr.ro/xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.bnr.ro/xsd nbrfxrates.xsd">
	<Header>
		<Publisher>National Bank of Romania</Publisher>
		<PublishingDate>2017-08-03</PublishingDate>
		<MessageType>DR</MessageType>
	</Header>
	<Body>
		<Subject>Reference rates</Subject>
		<OrigCurrency>RON</OrigCurrency>
		<Cube date="2017-08-03">
			<Rate currency="AED">1.0489</Rate>
			<Rate currency="AUD">3.0559</Rate>
			<Rate currency="BGN">2.3332</Rate>
			<Rate currency="BRL">1.2373</Rate>
			<Rate currency="CAD">3.0564</Rate>
			<Rate currency="CHF">3.9740</Rate>
			<Rate currency="CNY">0.5731</Rate>
			<Rate currency="CZK">0.1747</Rate>
			<Rate currency="DKK">0.6135</Rate>
			<Rate currency="EGP">0.2161</Rate>
			<Rate currency="EUR">4.5632</Rate>
			<Rate currency="GBP">5.0991</Rate>
			<Rate currency="HRK">0.6159</Rate>
			<Rate currency="HUF" multiplier="100">1.5035</Rate>
			<Rate currency="INR">0.0605</Rate>
			<Rate currency="JPY" multiplier="100">3.4826</Rate>
			<Rate currency="KRW" multiplier="100">0.3421</Rate>
			<Rate currency="MDL">0.2141</Rate>
			<Rate currency="MXN">0.2164</Rate>
			<Rate currency="NOK">0.4869</Rate>
			<Rate currency="NZD">2.8548</Rate>
			<Rate currency="PLN">1.0727</Rate>
			<Rate currency="RSD">0.0381</Rate>
			<Rate currency="RUB">0.0637</Rate>
			<Rate currency="SEK">0.4749</Rate>
			<Rate currency="THB">0.1159</Rate>
			<Rate currency="TRY">1.0881</Rate>
			<Rate currency="UAH">0.1488</Rate>
			<Rate currency="USD">3.8524</Rate>
			<Rate currency="XAU">156.4819</Rate>
			<Rate currency="XDR">5.4444</Rate>
			<Rate currency="ZAR">0.2902</Rate>
		</Cube>
	</Body>
</DataSet>' where ID = 2;

--exchange rates
Insert into EXCHANGERATE (ID,CREATIONDATE,MULTIPLIER,VALUE,FINALMONETARYUNIT_ID,OBJECTMODEL_ID,ORIGINCURRENCY_ID) values (1,to_date('01-AUG-17','DD-MON-RR'),null,4.5577,1,1,2);
Insert into EXCHANGERATE (ID,CREATIONDATE,MULTIPLIER,VALUE,FINALMONETARYUNIT_ID,OBJECTMODEL_ID,ORIGINCURRENCY_ID) values (2,to_date('01-AUG-17','DD-MON-RR'),null,3.8569,3,1,2);
Insert into EXCHANGERATE (ID,CREATIONDATE,MULTIPLIER,VALUE,FINALMONETARYUNIT_ID,OBJECTMODEL_ID,ORIGINCURRENCY_ID) values (3,to_date('01-AUG-17','DD-MON-RR'),100,3.4946,4,1,2);
Insert into EXCHANGERATE (ID,CREATIONDATE,MULTIPLIER,VALUE,FINALMONETARYUNIT_ID,OBJECTMODEL_ID,ORIGINCURRENCY_ID) values (4,to_date('03-AUG-17','DD-MON-RR'),null,4.5632,1,1,2);
Insert into EXCHANGERATE (ID,CREATIONDATE,MULTIPLIER,VALUE,FINALMONETARYUNIT_ID,OBJECTMODEL_ID,ORIGINCURRENCY_ID) values (5,to_date('03-AUG-17','DD-MON-RR'),null,3.8524,3,1,2);
Insert into EXCHANGERATE (ID,CREATIONDATE,MULTIPLIER,VALUE,FINALMONETARYUNIT_ID,OBJECTMODEL_ID,ORIGINCURRENCY_ID) values (6,to_date('03-AUG-17','DD-MON-RR'),100,3.4826,4,1,2);
