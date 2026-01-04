
/*use master
drop database HoopLeague*/

/*create database HoopLeague;
use HoopLeague;*/

-- Tabela sa drzavama Git Repo: https://gist.github.com/OsamaShabrez/16731dee13fbff426da78108dd996fd4?utm
CREATE TABLE Countries (
	 id	INT IDENTITY(1,1) PRIMARY KEY,
	 NAME NVARCHAR(100) NOT NULL,
	 ISO NVARCHAR(2) NOT NULL
);
INSERT INTO Countries (Name, ISO) VALUES ('Afghanistan', 'AF');
INSERT INTO Countries (Name, ISO) VALUES ('Albania', 'AL');
INSERT INTO Countries (Name, ISO) VALUES ('Algeria', 'DZ');
INSERT INTO Countries (Name, ISO) VALUES ('American Samoa', 'AS');
INSERT INTO Countries (Name, ISO) VALUES ('Andorra', 'AD');
INSERT INTO Countries (Name, ISO) VALUES ('Angola', 'AO');
INSERT INTO Countries (Name, ISO) VALUES ('Anguilla', 'AI');
INSERT INTO Countries (Name, ISO) VALUES ('Antarctica', 'AQ');
INSERT INTO Countries (Name, ISO) VALUES ('Antigua and Barbuda', 'AG');
INSERT INTO Countries (Name, ISO) VALUES ('Argentina', 'AR');
INSERT INTO Countries (Name, ISO) VALUES ('Armenia', 'AM');
INSERT INTO Countries (Name, ISO) VALUES ('Aruba', 'AW');
INSERT INTO Countries (Name, ISO) VALUES ('Australia', 'AU');
INSERT INTO Countries (Name, ISO) VALUES ('Austria', 'AT');
INSERT INTO Countries (Name, ISO) VALUES ('Azerbaijan', 'AZ');
INSERT INTO Countries (Name, ISO) VALUES ('Bahamas', 'BS');
INSERT INTO Countries (Name, ISO) VALUES ('Bahrain', 'BH');
INSERT INTO Countries (Name, ISO) VALUES ('Bangladesh', 'BD');
INSERT INTO Countries (Name, ISO) VALUES ('Barbados', 'BB');
INSERT INTO Countries (Name, ISO) VALUES ('Belarus', 'BY');
INSERT INTO Countries (Name, ISO) VALUES ('Belgium', 'BE');
INSERT INTO Countries (Name, ISO) VALUES ('Belize', 'BZ');
INSERT INTO Countries (Name, ISO) VALUES ('Benin', 'BJ');
INSERT INTO Countries (Name, ISO) VALUES ('Bermuda', 'BM');
INSERT INTO Countries (Name, ISO) VALUES ('Bhutan', 'BT');
INSERT INTO Countries (Name, ISO) VALUES ('Bosnia and Herzegovina', 'BA');
INSERT INTO Countries (Name, ISO) VALUES ('Botswana', 'BW');
INSERT INTO Countries (Name, ISO) VALUES ('Bouvet Island', 'BV');
INSERT INTO Countries (Name, ISO) VALUES ('Brazil', 'BR');
INSERT INTO Countries (Name, ISO) VALUES ('British Indian Ocean Territory', 'IO');
INSERT INTO Countries (Name, ISO) VALUES ('Brunei Darussalam', 'BN');
INSERT INTO Countries (Name, ISO) VALUES ('Bulgaria', 'BG');
INSERT INTO Countries (Name, ISO) VALUES ('Burkina Faso', 'BF');
INSERT INTO Countries (Name, ISO) VALUES ('Burundi', 'BI');
INSERT INTO Countries (Name, ISO) VALUES ('Cambodia', 'KH');
INSERT INTO Countries (Name, ISO) VALUES ('Cameroon', 'CM');
INSERT INTO Countries (Name, ISO) VALUES ('Canada', 'CA');
INSERT INTO Countries (Name, ISO) VALUES ('Cape Verde', 'CV');
INSERT INTO Countries (Name, ISO) VALUES ('Cayman Islands', 'KY');
INSERT INTO Countries (Name, ISO) VALUES ('Central African Republic', 'CF');
INSERT INTO Countries (Name, ISO) VALUES ('Chad', 'TD');
INSERT INTO Countries (Name, ISO) VALUES ('Chile', 'CL');
INSERT INTO Countries (Name, ISO) VALUES ('China', 'CN');
INSERT INTO Countries (Name, ISO) VALUES ('Christmas Island', 'CX');
INSERT INTO Countries (Name, ISO) VALUES ('Cocos (Keeling) Islands', 'CC');
INSERT INTO Countries (Name, ISO) VALUES ('Colombia', 'CO');
INSERT INTO Countries (Name, ISO) VALUES ('Comoros', 'KM');
INSERT INTO Countries (Name, ISO) VALUES ('Congo', 'CG');
INSERT INTO Countries (Name, ISO) VALUES ('Cook Islands', 'CK');
INSERT INTO Countries (Name, ISO) VALUES ('Costa Rica', 'CR');
INSERT INTO Countries (Name, ISO) VALUES ('Croatia', 'HR');
INSERT INTO Countries (Name, ISO) VALUES ('Cuba', 'CU');
INSERT INTO Countries (Name, ISO) VALUES ('Cyprus', 'CY');
INSERT INTO Countries (Name, ISO) VALUES ('Czech Republic', 'CZ');
INSERT INTO Countries (Name, ISO) VALUES ('Denmark', 'DK');
INSERT INTO Countries (Name, ISO) VALUES ('Djibouti', 'DJ');
INSERT INTO Countries (Name, ISO) VALUES ('Dominica', 'DM');
INSERT INTO Countries (Name, ISO) VALUES ('Dominican Republic', 'DO');
INSERT INTO Countries (Name, ISO) VALUES ('Ecuador', 'EC');
INSERT INTO Countries (Name, ISO) VALUES ('Egypt', 'EG');
INSERT INTO Countries (Name, ISO) VALUES ('El Salvador', 'SV');
INSERT INTO Countries (Name, ISO) VALUES ('Equatorial Guinea', 'GQ');
INSERT INTO Countries (Name, ISO) VALUES ('Eritrea', 'ER');
INSERT INTO Countries (Name, ISO) VALUES ('Estonia', 'EE');
INSERT INTO Countries (Name, ISO) VALUES ('Ethiopia', 'ET');
INSERT INTO Countries (Name, ISO) VALUES ('Falkland Islands (Malvinas)' ,'FK');
INSERT INTO Countries (Name, ISO) VALUES ('Faroe Islands', 'FO');
INSERT INTO Countries (Name, ISO) VALUES ('Fiji', 'FJ');
INSERT INTO Countries (Name, ISO) VALUES ('Finland', 'FI');
INSERT INTO Countries (Name, ISO) VALUES ('France', 'FR');
INSERT INTO Countries (Name, ISO) VALUES ('French Guiana', 'GF');
INSERT INTO Countries (Name, ISO) VALUES ('French Polynesia', 'PF');
INSERT INTO Countries (Name, ISO) VALUES ('French Southern Territories', 'TF');
INSERT INTO Countries (Name, ISO) VALUES ('Gabon', 'GA');
INSERT INTO Countries (Name, ISO) VALUES ('Gambia', 'GM');
INSERT INTO Countries (Name, ISO) VALUES ('Georgia', 'GE');
INSERT INTO Countries (Name, ISO) VALUES ('Germany', 'DE');
INSERT INTO Countries (Name, ISO) VALUES ('Ghana', 'GH');
INSERT INTO Countries (Name, ISO) VALUES ('Gibraltar', 'GI');
INSERT INTO Countries (Name, ISO) VALUES ('Greece', 'GR');
INSERT INTO Countries (Name, ISO) VALUES ('Greenland', 'GL');
INSERT INTO Countries (Name, ISO) VALUES ('Grenada', 'GD');
INSERT INTO Countries (Name, ISO) VALUES ('Guadeloupe', 'GP');
INSERT INTO Countries (Name, ISO) VALUES ('Guam', 'GU');
INSERT INTO Countries (Name, ISO) VALUES ('Guatemala', 'GT');
INSERT INTO Countries (Name, ISO) VALUES ('Guernsey', 'GG');
INSERT INTO Countries (Name, ISO) VALUES ('Guinea', 'GN');
INSERT INTO Countries (Name, ISO) VALUES ('Guinea-Bissau', 'GW');
INSERT INTO Countries (Name, ISO) VALUES ('Guyana', 'GY');
INSERT INTO Countries (Name, ISO) VALUES ('Haiti', 'HT');
INSERT INTO Countries (Name, ISO) VALUES ('Heard Island and McDonald Islands', 'HM');
INSERT INTO Countries (Name, ISO) VALUES ('Holy See (Vatican City State)' ,'VA');
INSERT INTO Countries (Name, ISO) VALUES ('Honduras', 'HN');
INSERT INTO Countries (Name, ISO) VALUES ('Hong Kong', 'HK');
INSERT INTO Countries (Name, ISO) VALUES ('Hungary', 'HU');
INSERT INTO Countries (Name, ISO) VALUES ('Iceland', 'IS');
INSERT INTO Countries (Name, ISO) VALUES ('India', 'IN');
INSERT INTO Countries (Name, ISO) VALUES ('Indonesia', 'ID');
INSERT INTO Countries (Name, ISO) VALUES ('Iran', 'IR');
INSERT INTO Countries (Name, ISO) VALUES ('Iraq', 'IQ');
INSERT INTO Countries (Name, ISO) VALUES ('Ireland', 'IE');
INSERT INTO Countries (Name, ISO) VALUES ('Isle of Man', 'IM');
INSERT INTO Countries (Name, ISO) VALUES ('Israel', 'IL');
INSERT INTO Countries (Name, ISO) VALUES ('Italy', 'IT');
INSERT INTO Countries (Name, ISO) VALUES ('Jamaica', 'JM');
INSERT INTO Countries (Name, ISO) VALUES ('Japan', 'JP');
INSERT INTO Countries (Name, ISO) VALUES ('Jersey', 'JE');
INSERT INTO Countries (Name, ISO) VALUES ('Jordan', 'JO');
INSERT INTO Countries (Name, ISO) VALUES ('Kazakhstan', 'KZ');
INSERT INTO Countries (Name, ISO) VALUES ('Kenya', 'KE');
INSERT INTO Countries (Name, ISO) VALUES ('Kiribati', 'KI');
INSERT INTO Countries (Name, ISO) VALUES ('Kuwait', 'KW');
INSERT INTO Countries (Name, ISO) VALUES ('Kyrgyzstan', 'KG');
INSERT INTO Countries (Name, ISO) VALUES ('Lao Peoples Democratic Republic', 'LA');
INSERT INTO Countries (Name, ISO) VALUES ('Latvia', 'LV');
INSERT INTO Countries (Name, ISO) VALUES ('Lebanon', 'LB');
INSERT INTO Countries (Name, ISO) VALUES ('Lesotho', 'LS');
INSERT INTO Countries (Name, ISO) VALUES ('Liberia', 'LR');
INSERT INTO Countries (Name, ISO) VALUES ('Libya', 'LY');
INSERT INTO Countries (Name, ISO) VALUES ('Liechtenstein', 'LI');
INSERT INTO Countries (Name, ISO) VALUES ('Lithuania', 'LT');
INSERT INTO Countries (Name, ISO) VALUES ('Luxembourg', 'LU');
INSERT INTO Countries (Name, ISO) VALUES ('Macao', 'MO');
INSERT INTO Countries (Name, ISO) VALUES ('Madagascar', 'MG');
INSERT INTO Countries (Name, ISO) VALUES ('Malawi', 'MW');
INSERT INTO Countries (Name, ISO) VALUES ('Malaysia', 'MY');
INSERT INTO Countries (Name, ISO) VALUES ('Maldives', 'MV');
INSERT INTO Countries (Name, ISO) VALUES ('Mali', 'ML');
INSERT INTO Countries (Name, ISO) VALUES ('Malta', 'MT');
INSERT INTO Countries (Name, ISO) VALUES ('Marshall Islands', 'MH');
INSERT INTO Countries (Name, ISO) VALUES ('Martinique', 'MQ');
INSERT INTO Countries (Name, ISO) VALUES ('Mauritania', 'MR');
INSERT INTO Countries (Name, ISO) VALUES ('Mauritius', 'MU');
INSERT INTO Countries (Name, ISO) VALUES ('Mayotte', 'YT');
INSERT INTO Countries (Name, ISO) VALUES ('Mexico', 'MX');
INSERT INTO Countries (Name, ISO) VALUES ('Monaco', 'MC');
INSERT INTO Countries (Name, ISO) VALUES ('Mongolia', 'MN');
INSERT INTO Countries (Name, ISO) VALUES ('Montenegro', 'ME');
INSERT INTO Countries (Name, ISO) VALUES ('Montserrat', 'MS');
INSERT INTO Countries (Name, ISO) VALUES ('Morocco', 'MA');
INSERT INTO Countries (Name, ISO) VALUES ('Mozambique', 'MZ');
INSERT INTO Countries (Name, ISO) VALUES ('Myanmar', 'MM');
INSERT INTO Countries (Name, ISO) VALUES ('Namibia', 'NA');
INSERT INTO Countries (Name, ISO) VALUES ('Nauru', 'NR');
INSERT INTO Countries (Name, ISO) VALUES ('Nepal', 'NP');
INSERT INTO Countries (Name, ISO) VALUES ('Netherlands', 'NL');
INSERT INTO Countries (Name, ISO) VALUES ('New Caledonia', 'NC');
INSERT INTO Countries (Name, ISO) VALUES ('New Zealand', 'NZ');
INSERT INTO Countries (Name, ISO) VALUES ('Nicaragua', 'NI');
INSERT INTO Countries (Name, ISO) VALUES ('Niger', 'NE');
INSERT INTO Countries (Name, ISO) VALUES ('Nigeria', 'NG');
INSERT INTO Countries (Name, ISO) VALUES ('Niue', 'NU');
INSERT INTO Countries (Name, ISO) VALUES ('Norfolk Island', 'NF');
INSERT INTO Countries (Name, ISO) VALUES ('Northern Mariana Islands', 'MP');
INSERT INTO Countries (Name, ISO) VALUES ('Norway', 'NO');
INSERT INTO Countries (Name, ISO) VALUES ('Oman', 'OM');
INSERT INTO Countries (Name, ISO) VALUES ('Pakistan', 'PK');
INSERT INTO Countries (Name, ISO) VALUES ('Palau', 'PW');
INSERT INTO Countries (Name, ISO) VALUES ('Panama', 'PA');
INSERT INTO Countries (Name, ISO) VALUES ('Papua New Guinea', 'PG');
INSERT INTO Countries (Name, ISO) VALUES ('Paraguay', 'PY');
INSERT INTO Countries (Name, ISO) VALUES ('Peru', 'PE');
INSERT INTO Countries (Name, ISO) VALUES ('Philippines', 'PH');
INSERT INTO Countries (Name, ISO) VALUES ('Pitcairn', 'PN');
INSERT INTO Countries (Name, ISO) VALUES ('Poland', 'PL');
INSERT INTO Countries (Name, ISO) VALUES ('Portugal', 'PT');
INSERT INTO Countries (Name, ISO) VALUES ('Puerto Rico', 'PR');
INSERT INTO Countries (Name, ISO) VALUES ('Qatar', 'QA');
INSERT INTO Countries (Name, ISO) VALUES ('Romania', 'RO');
INSERT INTO Countries (Name, ISO) VALUES ('Russian Federation', 'RU');
INSERT INTO Countries (Name, ISO) VALUES ('Rwanda', 'RW');
INSERT INTO Countries (Name, ISO) VALUES ('Saint Kitts and Nevis', 'KN');
INSERT INTO Countries (Name, ISO) VALUES ('Saint Lucia', 'LC');
INSERT INTO Countries (Name, ISO) VALUES ('Saint Martin (French part)' ,'MF');
INSERT INTO Countries (Name, ISO) VALUES ('Saint Pierre and Miquelon', 'PM');
INSERT INTO Countries (Name, ISO) VALUES ('Saint Vincent and the Grenadines', 'VC');
INSERT INTO Countries (Name, ISO) VALUES ('Samoa', 'WS');
INSERT INTO Countries (Name, ISO) VALUES ('San Marino', 'SM');
INSERT INTO Countries (Name, ISO) VALUES ('Sao Tome and Principe', 'ST');
INSERT INTO Countries (Name, ISO) VALUES ('Saudi Arabia', 'SA');
INSERT INTO Countries (Name, ISO) VALUES ('Senegal', 'SN');
INSERT INTO Countries (Name, ISO) VALUES ('Serbia', 'RS');
INSERT INTO Countries (Name, ISO) VALUES ('Seychelles', 'SC');
INSERT INTO Countries (Name, ISO) VALUES ('Sierra Leone', 'SL');
INSERT INTO Countries (Name, ISO) VALUES ('Singapore', 'SG');
INSERT INTO Countries (Name, ISO) VALUES ('Sint Maarten (Dutch part)' ,'SX');
INSERT INTO Countries (Name, ISO) VALUES ('Slovakia', 'SK');
INSERT INTO Countries (Name, ISO) VALUES ('Slovenia', 'SI');
INSERT INTO Countries (Name, ISO) VALUES ('Solomon Islands', 'SB');
INSERT INTO Countries (Name, ISO) VALUES ('Somalia', 'SO');
INSERT INTO Countries (Name, ISO) VALUES ('South Africa', 'ZA');
INSERT INTO Countries (Name, ISO) VALUES ('South Georgia and the South Sandwich Islands', 'GS');
INSERT INTO Countries (Name, ISO) VALUES ('South Sudan', 'SS');
INSERT INTO Countries (Name, ISO) VALUES ('Spain', 'ES');
INSERT INTO Countries (Name, ISO) VALUES ('Sri Lanka', 'LK');
INSERT INTO Countries (Name, ISO) VALUES ('State of Palestine', 'PS');
INSERT INTO Countries (Name, ISO) VALUES ('Sudan', 'SD');
INSERT INTO Countries (Name, ISO) VALUES ('Suriname', 'SR');
INSERT INTO Countries (Name, ISO) VALUES ('Svalbard and Jan Mayen', 'SJ');
INSERT INTO Countries (Name, ISO) VALUES ('Swaziland', 'SZ');
INSERT INTO Countries (Name, ISO) VALUES ('Sweden', 'SE');
INSERT INTO Countries (Name, ISO) VALUES ('Switzerland', 'CH');
INSERT INTO Countries (Name, ISO) VALUES ('Syrian Arab Republic', 'SY');
INSERT INTO Countries (Name, ISO) VALUES ('Tajikistan', 'TJ');
INSERT INTO Countries (Name, ISO) VALUES ('Thailand', 'TH');
INSERT INTO Countries (Name, ISO) VALUES ('Timor-Leste', 'TL');
INSERT INTO Countries (Name, ISO) VALUES ('Togo', 'TG');
INSERT INTO Countries (Name, ISO) VALUES ('Tokelau', 'TK');
INSERT INTO Countries (Name, ISO) VALUES ('Tonga', 'TO');
INSERT INTO Countries (Name, ISO) VALUES ('Trinidad and Tobago', 'TT');
INSERT INTO Countries (Name, ISO) VALUES ('Tunisia', 'TN');
INSERT INTO Countries (Name, ISO) VALUES ('Turkey', 'TR');
INSERT INTO Countries (Name, ISO) VALUES ('Turkmenistan', 'TM');
INSERT INTO Countries (Name, ISO) VALUES ('Turks and Caicos Islands', 'TC');
INSERT INTO Countries (Name, ISO) VALUES ('Tuvalu', 'TV');
INSERT INTO Countries (Name, ISO) VALUES ('Uganda', 'UG');
INSERT INTO Countries (Name, ISO) VALUES ('Ukraine', 'UA');
INSERT INTO Countries (Name, ISO) VALUES ('United Arab Emirates', 'AE');
INSERT INTO Countries (Name, ISO) VALUES ('United Kingdom', 'GB');
INSERT INTO Countries (Name, ISO) VALUES ('United States', 'US');
INSERT INTO Countries (Name, ISO) VALUES ('United States Minor Outlying Islands', 'UM');
INSERT INTO Countries (Name, ISO) VALUES ('Uruguay', 'UY');
INSERT INTO Countries (Name, ISO) VALUES ('Uzbekistan', 'UZ');
INSERT INTO Countries (Name, ISO) VALUES ('Vanuatu', 'VU');
INSERT INTO Countries (Name, ISO) VALUES ('Viet Nam', 'VN');
INSERT INTO Countries (Name, ISO) VALUES ('Wallis and Futuna', 'WF');
INSERT INTO Countries (Name, ISO) VALUES ('Western Sahara', 'EH');
INSERT INTO Countries (Name, ISO) VALUES ('Yemen', 'YE');
INSERT INTO Countries (Name, ISO) VALUES ('Zambia', 'ZM');
INSERT INTO Countries (Name, ISO) VALUES ('Zimbabwe', 'ZW');
GO
-- 12. Hale
CREATE TABLE Hale (
    id INT IDENTITY(1,1) PRIMARY KEY,
	drzava_id INT NOT NULL,
    naziv NVARCHAR(100) NOT NULL,
    kapacitet INT,
	grad NVARCHAR(50),
    adresa NVARCHAR(150),
    url_slika NVARCHAR(255),
    FOREIGN KEY (drzava_id) REFERENCES Countries(id) ON DELETE CASCADE
);
GO

