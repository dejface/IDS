DROP TABLE Lekaren CASCADE CONSTRAINTS;
DROP TABLE Vykaz CASCADE CONSTRAINTS;
DROP TABLE Nakup CASCADE CONSTRAINTS;
DROP TABLE Liek CASCADE CONSTRAINTS;
DROP TABLE Zdravotna_poistovna CASCADE CONSTRAINTS;
DROP TABLE Sklad CASCADE CONSTRAINTS;

create table LEKAREN
(
    ADRESA_POBOCKY  VARCHAR(50) not null
        constraint LEKAREN_PK
            primary key,
    TELEFONNE_CISLO CHAR(10),
    DATUM_INVENTURY DATE
)
/

create table VYKAZ
(
    ID_VYKAZU         NUMBER not null
        constraint VYKAZ_PK
            primary key,
    DATUM_VYHOTOVENIA DATE
)
/

create table NAKUP
(
    CISLO_POKLADNICNEHO_BLOKU NUMBER not null
        constraint NAKUP_PK
            primary key,
    DATUM_PREDAJA             DATE,
    ZAKUPENY_TOVAR            VARCHAR(30)
)
/

create table LIEK
(
    NAZOV_LIEKU      VARCHAR(50) not null
        constraint LIEK_PK
            primary key,
    CENA             NUMBER(5, 2),
    DENNA_DAVKA      VARCHAR(30),
    UCINNA_LATKA     VARCHAR(30),
    EXPIRACIA        DATE,
    VEDLAJSIE_UCINKY VARCHAR(25)
)
/

create table ZDRAVOTNA_POISTOVNA
(
    ID_POISTOVNE    NUMBER not null
        constraint ZDRAVOTNA_POISTOVNA_PK
            primary key,
    PLATNOST_ZMLUVY DATE
)
/

create table SKLAD
(
    ID_SKLADU                 NUMBER not null
        constraint SKLAD_PK
            primary key,
    MNOZSTVO_TOVARU_NA_SKLADE NUMBER,
    KAPACITA                  NUMBER
)
/
INSERT INTO Lekaren
VALUES('Antona Bernoláka 2135/2, Žilina','0901961271',TO_DATE('01.03.2020', 'dd.mm.yyyy'));
INSERT INTO Lekaren
VALUES('Legionárska 19, Trenčín','0901961504',TO_DATE('10.03.2020', 'dd.mm.yyyy'));
INSERT INTO Lekaren
VALUES('Betliarska 3776/17, Bratislava','0901961312',TO_DATE('08.03.2020', 'dd.mm.yyyy'));

INSERT INTO Vykaz
VALUES('1',TO_DATE('11.03.2020', 'dd.mm.yyyy'));
INSERT INTO Vykaz
VALUES('2',TO_DATE('11.03.2020', 'dd.mm.yyyy'));
INSERT INTO Vykaz
VALUES('3',TO_DATE('12.03.2020', 'dd.mm.yyyy'));

COMMIT;

SELECT * FROM Lekaren;
SELECT * FROM Vykaz