INSERT INTO Hale(drzava_id,naziv,kapacitet,grad,adresa,url_slika) 
VALUES (182,'Beogradska Arena',22000,'Beograd','Bulevar Arsenija ?arnojevi?a 58',NULL);


INSERT INTO Hale(drzava_id,naziv,kapacitet,grad,adresa,url_slika) 
VALUES (182,'Hala Aleksandar Nikoli?',8000,'Beograd','?arlija ?aplina 39',NULL);

select * from Hale

-- 1. Timovi
CREATE TABLE Timovi (
    id INT IDENTITY(1,1) PRIMARY KEY,
	drzava_id INT NOT NULL,
    naziv NVARCHAR(100) NOT NULL UNIQUE,
    logo_url NVARCHAR(255),
    datum_osnivanja DATE,
    grad NVARCHAR(50) NOT NULL,
	broj_titula INT DEFAULT 0 CHECK (broj_titula >= 0),
	FOREIGN KEY (drzava_id) REFERENCES Countries(id) ON DELETE CASCADE
);
GO

ALTER TABLE Timovi
ADD skracenica NVARCHAR(10) NULL;



INSERT INTO Timovi (drzava_id, naziv, logo_url, datum_osnivanja, grad, broj_titula) VALUES 
(212, 'Anadolu Efes Istanbul', NULL, '1976-06-16', 'Istanbul', 2),
(70, 'AS Monaco', NULL, '1928-07-01', 'Monaco', 0),
(70, 'ASVEL LDLC Villeurbanne', NULL, '1948-01-01', 'Villeurbanne', 0),
(194, 'Baskonia Vitoria-Gasteiz', NULL, '1959-01-01', 'Vitoria-Gasteiz', 0),
(182, 'Crvena Zvezda Meridianbet Belgrade', NULL, '1945-03-04', 'Belgrade', 0),
(104, 'EA7 Emporio Armani Milan', NULL, '1936-01-01', 'Milan', 3),
(194, 'FC Barcelona', NULL, '1926-03-29', 'Barcelona', 2),
(77, 'FC Bayern Munich', NULL, '1946-01-27', 'Munich', 0),
(212, 'Fenerbahçe Beko Istanbul', NULL, '1907-05-03', 'Istanbul', 2),
(103, 'Hapoel Shlomo Tel Aviv', NULL, '1935-01-01', 'Tel Aviv', 0),
(103, 'Maccabi Playtika Tel Aviv', NULL, '1932-01-01', 'Tel Aviv', 6),
(80, 'Olympiacos Piraeus', NULL, '1931-03-10', 'Piraeus', 3),
(80, 'Panathinaikos AKTOR Athens', NULL, '1908-02-03', 'Athens', 7),
(70, 'Paris Basketball', NULL, '2018-01-01', 'Paris', 0),
(182, 'Partizan Mozzart Bet Belgrade', NULL, '1945-10-04', 'Belgrade', 1),
(194, 'Real Madrid', NULL, '1931-03-03', 'Madrid', 11),
(194, 'Valencia Basket', NULL, '1986-01-01', 'Valencia', 0),
(104, 'Virtus Segafredo Bologna', NULL, '1929-03-29', 'Bologna', 2),
(121, 'Žalgiris Kaunas', NULL, '1944-01-01', 'Kaunas', 1),
(218, 'Dubai', NULL, '2024-01-01', 'Dubai', 0);

UPDATE Timovi SET skracenica = 'EFS' WHERE naziv = 'Anadolu Efes Istanbul';
UPDATE Timovi SET skracenica = 'ASM' WHERE naziv = 'AS Monaco';
UPDATE Timovi SET skracenica = 'ASV' WHERE naziv = 'ASVEL LDLC Villeurbanne';
UPDATE Timovi SET skracenica = 'BAS' WHERE naziv = 'Baskonia Vitoria-Gasteiz';
UPDATE Timovi SET skracenica = 'CZV' WHERE naziv = 'Crvena Zvezda Meridianbet Belgrade';
UPDATE Timovi SET skracenica = 'MIL' WHERE naziv = 'EA7 Emporio Armani Milan';
UPDATE Timovi SET skracenica = 'BAR' WHERE naziv = 'FC Barcelona';
UPDATE Timovi SET skracenica = 'BAY' WHERE naziv = 'FC Bayern Munich';
UPDATE Timovi SET skracenica = 'FEN' WHERE naziv = 'Fenerbahçe Beko Istanbul';
UPDATE Timovi SET skracenica = 'HAP' WHERE naziv = 'Hapoel Shlomo Tel Aviv';
UPDATE Timovi SET skracenica = 'MAC' WHERE naziv = 'Maccabi Playtika Tel Aviv';
UPDATE Timovi SET skracenica = 'OLY' WHERE naziv = 'Olympiacos Piraeus';
UPDATE Timovi SET skracenica = 'PAN' WHERE naziv = 'Panathinaikos AKTOR Athens';
UPDATE Timovi SET skracenica = 'PAR' WHERE naziv = 'Paris Basketball';
UPDATE Timovi SET skracenica = 'PAR' WHERE naziv = 'Partizan Mozzart Bet Belgrade'; -- Ako želiš "PAR" i za Partizan, ili može "PTZ"
UPDATE Timovi SET skracenica = 'RMB' WHERE naziv = 'Real Madrid';
UPDATE Timovi SET skracenica = 'VAL' WHERE naziv = 'Valencia Basket';
UPDATE Timovi SET skracenica = 'VIR' WHERE naziv = 'Virtus Segafredo Bologna';
UPDATE Timovi SET skracenica = 'ZAL' WHERE naziv = 'Žalgiris Kaunas';
UPDATE Timovi SET skracenica = 'DUB' WHERE naziv = 'Dubai';


update Timovi set logo_url = 'images/logos/partizan.png' where id = 15;
update Timovi set logo_url = 'images/logos/zvezda.png' where id = 5;
update Timovi set logo_url = 'images/logos/armani.png' where id = 6;
update Timovi set logo_url = 'images/logos/pao.png' where id = 13;
update Timovi set logo_url = 'images/logos/oly.png' where id = 12;
update Timovi set logo_url = 'images/logos/zalgiris.png' where id = 19;
update Timovi set logo_url = 'images/logos/hapoel.png' where id = 10;
update Timovi set logo_url = 'images/logos/efes.png' where id = 1;
update Timovi set logo_url = 'images/logos/monaco.png' where id = 2;
update Timovi set logo_url = 'images/logos/asvel.png' where id = 3;
update Timovi set logo_url = 'images/logos/baskonia.png' where id = 4;
update Timovi set logo_url = 'images/logos/bayern.png' where id = 8;
update Timovi set logo_url = 'images/logos/fener.png' where id = 9;
update Timovi set logo_url = 'images/logos/maccabi.png' where id = 11;
update Timovi set logo_url = 'images/logos/paris.png' where id = 14;
update Timovi set logo_url = 'images/logos/barsa.png' where id = 7;
update Timovi set logo_url = 'images/logos/real.png' where id = 16;
update Timovi set logo_url = 'images/logos/valencia.png' where id = 17;
update Timovi set logo_url = 'images/logos/virtus.png' where id = 18;
update Timovi set logo_url = 'images/logos/dubai.png' where id = 20;









update Timovi set logo_url = 'wwwroot/images/logos/logo_null.png'

ALTER TABLE Timovi
ADD boja NVARCHAR(20);

UPDATE Timovi SET boja = '#0057B8' WHERE id = 1;   -- Anadolu Efes
UPDATE Timovi SET boja = '#C8102E' WHERE id = 2;   -- AS Monaco
UPDATE Timovi SET boja = '#1D1D1D' WHERE id = 3;   -- ASVEL
UPDATE Timovi SET boja = '#002D72' WHERE id = 4;   -- Baskonia
UPDATE Timovi SET boja = '#C8102E' WHERE id = 5;   -- Crvena Zvezda
UPDATE Timovi SET boja = '#E12228' WHERE id = 6;   -- Armani Milan
UPDATE Timovi SET boja = '#004D98' WHERE id = 7;   -- FC Barcelona
UPDATE Timovi SET boja = '#DC052D' WHERE id = 8;   -- Bayern
UPDATE Timovi SET boja = '#FFC600' WHERE id = 9;   -- Fenerbahce
UPDATE Timovi SET boja = '#E12228' WHERE id = 10;  -- Hapoel Tel Aviv
UPDATE Timovi SET boja = '#FDB913' WHERE id = 11;  -- Maccabi Tel Aviv
UPDATE Timovi SET boja = '#ED1C24' WHERE id = 12;  -- Olympiacos
UPDATE Timovi SET boja = '#007A33' WHERE id = 13;  -- Panathinaikos
UPDATE Timovi SET boja = '#000000' WHERE id = 14;  -- Paris Basketball
UPDATE Timovi SET boja = '#000000' WHERE id = 15;  -- Partizan
UPDATE Timovi SET boja = '#FEBE10' WHERE id = 16;  -- Real Madrid
UPDATE Timovi SET boja = '#F76800' WHERE id = 17;  -- Valencia
UPDATE Timovi SET boja = '#000000' WHERE id = 18;  -- Virtus Bologna
UPDATE Timovi SET boja = '#00703C' WHERE id = 19;  -- Žalgiris
UPDATE Timovi SET boja = '#FF8000' WHERE id = 20;  -- Dubai


-- 11. Sezone
CREATE TABLE Sezone (
    id INT IDENTITY(1,1) PRIMARY KEY,
    naziv NVARCHAR(50) NOT NULL UNIQUE,
    pocetak DATE NOT NULL,
    kraj DATE NOT NULL,
	sampion NVARCHAR(50) NULL,
	drzava_sampion_id INT NULL,
	CHECK (pocetak < kraj),
	FOREIGN KEY (drzava_sampion_id) REFERENCES Countries(id) ON DELETE CASCADE
);
GO
INSERT INTO Sezone (naziv,pocetak,kraj,sampion,drzava_sampion_id) VALUES ('2025/2026','2025-9-29','2026-5-24',null,null)

-- 2. Igraci
CREATE TABLE Igraci (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ime NVARCHAR(50) NOT NULL,
    prezime NVARCHAR(50) NOT NULL,
    drzava_id INT NOT NULL,
    broj_na_dresu INT CHECK (broj_na_dresu BETWEEN 0 AND 99),
    datum_rodjenja DATE,
    visina DECIMAL(5,2) CHECK (visina BETWEEN 150 AND 250), 
    tezina DECIMAL(5,2) CHECK (tezina BETWEEN 50 AND 160), 
    pozicija NVARCHAR(30) NOT NULL CHECK (pozicija IN ('Bek', 'Krilo', 'Centar')),
    mesto_rodjenja NVARCHAR(100),
    url_slika NVARCHAR(255),
	kapiten BIT DEFAULT 0,
	tim_id INT NOT NULL,
	FOREIGN KEY (tim_id) REFERENCES Timovi(id) ON DELETE CASCADE,
    FOREIGN KEY (drzava_id) REFERENCES Countries(id) ON DELETE NO ACTION,
    UNIQUE (tim_id, broj_na_dresu)
);
GO

-- INSERT INTO Igraci

-- Igraci KK Partizan Mozzart Bet
INSERT INTO Igraci (ime,prezime,drzava_id,broj_na_dresu,datum_rodjenja,visina,tezina,pozicija,mesto_rodjenja,url_slika,kapiten,tim_id)
VALUES ('Vanja','Marinkovi?',182,9,'1997-01-09',199.00,90.00,'Bek','Beograd',NULL,1,15);


INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id) 
VALUES ('Sterling', 'Brown', 220 , 12, '1995-02-10', 196.00, 99.00, 'Bek', 'USA', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id) 
VALUES ('Isaac', 'Bonga', 77, 17, '1999-11-08', 203.00, 95.00, 'Krilo', 'Germany', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id) 
VALUES ('Mario', 'Naki?',182, 7, '2001-06-14', 202.00, 97.00, 'Krilo', 'Serbia', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id) 
VALUES ('Dylan', 'Osetkowski', 220, 5, '1996-08-08', 206.00, 113.00, 'Centar', 'USA', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id) 
VALUES ('Bruno', 'Fernando', 6, 24, '1998-08-15', 208.00, 109.00, 'Centar', 'Angola', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id) 
VALUES ('Nick', 'Calathes', 80, 33, '1989-02-07', 198.00, 97.00, 'Bek', 'Greece/USA', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id) 
VALUES ('Tyrique', 'Jones', 220, 88, '1997-05-03', 206.00, 108.00, 'Centar', 'USA', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id) 
VALUES ('Shake', 'Milton', 220, 2, '1996-09-26', 196.00, 93.00, 'Bek', 'USA', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id) 
VALUES ('Arijan', 'Laki?', 182, 19, '2000-01-20', 198.00, 95.00, 'Bek', 'Beograd', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id)
VALUES ('Carlik', 'Jones', 220, 1, '1997-12-23', 193.00, 88.00, 'Bek', 'Cincinnati, USA', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id)
VALUES ('Duane', 'Washington', 220, 4, '1998-12-16', 196.00, 90.00, 'Bek', 'Chicago, USA', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id)
VALUES ('Mitar', 'Bosnjakovic', 182, 8, '2000-04-05', 198.00, 95.00, 'Bek', 'Novi Sad', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id)
VALUES ('Miikka', 'Muurinen', 187, 3, '1997-06-10', 203.00, 100.00, 'Krilo', 'Järvenpää', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id)
VALUES ('Uros', 'Mijailovic', 182, 10, '2002-02-11', 201.00, 98.00, 'Krilo', 'Beograd', NULL, 0,15);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten,tim_id)
VALUES ('Aleksej', 'Pokusevski', 182, 11, '2001-12-26', 213.00, 104.00, 'Krilo', 'Novi Sad', NULL, 0,15);

-- Igraci KK Crvena Zvezda Medridian Bet
INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Codi', N'Miller-McIntyre', 220, 0, '1994-06-01', 191.00, 88.00, N'Bek', N'Grinsboro, SAD', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Stefan', N'Miljenovi?', 182, 2, '2001-08-21', 192.00, 82.00, N'Bek', N'Beograd, Srbija', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Isaiah', N'Canaan', 220, 3, '1991-05-21', 183.00, 90.00, N'Bek', N'Biloksi, SAD', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Devonte', N'Graham', 220, 4, '1995-02-22', 185.00, 79.00, N'Bek', N'Reli, SAD', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Jared', N'Butler', 220, 6, '2000-08-25', 191.00, 86.00, N'Bek', N'Rezerv, SAD', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Tyson', N'Carter', 220, 11, '1998-01-14', 193.00, 80.00, N'Bek', N'Starkvil, SAD', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Ognjen', N'Radoši?', 182, 44, '2006-05-26', 195.00, 85.00, N'Bek', N'Beograd, Srbija', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Yago', N'dos Santos', 31, 99, '1999-03-09', 178.00, 80.00, N'Bek', N'Sao Paulo, Brazil', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Aleksej', N'Nedeljkovi?', 182, 5, '2008-05-05', 200.00, 85.00, N'Krilo', N'Beograd, Srbija', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Dejan', N'Davidovac', 182, 7, '1995-01-17', 203.00, 99.00, N'Krilo', N'Zrenjanin, Srbija', NULL, 1, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Nikola', N'Kalini?', 182, 12, '1991-11-08', 203.00, 95.00, N'Krilo', N'Subotica, Srbija', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Ognjen', N'Dobri?', 182, 13, '1994-10-27', 200.00, 91.00, N'Krilo', N'Knin, Hrvatska', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Jordan', N'Nwora', 220, 33, '1998-09-09', 203.00, 103.00, N'Krilo', N'Bafalo, SAD', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Semi', N'Ojeleye', 220, 37, '1994-12-05', 201.00, 108.00, N'Krilo', N'Overlend Park, SAD', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Chima', N'Moneke', 220, 95, '1995-12-24', 198.00, 102.00, N'Krilo', N'Abudža, Nigerija', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Uroš', N'Plavši?', 182, 1, '1998-12-22', 218.00, 116.00, N'Centar', N'?a?ak, Srbija', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Jasiel', N'Rivero', 220, 14, '1993-10-31', 206.00, 114.00, N'Centar', N'Havana, Kuba', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Ebuka', N'Izundu', 220, 15, '1996-06-28', 208.00, 103.00, N'Centar', N'Abudža, Nigerija', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Lazar', N'Stojkovi?', 182, 17, '2007-10-22', 210.00, 100.00, N'Centar', N'Beograd, Srbija', NULL, 0, 5);

INSERT INTO Igraci (ime, prezime, drzava_id, broj_na_dresu, datum_rodjenja, visina, tezina, pozicija, mesto_rodjenja, url_slika, kapiten, tim_id)
VALUES (N'Donatas', N'Motiejunas', 122, 20, '1990-09-20', 213.00, 112.00, N'Centar', N'Kaunas, Litvanija', NULL, 0, 5);
GO

-- Treneri
CREATE TABLE Treneri (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ime NVARCHAR(50) NOT NULL,
    prezime NVARCHAR(50) NOT NULL,
    uloga NVARCHAR(50) NOT NULL CHECK (uloga IN ('Glavni Trener', 'Pomo?ni Trener')),
    drzava_id INT NOT NULL,
    tim_id INT NOT NULL,
    datum_rodjenja DATE CHECK (datum_rodjenja < GETDATE()),
    url_slika NVARCHAR(255),
    FOREIGN KEY (drzava_id) REFERENCES Countries(id) ON DELETE NO ACTION,
    FOREIGN KEY (tim_id) REFERENCES Timovi(id) ON DELETE NO ACTION
);
GO

-- INSERT INTO Treneri
INSERT INTO Treneri (ime,prezime,uloga,drzava_id,tim_id,datum_rodjenja,url_slika) 
VALUES ('Željko','Obradovi?','Glavni Trener',182,15,'1960-03-09',NULL)

INSERT INTO Treneri (ime,prezime,uloga,drzava_id,tim_id,datum_rodjenja,url_slika) 
VALUES('Saša','Obradovi?','Glavni Trener',182,5,'1969-01-29',NULL)
GO

select * from Treneri

-- 4. Utakmice
CREATE TABLE Utakmice (
    id INT IDENTITY(1,1) PRIMARY KEY,
    hala_id INT NULL,
    datum_vreme DATETIME NOT NULL CHECK (datum_vreme > '2020-01-01'),
    runda INT NOT NULL CHECK (runda BETWEEN 1 AND 38),
    sezona_id INT NOT NULL,
    FOREIGN KEY (hala_id) REFERENCES Hale(id) ON DELETE SET NULL,
    FOREIGN KEY (sezona_id) REFERENCES Sezone(id) ON DELETE NO ACTION
);
GO


CREATE TRIGGER TRG_Utakmice_MaxPoRundi
ON Utakmice
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    ---------------------------------------------------------
    -- 1) Max 10 utakmica po rundi u okviru iste sezone
    ---------------------------------------------------------
    IF EXISTS (
        SELECT 1
        FROM Utakmice u
        INNER JOIN (SELECT DISTINCT sezona_id, runda FROM inserted) i
            ON i.sezona_id = u.sezona_id AND i.runda = u.runda
        GROUP BY u.sezona_id, u.runda
        HAVING COUNT(*) > 10
    )
    BEGIN
        RAISERROR (N'U jednoj rundi u okviru iste sezone ne može biti više od 10 utakmica.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    IF EXISTS (
        SELECT 1
        FROM Utakmice u
        INNER JOIN (SELECT DISTINCT sezona_id FROM inserted) i
            ON i.sezona_id = u.sezona_id
        GROUP BY u.sezona_id
        HAVING COUNT(DISTINCT u.runda) > 38
    )
    BEGIN
        RAISERROR (N'U jednoj sezoni ne može postojati više od 38 rundi.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
END;
GO

CREATE INDEX IX_Utakmice_Sezona_Runda ON Utakmice(sezona_id, runda);


-- 5. Utakmice_Timovi
CREATE TABLE Utakmice_Timovi (
    id INT IDENTITY(1,1) PRIMARY KEY,
    utakmica_id INT NOT NULL,
    tim_id INT NOT NULL,
    pobednik BIT CHECK (pobednik IN (0,1)),
    domacin BIT CHECK (domacin IN (0,1)),
    CONSTRAINT UQ_UtakmicaTim UNIQUE (utakmica_id, tim_id),
    FOREIGN KEY (utakmica_id) REFERENCES Utakmice(id) ON DELETE CASCADE,
    FOREIGN KEY (tim_id) REFERENCES Timovi(id) ON DELETE NO ACTION
);
GO

-- 6. Utakmice_Igraci
CREATE TABLE Utakmice_Igraci (
    id INT IDENTITY(1,1) PRIMARY KEY,
    starter BIT,
    igrac_id INT NOT NULL,
    utakmica_id INT NOT NULL,
    cetvrtina INT CHECK (cetvrtina BETWEEN 1 AND 4),
    ofanzivni_skokovi INT DEFAULT 0 CHECK (ofanzivni_skokovi >= 0),
    defanzivni_skokovi INT DEFAULT 0 CHECK (defanzivni_skokovi >= 0),
    asistencije INT DEFAULT 0 CHECK (asistencije >= 0),
    izgubljene_lopte INT DEFAULT 0 CHECK (izgubljene_lopte >= 0),
    ukradene_lopte INT DEFAULT 0 CHECK (ukradene_lopte >= 0),
    sutnuto_trojki INT DEFAULT 0 CHECK (sutnuto_trojki >= 0),
    sutnuto_dvojki INT DEFAULT 0 CHECK (sutnuto_dvojki >= 0),
    sutnuto_slobodnih_bacanja INT DEFAULT 0 CHECK (sutnuto_slobodnih_bacanja >= 0),
    pogodjeno_trojki INT DEFAULT 0 CHECK (pogodjeno_trojki >= 0),
    pogodjeno_dvojki INT DEFAULT 0 CHECK (pogodjeno_dvojki >= 0),
    pogodjeno_slobodnih_bacanja INT DEFAULT 0 CHECK (pogodjeno_slobodnih_bacanja >= 0),
    vreme_na_terenu INT CHECK (vreme_na_terenu BETWEEN 0 AND 600), -- sekunde, max 10 min
    faulovi INT DEFAULT 0 CHECK (faulovi >= 0),
    CONSTRAINT UQ_UtakmicaIgracCetvrtina UNIQUE (utakmica_id, igrac_id, cetvrtina),
    FOREIGN KEY (igrac_id) REFERENCES Igraci(id) ON DELETE NO ACTION,
    FOREIGN KEY (utakmica_id) REFERENCES Utakmice(id) ON DELETE CASCADE
);
GO

CREATE TRIGGER TRG_UtakmiceIgraci_VremeNaTeren
ON Utakmice_Igraci
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Proveri da zbir vremena po timu u svakoj ?etvrtini bude TA?NO 3000 sekundi
    IF EXISTS (
        SELECT 1
        FROM Utakmice_Igraci ui
        JOIN Igraci ig ON ig.id = ui.igrac_id
        JOIN inserted i 
            ON i.utakmica_id = ui.utakmica_id 
           AND i.cetvrtina = ui.cetvrtina
        GROUP BY ui.utakmica_id, ui.cetvrtina, ig.tim_id
        HAVING SUM(ui.vreme_na_terenu) <> 3000  -- mora biti ta?no 50 minuta
    )
    BEGIN
        RAISERROR (
            N'Zbir vremena za jedan tim u jednoj ?etvrtini mora biti ta?no 50 minuta (3000 sekundi).', 
            16, 1
        );
        ROLLBACK TRANSACTION;
        RETURN;
    END
END;
GO


-------------------------------------------------------------------------------------------
--Partizan 88 75 Crvena Zvezda
-------------------------------------------------------------------------------------------
/* ============================
   PARTIZAN (88)
   ============================ */

INSERT INTO Utakmice (hala_id, datum_vreme, runda, sezona_id)
VALUES (1, '2025-10-10 19:00:00', 1, 1);
GO

-- Doma?in: Partizan (pobednik = 1)
INSERT INTO Utakmice_Timovi (utakmica_id, tim_id, pobednik, domacin)
VALUES (1, 15, 1, 1);

-- Gost: Crvena Zvezda (pobednik = 0)
INSERT INTO Utakmice_Timovi (utakmica_id, tim_id, pobednik, domacin)
VALUES (1, 5, 0, 0);
GO

-- Domacin: 


-- Q1
INSERT INTO Utakmice_Igraci
(starter,igrac_id,utakmica_id,cetvrtina,ofanzivni_skokovi,defanzivni_skokovi,asistencije,izgubljene_lopte,ukradene_lopte,
 sutnuto_trojki,sutnuto_dvojki,sutnuto_slobodnih_bacanja,
 pogodjeno_trojki,pogodjeno_dvojki,pogodjeno_slobodnih_bacanja,
 vreme_na_terenu,faulovi)
VALUES
(1,7,1,1,0,2,3,1,1,2,3,2,1,2,0,600,1),
(1,2,1,1,0,1,2,1,0,5,2,0,2,1,0,600,1),
(1,1,1,1,0,1,1,0,0,4,2,0,2,0,0,600,0),
(1,5,1,1,1,2,1,1,0,1,3,0,0,1,0,600,1),
(1,6,1,1,2,2,0,0,0,0,4,2,0,2,2,600,1);

-- Q2
INSERT INTO Utakmice_Igraci VALUES
(1,11,1,2,0,2,2,1,0,3,2,2,1,1,1,600,1),
(1,9,1,2,0,1,2,0,0,4,2,0,1,1,0,600,1),
(1,3,1,2,1,2,1,1,1,2,2,2,1,1,0,600,1),
(1,4,1,2,0,1,1,0,0,2,2,0,0,2,0,600,0),
(1,8,1,2,2,2,0,1,0,0,4,2,0,2,1,600,1);

-- Q3
INSERT INTO Utakmice_Igraci VALUES
(1,7,1,3,0,2,4,1,0,3,2,0,1,1,0,600,1),
(1,12,1,3,0,1,2,1,0,5,2,2,2,1,0,600,1),
(1,16,1,3,0,1,1,0,1,3,2,2,1,1,1,600,0),
(1,5,1,3,1,2,1,1,0,2,3,0,0,2,0,600,1),
(1,6,1,3,2,2,0,0,0,0,4,2,0,2,2,600,1);

-- Q4
INSERT INTO Utakmice_Igraci VALUES
(1,11,1,4,0,2,2,1,0,4,2,2,2,1,1,600,1),
(1,9,1,4,0,1,2,0,0,4,2,0,2,1,0,600,1),
(1,1,1,4,0,1,1,0,0,3,2,0,1,1,0,600,0),
(1,3,1,4,1,2,1,1,0,3,2,0,1,1,0,600,1),
(1,8,1,4,1,2,0,1,0,0,4,2,0,2,1,600,1);

--------------------------------------------------------------
-- CRVENA ZVEZDA (75)
--------------------------------------------------------------


-- Q1
INSERT INTO Utakmice_Igraci VALUES
(1,17,1,1,0,2,3,1,1,2,2,2,1,1,0,600,1),
(1,19,1,1,0,1,2,0,0,4,1,0,2,0,0,600,1),
(1,29,1,1,1,2,1,1,0,2,2,2,0,2,2,600,1),
(1,30,1,1,1,3,1,0,0,1,3,2,0,2,1,600,1),
(1,36,1,1,2,3,0,1,0,0,3,2,0,2,1,600,2);

-- Q2
INSERT INTO Utakmice_Igraci VALUES
(1,21,1,2,0,2,3,1,0,4,1,2,1,0,2,600,1),
(1,22,1,2,0,1,2,1,0,5,2,0,2,1,0,600,1),
(1,26,1,2,1,2,1,1,0,2,2,2,0,2,0,600,1),
(1,27,1,2,1,3,1,0,1,1,3,0,0,2,0,600,1),
(1,33,1,2,2,3,0,1,0,0,4,2,0,2,1,600,2);

-- Q3
INSERT INTO Utakmice_Igraci VALUES
(1,17,1,3,0,2,4,1,0,3,2,0,1,1,0,600,1),
(1,19,1,3,0,1,2,1,0,4,1,0,2,0,0,600,1),
(1,28,1,3,1,2,1,1,1,2,2,2,0,2,0,600,1),
(1,31,1,3,1,2,1,1,1,2,2,2,1,1,0,600,1),
(1,36,1,3,2,2,0,1,0,0,4,2,0,2,1,600,1);

-- Q4
INSERT INTO Utakmice_Igraci VALUES
(1,21,1,4,0,2,3,1,0,3,2,0,1,1,0,600,1),
(1,22,1,4,0,1,2,1,0,5,2,0,2,1,0,600,1),
(1,26,1,4,1,2,1,1,0,2,2,2,0,2,1,600,1),
(1,27,1,4,1,3,1,0,1,1,3,0,0,2,0,600,1),
(1,33,1,4,2,3,0,1,0,0,4,2,0,2,1,600,2);
GO

--------------------------------------------------------------
-- UTAKMICA (RUNDA 2)
--------------------------------------------------------------
--------------------------------------------------------------
-- UTAKMICA (RUNDA 2)
--------------------------------------------------------------
INSERT INTO Utakmice (hala_id, datum_vreme, runda, sezona_id)
VALUES (1, '2025-10-17 19:30:00', 2, 1);

--------------------------------------------------------------
-- TIMOVI NA UTAKMICI
--------------------------------------------------------------

-- Doma?in: Crvena Zvezda
INSERT INTO Utakmice_Timovi (utakmica_id, tim_id, pobednik, domacin)
VALUES (2, 5, 0, 1);

-- Gost: Partizan
INSERT INTO Utakmice_Timovi (utakmica_id, tim_id, pobednik, domacin)
VALUES (2, 15, 1, 0);

--------------------------------------------------------------
-- CRVENA ZVEZDA (70) — STATISTIKA
--------------------------------------------------------------
-- ZVEZDA (tim 5)

-- Q1
INSERT INTO Utakmice_Igraci VALUES
(1,18,2,1,1,2,2,1,1,3,2,1,1,1,1,600,1),
(1,19,2,1,1,1,1,1,0,2,2,1,1,1,0,600,1),
(1,20,2,1,0,2,1,0,1,1,3,1,0,2,0,600,1),
(1,21,2,1,1,2,0,0,0,1,2,1,0,1,0,600,1),
(1,22,2,1,1,1,1,1,0,2,3,1,0,1,1,600,1);

-- Q2
INSERT INTO Utakmice_Igraci VALUES
(1,23,2,2,1,2,2,1,0,3,2,1,1,1,1,600,1),
(1,24,2,2,1,1,2,0,0,2,2,1,1,1,0,600,1),
(1,25,2,2,1,2,1,0,1,3,1,1,1,1,1,600,1),
(1,26,2,2,0,2,1,1,1,2,2,1,0,1,0,600,1),
(1,27,2,2,1,1,1,1,0,1,3,1,0,1,0,600,1);

-- Q3
INSERT INTO Utakmice_Igraci VALUES
(1,28,2,3,1,1,2,1,0,2,2,1,1,1,0,600,1),
(1,29,2,3,1,2,1,1,0,3,2,1,1,2,0,600,1),
(1,30,2,3,1,1,1,1,0,1,3,1,0,2,0,600,1),
(1,31,2,3,1,1,1,0,1,2,2,1,0,1,1,600,1),
(1,32,2,3,1,2,1,0,0,2,2,1,0,1,0,600,1);

-- Q4
INSERT INTO Utakmice_Igraci VALUES
(1,33,2,4,1,2,2,1,1,3,2,1,1,1,1,600,1),
(1,34,2,4,0,1,1,0,0,3,1,1,1,1,0,600,1),
(1,35,2,4,1,2,1,1,0,2,2,1,1,1,1,600,1),
(1,36,2,4,1,1,1,0,1,2,2,1,0,1,0,600,1),
(1,17,2,4,0,2,1,1,0,1,3,1,0,1,1,600,1);


--------------------------------------------------------------
-- PARTIZAN (78) — STATISTIKA
--------------------------------------------------------------

-- PARTIZAN (tim 15)

-- Q1
INSERT INTO Utakmice_Igraci VALUES
(1,1,2,1,1,2,3,1,1,2,3,1,1,2,1,600,1),
(1,2,2,1,1,1,1,1,0,3,2,1,1,1,0,600,1),
(1,3,2,1,1,1,2,1,0,1,3,1,0,1,0,600,1),
(1,4,2,1,1,1,1,0,0,2,2,1,0,1,0,600,1),
(1,5,2,1,1,1,1,1,0,1,3,1,0,2,0,600,1);

-- Q2
INSERT INTO Utakmice_Igraci VALUES
(1,6,2,2,1,2,2,1,0,3,2,1,1,1,1,600,1),
(1,7,2,2,1,1,1,1,0,2,2,1,1,1,0,600,1),
(1,8,2,2,1,2,1,0,0,3,1,1,0,1,1,600,1),
(1,9,2,2,1,1,2,0,0,3,2,1,1,1,0,600,1),
(1,10,2,2,1,2,1,1,0,2,2,1,1,1,0,600,1);

-- Q3
INSERT INTO Utakmice_Igraci VALUES
(1,11,2,3,1,2,2,1,0,3,2,1,2,1,1,600,1),
(1,12,2,3,0,1,2,1,0,3,2,1,1,1,1,600,1),
(1,13,2,3,0,1,1,0,0,3,2,1,1,1,0,600,1),
(1,14,2,3,1,1,1,1,0,2,2,1,1,1,0,600,1),
(1,10,2,3,1,2,1,0,1,3,1,1,1,1,1,600,1);

-- Q4
INSERT INTO Utakmice_Igraci VALUES
(1,16,2,4,1,2,2,1,0,3,2,1,1,1,1,600,1),
(1,10,2,4,1,1,1,1,0,2,2,1,0,1,1,600,1),
(1,3,2,4,1,1,1,1,0,2,2,1,0,1,0,600,1),
(1,5,2,4,1,2,1,1,0,3,1,1,1,1,0,600,1),
(1,7,2,4,1,1,1,0,0,3,2,1,1,1,1,600,1);
GO


-------------------------------------------------------------------------------------------
-- Rezultat
----------------------------------------------------------
-- VIEW 1: Prikaz rezultata App
----------------------------------------------------------

CREATE OR ALTER VIEW vw_UtakmicaSlider AS
SELECT 
    u.id AS UtakmicaId,

    
    dom.id  AS DomacinId,
    gost.id AS GostId,

    -- Nazivi
    dom.naziv  AS Domacin,
    gost.naziv AS Gost,

    -- Skraćenice
    dom.skracenica  AS DomacinSkracenica,
    gost.skracenica AS GostSkracenica,

    -- Logoi
    dom.logo_url  AS DomacinLogo,
    gost.logo_url AS GostLogo,

    -- Poeni domaćina
    COALESCE(SUM(
        CASE 
            WHEN i.tim_id = dom.id THEN
                (ui.pogodjeno_trojki * 3 +
                 ui.pogodjeno_dvojki * 2 +
                 ui.pogodjeno_slobodnih_bacanja)
        END
    ), 0) AS PoeniDomacin,

    -- Poeni gosta
    COALESCE(SUM(
        CASE 
            WHEN i.tim_id = gost.id THEN
                (ui.pogodjeno_trojki * 3 +
                 ui.pogodjeno_dvojki * 2 +
                 ui.pogodjeno_slobodnih_bacanja)
        END
    ), 0) AS PoeniGost,

    u.datum_vreme AS Datum,
    u.runda       AS Runda

FROM Utakmice u
JOIN Utakmice_Timovi ut_dom  
    ON ut_dom.utakmica_id = u.id AND ut_dom.domacin = 1
JOIN Utakmice_Timovi ut_gost 
    ON ut_gost.utakmica_id = u.id AND ut_gost.domacin = 0

JOIN Timovi dom  ON ut_dom.tim_id  = dom.id
JOIN Timovi gost ON ut_gost.tim_id = gost.id

LEFT JOIN Utakmice_Igraci ui ON ui.utakmica_id = u.id
LEFT JOIN Igraci i           ON i.id = ui.igrac_id

GROUP BY
    u.id,
    dom.id, gost.id,
    dom.naziv, gost.naziv,
    dom.skracenica, gost.skracenica,
    dom.logo_url, gost.logo_url,
    u.datum_vreme, u.runda;
GO



----------------------------------------------------------
-- VIEW 1: Rezultat po timovima
----------------------------------------------------------
CREATE VIEW vw_RezultatPoTimovima AS
SELECT 
    t.naziv AS Tim,
    ui.utakmica_id,
    SUM(
        (ui.pogodjeno_trojki * 3) +
        (ui.pogodjeno_dvojki * 2) +
        (ui.pogodjeno_slobodnih_bacanja)
    ) AS Ukupno_Poena
FROM Utakmice_Igraci ui
JOIN Igraci i ON ui.igrac_id = i.id
JOIN Timovi t ON i.tim_id = t.id
GROUP BY t.naziv, ui.utakmica_id;
GO

use HoopLeague

select * from vw_StatistikaIgraca

----------------------------------------------------------
-- VIEW 2: Statistika igra?a po utakmici
----------------------------------------------------------
CREATE OR ALTER VIEW vw_StatistikaIgraca AS
SELECT
    i.id AS IgracId,
    i.ime AS Ime,
    i.prezime AS Prezime,

    t.id AS TimId,
    t.naziv AS Tim,
    t.logo_url AS TimLogo,
    t.skracenica AS TimSkr,

    u.sezona_id AS SezonaId,

    COUNT(DISTINCT ui.utakmica_id) AS Ut,

    -- ako ti je vreme_na_terenu INT minut, ovo je prosek minuta po utakmici
    CAST(AVG(CAST(ui.vreme_na_terenu AS decimal(10,2))) AS decimal(10,2)) AS Min,

    -- PTS
    CAST(AVG(CAST(
        (ui.pogodjeno_dvojki * 2) +
        (ui.pogodjeno_dvojki * 3) +
        (ui.pogodjeno_slobodnih_bacanja)
    AS decimal(10,2))) AS decimal(10,2)) AS Pts,

    -- REB
    CAST(AVG(CAST((ui.ofanzivni_skokovi + ui.defanzivni_skokovi) AS decimal(10,2))) AS decimal(10,2)) AS Reb,

    -- AST
    CAST(AVG(CAST(ui.asistencije AS decimal(10,2))) AS decimal(10,2)) AS Ast,

    -- PIR (ako nemaš PIR u bazi, možeš ga kasnije dodati; za sad 0)
    CAST(0 AS decimal(10,2)) AS Pir

FROM Utakmice_igraci ui
JOIN Utakmice u ON u.id = ui.utakmica_id
JOIN Igraci i ON i.id = ui.igrac_id
LEFT JOIN Timovi t ON t.id = i.tim_id
GROUP BY
    i.id, i.ime, i.prezime,
    t.id, t.naziv, t.logo_url, t.skracenica,
    u.sezona_id;
GO



----------------------------------------------------------
-- VIEW 3: Timska statistika
----------------------------------------------------------
CREATE VIEW vw_TimskaStatistika AS
SELECT 
    t.naziv AS Tim,
    ui.utakmica_id,

    SUM(ui.pogodjeno_trojki * 3 + ui.pogodjeno_dvojki * 2 + ui.pogodjeno_slobodnih_bacanja) AS Poeni,
    SUM(ui.ofanzivni_skokovi + ui.defanzivni_skokovi) AS Skokovi,
    SUM(ui.ofanzivni_skokovi) AS Ofanzivni,
    SUM(ui.defanzivni_skokovi) AS Defanzivni,
    SUM(ui.asistencije) AS Asistencije,
    SUM(ui.izgubljene_lopte) AS Izgubljene,
    SUM(ui.ukradene_lopte) AS Ukradene,
    NULL AS Blokade,
    SUM(ui.faulovi) AS Faulovi,

    CAST(SUM(ui.sutnuto_trojki) AS VARCHAR(5)) + '/' + CAST(SUM(ui.pogodjeno_trojki) AS VARCHAR(5)) AS Trojke,
    CAST(SUM(ui.sutnuto_dvojki) AS VARCHAR(5)) + '/' + CAST(SUM(ui.pogodjeno_dvojki) AS VARCHAR(5)) AS Dvojke,
    CAST(SUM(ui.sutnuto_slobodnih_bacanja) AS VARCHAR(5)) + '/' + CAST(SUM(ui.pogodjeno_slobodnih_bacanja) AS VARCHAR(5)) AS Slobodna_bacanja

FROM Utakmice_Igraci ui
JOIN Igraci i ON ui.igrac_id = i.id
JOIN Timovi t ON i.tim_id = t.id
GROUP BY t.naziv, ui.utakmica_id;
GO


----------------------------------------------------------
-- VIEW 4: Info o svim odigranim utakmicama
----------------------------------------------------------
CREATE VIEW vw_InfoOUtakmicama AS
SELECT 
    dom.naziv AS Domacin,
    SUM(CASE WHEN i.tim_id = dom.id THEN 
        (ui.pogodjeno_trojki * 3 + ui.pogodjeno_dvojki * 2 + ui.pogodjeno_slobodnih_bacanja)
        ELSE 0 END) AS Poeni_domacin,

    SUM(CASE WHEN i.tim_id = gost.id THEN 
        (ui.pogodjeno_trojki * 3 + ui.pogodjeno_dvojki * 2 + ui.pogodjeno_slobodnih_bacanja)
        ELSE 0 END) AS Poeni_gost,

    gost.naziv AS Gost,
    CONVERT(varchar(16), u.datum_vreme, 120) AS Datum,
    u.runda AS Kolo,
    h.naziv AS Hala,
    sez.naziv AS Sezona

FROM Utakmice u
JOIN Hale h ON u.hala_id = h.id
JOIN Sezone sez ON u.sezona_id = sez.id
JOIN Utakmice_Timovi ut_dom ON ut_dom.utakmica_id = u.id AND ut_dom.domacin = 1
JOIN Utakmice_Timovi ut_gost ON ut_gost.utakmica_id = u.id AND ut_gost.domacin = 0
JOIN Timovi dom ON ut_dom.tim_id = dom.id
JOIN Timovi gost ON ut_gost.tim_id = gost.id
JOIN Igraci i ON i.tim_id IN (dom.id, gost.id)
JOIN Utakmice_Igraci ui ON ui.igrac_id = i.id AND ui.utakmica_id = u.id
GROUP BY dom.naziv, gost.naziv, u.datum_vreme, u.runda, h.naziv, sez.naziv;
GO


-- Tabela


CREATE OR ALTER VIEW vw_TabelaPoretka AS
WITH Poeni AS (
    SELECT 
        u.id AS UtakmicaId,
        t.id AS TimId,
        SUM(ui.pogodjeno_trojki * 3 +
            ui.pogodjeno_dvojki * 2 +
            ui.pogodjeno_slobodnih_bacanja) AS Poeni
    FROM Utakmice u
    JOIN Utakmice_Igraci ui ON ui.utakmica_id = u.id
    JOIN Igraci i ON i.id = ui.igrac_id
    JOIN Timovi t ON t.id = i.tim_id
    GROUP BY u.id, t.id
),

-- PRODUŽECI – svaka ?etvrtina >= 5 zna?i da je bilo OT
OT AS (
    SELECT DISTINCT utakmica_id
    FROM Utakmice_Igraci
    WHERE cetvrtina >= 5
),

Rezultati AS (
    SELECT 
        u.id AS UtakmicaId,
        dom.id AS DomacinId,
        gost.id AS GostId,

        COALESCE(pdom.Poeni, 0) AS PoeniDomacin,
        COALESCE(pgost.Poeni, 0) AS PoeniGost,

        CASE WHEN ot.utakmica_id IS NOT NULL THEN 1 ELSE 0 END AS ImaOT
    FROM Utakmice u
    JOIN Utakmice_Timovi utd ON utd.utakmica_id = u.id AND utd.domacin = 1
    JOIN Utakmice_Timovi utg ON utg.utakmica_id = u.id AND utg.domacin = 0
    JOIN Timovi dom ON dom.id = utd.tim_id
    JOIN Timovi gost ON gost.id = utg.tim_id
    LEFT JOIN Poeni pdom ON pdom.UtakmicaId = u.id AND pdom.TimId = dom.id
    LEFT JOIN Poeni pgost ON pgost.UtakmicaId = u.id AND pgost.TimId = gost.id
    LEFT JOIN OT ot ON ot.utakmica_id = u.id
),

Stat AS (
    SELECT 
        t.id AS TimId,
        t.naziv AS Naziv,
        t.logo_url AS Logo,

        -- poeni dati / primljeni
        COALESCE(SUM(CASE WHEN t.id = r.DomacinId THEN r.PoeniDomacin 
                          ELSE r.PoeniGost END), 0) AS PoeniDati,

        COALESCE(SUM(CASE WHEN t.id = r.DomacinId THEN r.PoeniGost 
                          ELSE r.PoeniDomacin END), 0) AS PoeniPrimljeni,

        -- pobede
        COALESCE(SUM(CASE 
            WHEN (r.PoeniDomacin <> 0 OR r.PoeniGost <> 0) AND
                 ((t.id = r.DomacinId AND r.PoeniDomacin > r.PoeniGost) OR
                  (t.id = r.GostId    AND r.PoeniGost > r.PoeniDomacin))
        THEN 1 END), 0) AS Pobede,

        -- porazi
        COALESCE(SUM(CASE 
            WHEN (r.PoeniDomacin <> 0 OR r.PoeniGost <> 0) AND
                 ((t.id = r.DomacinId AND r.PoeniDomacin < r.PoeniGost) OR
                  (t.id = r.GostId    AND r.PoeniGost < r.PoeniDomacin))
        THEN 1 END), 0) AS Porazi,

        -- ku?i
        CONCAT(
            COALESCE(SUM(CASE 
                WHEN (r.PoeniDomacin <> 0 OR r.PoeniGost <> 0) AND
                     t.id = r.DomacinId AND r.PoeniDomacin > r.PoeniGost 
            THEN 1 END), 0),
            '-',
            COALESCE(SUM(CASE 
                WHEN (r.PoeniDomacin <> 0 OR r.PoeniGost <> 0) AND
                     t.id = r.DomacinId AND r.PoeniDomacin < r.PoeniGost 
            THEN 1 END), 0)
        ) AS BilansKuci,

        -- u gostima
        CONCAT(
            COALESCE(SUM(CASE 
                WHEN (r.PoeniDomacin <> 0 OR r.PoeniGost <> 0) AND
                    t.id = r.GostId AND r.PoeniGost > r.PoeniDomacin 
            THEN 1 END), 0),
            '-',
            COALESCE(SUM(CASE 
                WHEN (r.PoeniDomacin <> 0 OR r.PoeniGost <> 0) AND
                    t.id = r.GostId AND r.PoeniGost < r.PoeniDomacin 
            THEN 1 END), 0)
        ) AS BilansGosti,

        -- produžeci
        CONCAT(
            COALESCE(SUM(CASE 
                WHEN r.ImaOT = 1 AND (r.PoeniDomacin <> 0 OR r.PoeniGost <> 0) AND
                     ((t.id = r.DomacinId AND r.PoeniDomacin > r.PoeniGost) OR
                      (t.id = r.GostId    AND r.PoeniGost > r.PoeniDomacin))
            THEN 1 END), 0),
            '-',
            COALESCE(SUM(CASE 
                WHEN r.ImaOT = 1 AND (r.PoeniDomacin <> 0 OR r.PoeniGost <> 0) AND
                     ((t.id = r.DomacinId AND r.PoeniDomacin < r.PoeniGost) OR
                      (t.id = r.GostId    AND r.PoeniGost < r.PoeniDomacin))
            THEN 1 END), 0)
        ) AS BilansOT

    FROM Timovi t
    LEFT JOIN Rezultati r ON r.DomacinId = t.id OR r.GostId = t.id
    GROUP BY t.id, t.naziv, t.logo_url
)

SELECT 
    TimId,
    Logo,
    Naziv,
    Pobede,
    Porazi,
    (PoeniDati - PoeniPrimljeni) AS KosRazlika,
    PoeniDati,
    PoeniPrimljeni,
    BilansKuci,
    BilansGosti,
    BilansOT
FROM Stat;
GO


CREATE OR ALTER VIEW vw_Igraci AS
SELECT 
    i.id AS IgracId,
    i.ime AS Ime,
    i.prezime AS Prezime,
    t.id AS TimId,
    t.naziv AS Tim,
    t.logo_url AS TimLogo,
    d.NAME AS Drzava,

    CAST(i.visina AS INT) AS Visina,

    i.pozicija AS Pozicija,
    i.broj_na_dresu AS BrojDresa
FROM Igraci i
LEFT JOIN Timovi t ON i.tim_id = t.id
LEFT JOIN Countries d ON i.drzava_id = d.id;
GO

CREATE OR ALTER VIEW vw_Timovi AS
SELECT 
    t.id as Id,
    t.naziv as Naziv,
    t.logo_url as LogoUrl,
    t.grad as Grad,
    t.broj_titula as BrojTitula,
    t.boja as Boja,
    t.datum_osnivanja as DatumOsnivanja,
    d.NAME AS Drzava
FROM Timovi t
LEFT JOIN Countries d ON t.drzava_id = d.id;
GO


CREATE OR ALTER VIEW vw_TimTreneri AS
SELECT
    t.id AS TimId,
    tr.id AS TrenerId,
    tr.ime AS Ime,
    tr.prezime AS Prezime,
    tr.uloga AS Uloga
FROM Treneri tr
JOIN Timovi t ON t.id = tr.tim_id;
GO



select * from vw_IgraciProsek

CREATE OR ALTER VIEW vw_IgraciProsek AS
WITH per_game AS
(
    SELECT
        ui.igrac_id AS IgracId,
        i.ime + ' ' + i.prezime AS Igrac,
        t.id AS TimId,
        t.naziv AS Tim,
        ui.utakmica_id AS UtakmicaId,

        -- vreme (pretpostavka: sekunde ili nešto što može u INT)
        CAST(SUM(CAST(ui.vreme_na_terenu AS int)) AS int) AS Sekunde,

        -- šut - totals po utakmici
        SUM(CAST(ui.pogodjeno_dvojki AS int)) AS M2,
        SUM(CAST(ui.sutnuto_dvojki  AS int)) AS A2,

        SUM(CAST(ui.pogodjeno_trojki AS int)) AS M3,
        SUM(CAST(ui.sutnuto_trojki  AS int)) AS A3,

        SUM(CAST(ui.pogodjeno_slobodnih_bacanja AS int)) AS FTM,
        SUM(CAST(ui.sutnuto_slobodnih_bacanja  AS int)) AS FTA,

        -- poeni / skokovi / asistencije
        SUM(CAST(ui.pogodjeno_trojki * 3 + ui.pogodjeno_dvojki * 2 + ui.pogodjeno_slobodnih_bacanja AS int)) AS Poeni,
        SUM(CAST(ui.ofanzivni_skokovi AS int)) AS ORB,
        SUM(CAST(ui.defanzivni_skokovi AS int)) AS DRB,
        SUM(CAST(ui.asistencije AS int)) AS AST,

        -- ostalo
        SUM(CAST(ui.ukradene_lopte AS int)) AS STL,
        SUM(CAST(ui.izgubljene_lopte AS int)) AS [TO],
        SUM(CAST(ui.faulovi AS int)) AS FC

        -- ako imaš ove kolone, odkomentariši i prilagodi nazive:
        -- ,SUM(CAST(ISNULL(ui.blokade,0) AS int)) AS BLK
        -- ,SUM(CAST(ISNULL(ui.blokirane,0) AS int)) AS BLKA
        -- ,SUM(CAST(ISNULL(ui.faulovi_nad,0) AS int)) AS FD
    FROM Utakmice_Igraci ui
    JOIN Igraci i ON i.id = ui.igrac_id
    JOIN Timovi t ON t.id = i.tim_id
    GROUP BY
        ui.igrac_id, i.ime, i.prezime, t.id, t.naziv, ui.utakmica_id
),
played AS
(
    SELECT *
    FROM per_game
    WHERE Poeni > 0
)
SELECT
    IgracId,
    Igrac,
    TimId,
    Tim,
    COUNT(*) AS OdigraneUtakmice,

    -- Min prosečno (MM:SS)
    CONCAT(
        CAST(FLOOR(AVG(Sekunde * 1.0) / 60.0) AS int),
        ':',
        RIGHT('0' + CAST(CAST(ROUND(AVG(Sekunde * 1.0),0) AS int) % 60 AS varchar(2)), 2)
    ) AS Min,

    -- PTS / REB / AST
    CAST(AVG(Poeni * 1.0) AS decimal(10,1)) AS ProsekPoena,
    CAST(AVG((ORB+DRB) * 1.0) AS decimal(10,1)) AS ProsekSkokova,
    CAST(AVG(AST * 1.0) AS decimal(10,1)) AS ProsekAsistencija,

    -- Šut po utakmici (make/att)
    CAST(AVG(M2 * 1.0) AS decimal(10,1)) AS [2PM],
    CAST(AVG(A2 * 1.0) AS decimal(10,1)) AS [2PA],
    CAST(CASE WHEN SUM(A2)=0 THEN 0 ELSE (SUM(M2)*100.0)/SUM(A2) END AS decimal(10,1)) AS [2P%],

    CAST(AVG(M3 * 1.0) AS decimal(10,1)) AS [3PM],
    CAST(AVG(A3 * 1.0) AS decimal(10,1)) AS [3PA],
    CAST(CASE WHEN SUM(A3)=0 THEN 0 ELSE (SUM(M3)*100.0)/SUM(A3) END AS decimal(10,1)) AS [3P%],

    CAST(AVG(FTM * 1.0) AS decimal(10,1)) AS [FTM],
    CAST(AVG(FTA * 1.0) AS decimal(10,1)) AS [FTA],
    CAST(CASE WHEN SUM(FTA)=0 THEN 0 ELSE (SUM(FTM)*100.0)/SUM(FTA) END AS decimal(10,1)) AS [FT%],

    -- Skokovi detaljno
    CAST(AVG(ORB * 1.0) AS decimal(10,1)) AS [OR],
    CAST(AVG(DRB * 1.0) AS decimal(10,1)) AS [DR],
    CAST(AVG((ORB+DRB) * 1.0) AS decimal(10,1)) AS [TR],

    -- Ostalo
    CAST(AVG(STL * 1.0) AS decimal(10,1)) AS [STL],
    CAST(AVG([TO] * 1.0) AS decimal(10,1)) AS [TO],
    CAST(AVG(FC * 1.0) AS decimal(10,1)) AS [FC],

    -- PIR (per-game) - isto kao ranije, ali na nivou utakmice
    CAST(AVG(
        (
          Poeni
          + (ORB + DRB)
          + AST
          + STL
          -- + BLK + FD  -- ako dodaješ te kolone
          - ((A2 - M2) + (A3 - M3))
          - (FTA - FTM)
          - [TO]
          - FC
        ) * 1.0
    ) AS decimal(10,1)) AS [PIR]

FROM played
GROUP BY IgracId, Igrac, TimId, Tim;
GO

select * from vw_TimoviProsek

CREATE OR ALTER VIEW vw_TimoviProsek AS
WITH per_game AS
(
    SELECT
        t.id AS TimId,
        t.naziv AS Tim,
        ui.utakmica_id AS UtakmicaId,

        CAST(SUM(CAST(ui.vreme_na_terenu AS int)) AS int) AS Sekunde,

        SUM(CAST(ui.pogodjeno_dvojki AS int)) AS M2,
        SUM(CAST(ui.sutnuto_dvojki  AS int)) AS A2,

        SUM(CAST(ui.pogodjeno_trojki AS int)) AS M3,
        SUM(CAST(ui.sutnuto_trojki  AS int)) AS A3,

        SUM(CAST(ui.pogodjeno_slobodnih_bacanja AS int)) AS FTM,
        SUM(CAST(ui.sutnuto_slobodnih_bacanja  AS int)) AS FTA,

        SUM(CAST(ui.pogodjeno_trojki * 3 + ui.pogodjeno_dvojki * 2 + ui.pogodjeno_slobodnih_bacanja AS int)) AS Poeni,
        SUM(CAST(ui.ofanzivni_skokovi AS int)) AS ORB,
        SUM(CAST(ui.defanzivni_skokovi AS int)) AS DRB,
        SUM(CAST(ui.asistencije AS int)) AS AST,

        SUM(CAST(ui.ukradene_lopte AS int)) AS STL,
        SUM(CAST(ui.izgubljene_lopte AS int)) AS [TO],
        SUM(CAST(ui.faulovi AS int)) AS FC
    FROM Utakmice_Igraci ui
    JOIN Igraci i ON i.id = ui.igrac_id
    JOIN Timovi t ON t.id = i.tim_id
    GROUP BY
        t.id, t.naziv, ui.utakmica_id
),
played AS
(
    SELECT *
    FROM per_game
    WHERE Poeni > 0
),
agg AS
(
    SELECT
        TimId,
        Tim,
        COUNT(*) AS OdigraneUtakmice,

        AVG(Sekunde * 1.0) AS AvgSekunde,

        AVG(Poeni * 1.0) AS ProsekPoena,
        AVG((ORB+DRB) * 1.0) AS ProsekSkokova,
        AVG(AST * 1.0) AS ProsekAsistencija,

        AVG(M2 * 1.0) AS Avg2PM,
        AVG(A2 * 1.0) AS Avg2PA,
        CASE WHEN SUM(A2)=0 THEN 0 ELSE (SUM(M2)*100.0)/SUM(A2) END AS Pct2P,

        AVG(M3 * 1.0) AS Avg3PM,
        AVG(A3 * 1.0) AS Avg3PA,
        CASE WHEN SUM(A3)=0 THEN 0 ELSE (SUM(M3)*100.0)/SUM(A3) END AS Pct3P,

        AVG(FTM * 1.0) AS AvgFTM,
        AVG(FTA * 1.0) AS AvgFTA,
        CASE WHEN SUM(FTA)=0 THEN 0 ELSE (SUM(FTM)*100.0)/SUM(FTA) END AS PctFT,

        AVG(ORB * 1.0) AS AvgOR,
        AVG(DRB * 1.0) AS AvgDR,
        AVG((ORB+DRB) * 1.0) AS AvgTR,

        AVG(STL * 1.0) AS AvgSTL,
        AVG([TO] * 1.0) AS AvgTO,
        AVG(FC * 1.0) AS AvgFC,

        AVG(
            (
              Poeni
              + (ORB + DRB)
              + AST
              + STL
              - ((A2 - M2) + (A3 - M3))
              - (FTA - FTM)
              - [TO]
              - FC
            ) * 1.0
        ) AS AvgPIR
    FROM played
    GROUP BY TimId, Tim
)
SELECT
    t.id AS TimId,
    t.naziv AS Tim,

    COALESCE(a.OdigraneUtakmice, 0) AS OdigraneUtakmice,

    -- Min (MM:SS)
    CASE
        WHEN a.OdigraneUtakmice IS NULL THEN '0:00'
        ELSE CONCAT(
            CAST(FLOOR(a.AvgSekunde / 60.0) AS int),
            ':',
            RIGHT('0' + CAST(CAST(ROUND(a.AvgSekunde,0) AS int) % 60 AS varchar(2)), 2)
        )
    END AS Min,

    CAST(COALESCE(a.ProsekPoena, 0) AS decimal(10,1)) AS ProsekPoena,
    CAST(COALESCE(a.ProsekSkokova, 0) AS decimal(10,1)) AS ProsekSkokova,
    CAST(COALESCE(a.ProsekAsistencija, 0) AS decimal(10,1)) AS ProsekAsistencija,

    CAST(COALESCE(a.Avg2PM, 0) AS decimal(10,1)) AS [2PM],
    CAST(COALESCE(a.Avg2PA, 0) AS decimal(10,1)) AS [2PA],
    CAST(COALESCE(a.Pct2P, 0) AS decimal(10,1)) AS [2P%],

    CAST(COALESCE(a.Avg3PM, 0) AS decimal(10,1)) AS [3PM],
    CAST(COALESCE(a.Avg3PA, 0) AS decimal(10,1)) AS [3PA],
    CAST(COALESCE(a.Pct3P, 0) AS decimal(10,1)) AS [3P%],

    CAST(COALESCE(a.AvgFTM, 0) AS decimal(10,1)) AS [FTM],
    CAST(COALESCE(a.AvgFTA, 0) AS decimal(10,1)) AS [FTA],
    CAST(COALESCE(a.PctFT, 0) AS decimal(10,1)) AS [FT%],

    CAST(COALESCE(a.AvgOR, 0) AS decimal(10,1)) AS [OR],
    CAST(COALESCE(a.AvgDR, 0) AS decimal(10,1)) AS [DR],
    CAST(COALESCE(a.AvgTR, 0) AS decimal(10,1)) AS [TR],

    CAST(COALESCE(a.AvgSTL, 0) AS decimal(10,1)) AS [STL],
    CAST(COALESCE(a.AvgTO, 0) AS decimal(10,1)) AS [TO],
    CAST(COALESCE(a.AvgFC, 0) AS decimal(10,1)) AS [FC],

    CAST(COALESCE(a.AvgPIR, 0) AS decimal(10,1)) AS [PIR]
FROM Timovi t
LEFT JOIN agg a ON a.TimId = t.id;
GO


-------------------------------------------------------------------------------------------


-- 7. Tim_Hala
CREATE TABLE Tim_Hala (
    id_tim INT NOT NULL,
    id_hala INT NOT NULL,
    PRIMARY KEY (id_tim, id_hala),
    FOREIGN KEY (id_tim) REFERENCES Timovi(id) ON DELETE NO ACTION, 
    FOREIGN KEY (id_hala) REFERENCES Hale(id) ON DELETE CASCADE
);
GO

select * from Hale;
select * from Timovi;

INSERT INTO Tim_Hala(id_tim,id_hala) VALUES (15,1);
INSERT INTO Tim_Hala(id_tim,id_hala) VALUES (5,1);
INSERT INTO Tim_Hala(id_tim,id_hala) VALUES (15,2);
INSERT INTO Tim_Hala(id_tim,id_hala) VALUES (5,2);

select * from timovi

/*-- 9. Sponzori
CREATE TABLE Sponzori (
    id INT IDENTITY(1,1) PRIMARY KEY,
    naziv NVARCHAR(100) NOT NULL UNIQUE CHECK (LEN(naziv) >= 2),
    logo_url NVARCHAR(255),
    tip NVARCHAR(50)
);
GO

-- 10. Sponzor_Tim
CREATE TABLE Sponzor_Tim (
    id_sponzor INT NOT NULL,
    id_tim INT NOT NULL,
    PRIMARY KEY (id_sponzor, id_tim),
    FOREIGN KEY (id_sponzor) REFERENCES Sponzori(id) ON DELETE CASCADE,
    FOREIGN KEY (id_tim) REFERENCES Timovi(id) ON DELETE NO ACTION
);
GO*/

-- 8. Vesti
CREATE TABLE Vesti (
    id INT IDENTITY(1,1) PRIMARY KEY,
    naslov NVARCHAR(200) NOT NULL CHECK (LEN(naslov) >= 5),
    tekst NVARCHAR(MAX) NOT NULL,
    datum_i_vreme DATETIME DEFAULT GETDATE(),
    utakmica_id INT NULL,
    slika_url NVARCHAR(255),
    FOREIGN KEY (utakmica_id) REFERENCES Utakmice(id) ON DELETE SET NULL
);
GO

INSERT INTO Vesti (naslov, tekst, utakmica_id, slika_url)
VALUES
-- 1
(N'U velikom derbiju Efes savladao Fenerbah?e u produžetku',
 N'Anadolu Efes je slavio protiv Fenerbah?ea u sjajnom me?u koji je odlu?en tek nakon produžetka. Efes je kontrolisao ve?im delom utakmice, ali je Fener u finišu izborio dodatnih 5 minuta. U produžetku, doma?i tim je bio smireniji i stigao do važne pobede u Evroligi.',
 1,
 N'image_null.png'),

-- 2
(N'Crvena zvezda dominirala i upisala važnu pobedu u Beogradu',
 N'Crvena zvezda Meridianbet je pred punom Arenom odigrala jedan od najboljih me?eva ove sezone i potpuno kontrolisala duel od po?etka do kraja. Agresivna odbrana i raspoloženi šuteri doneli su crveno-belima sigurnu pobedu protiv favorizovanog rivala.',
 5,
 N'image_null.png'),

-- 3
(N'Barselona pokazala šampionski karakter u gostovanju Panatinaikosu',
 N'Barselona je u Atini odigrala zrelo i timski, preokrenuvši me? u poslednjoj ?etvrtini. Panatinaikos je imao dvocifrenu prednost, ali je Barsa odli?nom odbranom i brzim tranzicijama preuzela kontrolu i zabeležila veliki trijumf na teškom gostovanju.',
 6,
 N'image_null.png'),

-- 4
(N'Monako rutinski završio posao pred svojom publikom',
 N'Monako je od samog starta nametnuo tempo protiv rivala koji nije uspeo da prati energiju doma?ina. Mike James je ponovo blistao, a odli?na odbrana Monaka bila je klju? u još jednoj sigurnoj pobedi u seriji.',
 7,
 N'image_null.png'),

-- 5
(N'Zalgiris iznenadio favorit? u Kaunasu',
 N'Zalgiris je priredio jedno od najve?ih iznena?enja kola savladavši mnogo ja?u ekipu po budžetu i rosteru. Litvanski tim je igrao izuzetno borbeno, a doma?a publika je nosila ekipu do velike pobede u napetoj završnici.',
 8,
 N'image_null.png'),

-- 6
(N'Real Madrid ponovo dominantan – španski gigant melje sve pred sobom',
 N'Real Madrid je još jednom potvrdio zašto je jedan od glavnih favorita za osvajanje Evrolige. Uz fenomenalnu timsku igru i minimalan broj grešaka, kraljevski klub je ubedljivo savladao protivnika i nastavio seriju pobeda.',
 9,
 N'image_null.png');


CREATE OR ALTER VIEW vw_Vesti AS
SELECT 
    v.id,
    v.naslov AS Naslov,
    v.tekst AS Tekst,
    LEFT(v.tekst, 150) 
        + CASE WHEN LEN(v.tekst) > 150 THEN '...' ELSE '' END AS KratakTekst,
    v.datum_i_vreme AS Datum,
    v.slika_url AS SlikaUrl,
    v.utakmica_id AS UtakmicaId
FROM Vesti v;
GO




--INSERTI
-- HALE
INSERT INTO Hale (drzava_id, naziv, kapacitet, grad, adresa, url_slika) VALUES
(212, 'Sinan Erdem Dome', 16000, 'Istanbul', 'Ataköy 11. K?s?m, Bak?rköy', NULL),                 -- Efes
(70,  'Salle Gaston Médecin', 4100, 'Monaco', '11 Av. des Castelans', NULL),                      -- Monaco
(70,  'Astroballe', 5500, 'Villeurbanne', '44 Av. Marcel Cerdan', NULL),                          -- ASVEL
(194, 'Buesa Arena', 15504, 'Vitoria-Gasteiz', 'Portal de Zurbano', NULL),                        -- Baskonia
(194, 'Mediolanum Forum', 12331, 'Milan', 'Via Giuseppe di Vittorio', NULL),                      -- EA7 Milano
(77,  'Palau Blaugrana', 7585, 'Barcelona', 'Carrer d''Arístides Maillol', NULL),                 -- Barcelona
(77,  'Audi Dome', 6700, 'Munich', 'Grasweg 74', NULL),                                           -- Bayern
(194, 'Ülker Sports Arena', 13000, 'Istanbul', 'Yenisahra, Ata?ehir', NULL),                      -- Fenerbahçe
(103, 'Menora Mivtachim Arena', 10500, 'Tel Aviv', '51 Yigal Alon St', NULL),                     -- Hapoel Tel Aviv
(103, 'Menora Mivtachim Arena', 10500, 'Tel Aviv', '51 Yigal Alon St', NULL),                     -- Maccabi
(194, 'Peace and Friendship Stadium', 12000, 'Piraeus', 'Faliro Coastal Zone', NULL),             -- Olympiacos
(70,  'OAKA Arena', 19000, 'Athens', '37 Kifisias Ave', NULL),                                    -- Panathinaikos
(194, 'Accor Arena', 15000, 'Paris', '8 Bd de Bercy', NULL),                                      -- Paris Basketball
(194, 'WiZink Center', 17400, 'Madrid', 'Av. Felipe II', NULL),                                  -- Real Madrid
(194, 'Fonteta Arena', 9000, 'Valencia', 'Carrer de Bomber Ramon Duart', NULL),                  -- Valencia
(70,  'Virtus Segafredo Arena', 9000, 'Bologna', 'Via Antonio Nannetti 1', NULL),                 -- Virtus Bologna
(121,'Žalgirio Arena', 15500, 'Kaunas', 'Karaliaus Mindaugo pr. 50', NULL),                       -- Zalgiris
(218,'Coca-Cola Arena', 17000, 'Dubai', 'City Walk, Al Wasl', NULL);                             -- Dubai
-- ---------------------------------------------------------
-- UTAKMICE
SELECT * FROM Hale
select * from Utakmice

delete from Utakmice where id = 4

-- 4) Real Madrid vs Barcelona
INSERT INTO Utakmice (hala_id, datum_vreme, runda, sezona_id)
VALUES (18, '2025-10-11 20:30', 1, 1);

INSERT INTO Utakmice_Timovi (utakmica_id, tim_id, pobednik, domacin)
VALUES
(5, 16, NULL, 1), -- Real doma?in
(5, 7,  NULL, 0); -- Barcelona gost


-- 5) Panathinaikos vs Olympiacos
INSERT INTO Utakmice (hala_id, datum_vreme, runda, sezona_id)
VALUES ( 13, '2025-10-12 21:00', 1, 1);

INSERT INTO Utakmice_Timovi (utakmica_id, tim_id, pobednik, domacin)
VALUES
(6, 13, NULL, 1), -- Pao doma?in
(6, 12, NULL, 0); -- Oly gost


-- 6) Fenerbahce vs Efes
INSERT INTO Utakmice (hala_id, datum_vreme, runda, sezona_id)
VALUES (9, '2025-10-13 19:45', 1, 1);

INSERT INTO Utakmice_Timovi (utakmica_id, tim_id, pobednik, domacin)
VALUES
(7, 9, NULL, 1),  -- Fener doma?in
(7, 1, NULL, 0);  -- Efes gost

select * from Timovi
select * from Hale

INSERT INTO Utakmice (hala_id, datum_vreme, runda, sezona_id)
VALUES (22, '2025-10-13 16:45', 1, 1);

INSERT INTO Utakmice_Timovi (utakmica_id, tim_id, pobednik, domacin)
VALUES
(8, 20, NULL, 1),  -- Dubai
(8, 19, NULL, 0); -- Zalgiris

INSERT INTO Utakmice (hala_id, datum_vreme, runda, sezona_id)
VALUES (22, '2025-10-20 16:45', 2, 1);

INSERT INTO Utakmice_Timovi (utakmica_id, tim_id, pobednik, domacin)
VALUES
(9, 20, NULL, 1),  -- Dubai
(9, 15, NULL, 0); 