prompt PL/SQL Developer Export Tables for user SYSTEM@XE
prompt Created by user on יום שלישי 25 יוני 2024
set feedback off
set define off

prompt Creating PARKING_GARAGE...
create table PARKING_GARAGE
(
  max_capacity   INTEGER not null,
  maintenance_id INTEGER not null,
  status         VARCHAR2(20) not null
)
;
alter table PARKING_GARAGE
  add primary key (MAINTENANCE_ID);

prompt Creating AIRCRAFT...
create table AIRCRAFT
(
  prodaction_date DATE not null,
  serialid        INTEGER not null,
  kind            VARCHAR2(20) not null,
  maintenance_id  INTEGER
)
;
alter table AIRCRAFT
  add primary key (SERIALID);
alter table AIRCRAFT
  add foreign key (MAINTENANCE_ID)
  references PARKING_GARAGE (MAINTENANCE_ID);

prompt Creating MISSION...
create table MISSION
(
  mission_date DATE not null,
  status       VARCHAR2(20) not null,
  mission_id   INTEGER not null
)
;
alter table MISSION
  add primary key (MISSION_ID);

prompt Creating SOLIDER...
create table SOLIDER
(
  id          INTEGER not null,
  rank        VARCHAR2(20) not null,
  joined_date DATE not null,
  name        VARCHAR2(20) not null
)
;
alter table SOLIDER
  add primary key (ID);

prompt Creating PILOT...
create table PILOT
(
  type VARCHAR2(20) not null,
  id   INTEGER not null
)
;
alter table PILOT
  add primary key (ID);
alter table PILOT
  add foreign key (ID)
  references SOLIDER (ID);

prompt Creating TECHNICAL_ENGENEER...
create table TECHNICAL_ENGENEER
(
  specialization VARCHAR2(20) not null,
  id             INTEGER not null
)
;
alter table TECHNICAL_ENGENEER
  add primary key (ID);
alter table TECHNICAL_ENGENEER
  add foreign key (ID)
  references SOLIDER (ID);

prompt Truncating TECHNICAL_ENGENEER...
truncate table TECHNICAL_ENGENEER;
prompt Truncating PILOT...
truncate table PILOT;
prompt Truncating SOLIDER...
truncate table SOLIDER;
prompt Truncating MISSION...
truncate table MISSION;
prompt Truncating AIRCRAFT...
truncate table AIRCRAFT;
prompt Truncating PARKING_GARAGE...
truncate table PARKING_GARAGE;
prompt Loading PARKING_GARAGE...
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 96, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 33, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 129, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 118, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 124, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 71, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 30, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 91, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 37, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 94, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 86, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 114, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 73, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 66, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 89, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 69, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 55, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 60, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 47, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 67, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 79, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 59, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 117, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 127, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 38, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 123, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 50, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 99, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 64, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 111, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 52, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 106, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 32, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 56, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 85, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 100, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 125, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 122, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 45, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 90, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 130, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 113, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 108, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 92, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 104, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 116, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 49, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 74, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 51, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 115, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 62, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 83, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 65, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 44, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 128, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 82, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 58, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 88, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 68, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 57, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 105, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 46, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 41, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 36, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 109, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 120, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 53, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 93, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 103, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 126, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 40, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 35, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 75, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 43, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 80, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 34, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 54, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 72, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 112, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 97, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 39, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 107, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 84, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 95, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 63, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 78, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 121, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 98, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 87, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 31, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 110, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 61, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 102, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (12, 119, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 77, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 42, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (15, 76, 'unavailable');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (13, 101, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (11, 48, 'available');
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (14, 81, 'unavailable');
commit;
prompt 100 records committed...
insert into PARKING_GARAGE (max_capacity, maintenance_id, status)
values (10, 70, 'available');
commit;
prompt 101 records loaded
prompt Loading AIRCRAFT...
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-09-1973', 'dd-mm-yyyy'), 68080, 'helicopter', 78);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-06-1976', 'dd-mm-yyyy'), 72485, 'palne', 56);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-12-1977', 'dd-mm-yyyy'), 53754, 'palne', 62);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('31-07-2005', 'dd-mm-yyyy'), 77616, 'palne', 54);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-02-1988', 'dd-mm-yyyy'), 66991, 'palne', 114);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-08-1995', 'dd-mm-yyyy'), 65903, 'palne', 82);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-11-1980', 'dd-mm-yyyy'), 45846, 'palne', 76);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-05-2005', 'dd-mm-yyyy'), 23365, 'palne', 44);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-01-1997', 'dd-mm-yyyy'), 98542, 'helicopter', 33);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-07-1997', 'dd-mm-yyyy'), 46357, 'helicopter', 66);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-11-2019', 'dd-mm-yyyy'), 70632, 'palne', 33);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-11-2000', 'dd-mm-yyyy'), 85839, 'palne', 58);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-12-1993', 'dd-mm-yyyy'), 69828, 'palne', 124);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-02-2011', 'dd-mm-yyyy'), 52758, 'palne', 125);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-10-1984', 'dd-mm-yyyy'), 18605, 'palne', 75);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-12-1983', 'dd-mm-yyyy'), 17877, 'helicopter', 103);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-05-1979', 'dd-mm-yyyy'), 12358, 'helicopter', 61);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-02-2018', 'dd-mm-yyyy'), 61601, 'helicopter', 48);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-08-1985', 'dd-mm-yyyy'), 26179, 'helicopter', 95);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-01-1975', 'dd-mm-yyyy'), 24774, 'palne', 68);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-04-2005', 'dd-mm-yyyy'), 65109, 'palne', 54);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-02-2016', 'dd-mm-yyyy'), 48563, 'helicopter', 60);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-08-1992', 'dd-mm-yyyy'), 99671, 'palne', 123);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-10-1998', 'dd-mm-yyyy'), 25563, 'palne', 66);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-04-1972', 'dd-mm-yyyy'), 83229, 'helicopter', 84);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-06-1988', 'dd-mm-yyyy'), 55905, 'helicopter', 84);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-04-1984', 'dd-mm-yyyy'), 14959, 'palne', 34);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-02-1994', 'dd-mm-yyyy'), 32560, 'helicopter', 42);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-05-2012', 'dd-mm-yyyy'), 43738, 'palne', 129);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-01-2010', 'dd-mm-yyyy'), 12004, 'palne', 121);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-11-1995', 'dd-mm-yyyy'), 41585, 'palne', 104);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-01-1973', 'dd-mm-yyyy'), 12656, 'helicopter', 39);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-09-2007', 'dd-mm-yyyy'), 27092, 'palne', 46);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-07-1985', 'dd-mm-yyyy'), 41090, 'helicopter', 32);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-04-1997', 'dd-mm-yyyy'), 16646, 'helicopter', 66);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-02-2004', 'dd-mm-yyyy'), 79361, 'palne', 35);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-07-1999', 'dd-mm-yyyy'), 14529, 'palne', 98);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-07-1993', 'dd-mm-yyyy'), 33448, 'palne', 49);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-07-2009', 'dd-mm-yyyy'), 53022, 'helicopter', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-09-1996', 'dd-mm-yyyy'), 87241, 'helicopter', 87);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-04-1972', 'dd-mm-yyyy'), 15845, 'helicopter', 55);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-05-1970', 'dd-mm-yyyy'), 39870, 'palne', 120);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-12-1988', 'dd-mm-yyyy'), 44927, 'helicopter', 85);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-08-1985', 'dd-mm-yyyy'), 26366, 'helicopter', 57);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-11-1987', 'dd-mm-yyyy'), 19397, 'palne', 84);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-01-1995', 'dd-mm-yyyy'), 43872, 'palne', 85);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-10-2011', 'dd-mm-yyyy'), 62357, 'helicopter', 48);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-01-2015', 'dd-mm-yyyy'), 61198, 'palne', 79);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-04-1970', 'dd-mm-yyyy'), 30987, 'helicopter', 124);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-05-1973', 'dd-mm-yyyy'), 89475, 'palne', 33);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-04-2008', 'dd-mm-yyyy'), 34425, 'palne', 43);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-03-1973', 'dd-mm-yyyy'), 36149, 'palne', 71);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-09-1989', 'dd-mm-yyyy'), 23869, 'helicopter', 119);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-02-1972', 'dd-mm-yyyy'), 53422, 'palne', 94);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-04-1997', 'dd-mm-yyyy'), 54910, 'palne', 82);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-11-1976', 'dd-mm-yyyy'), 47799, 'helicopter', 130);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('23-03-1997', 'dd-mm-yyyy'), 66519, 'helicopter', 106);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-11-2003', 'dd-mm-yyyy'), 39632, 'palne', 110);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-06-1970', 'dd-mm-yyyy'), 65598, 'palne', 93);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-04-2005', 'dd-mm-yyyy'), 39342, 'helicopter', 100);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-11-2008', 'dd-mm-yyyy'), 94863, 'palne', 72);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-12-2010', 'dd-mm-yyyy'), 62522, 'palne', 57);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-12-1976', 'dd-mm-yyyy'), 72944, 'helicopter', 62);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-02-1985', 'dd-mm-yyyy'), 17257, 'helicopter', 95);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-02-1990', 'dd-mm-yyyy'), 40051, 'helicopter', 128);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-02-2000', 'dd-mm-yyyy'), 85904, 'palne', 30);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-05-2007', 'dd-mm-yyyy'), 98072, 'palne', 88);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-04-1974', 'dd-mm-yyyy'), 90189, 'palne', 51);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-06-1990', 'dd-mm-yyyy'), 45127, 'helicopter', 104);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-09-1976', 'dd-mm-yyyy'), 61871, 'helicopter', 76);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-04-1978', 'dd-mm-yyyy'), 37889, 'palne', 51);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-09-1996', 'dd-mm-yyyy'), 63399, 'helicopter', 36);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-05-1977', 'dd-mm-yyyy'), 59471, 'helicopter', 95);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-04-1979', 'dd-mm-yyyy'), 58575, 'helicopter', 65);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-12-2016', 'dd-mm-yyyy'), 59526, 'helicopter', 95);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-06-1976', 'dd-mm-yyyy'), 99875, 'palne', 59);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('23-01-1971', 'dd-mm-yyyy'), 55467, 'palne', 44);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-08-2013', 'dd-mm-yyyy'), 32449, 'palne', 46);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-02-1995', 'dd-mm-yyyy'), 17009, 'palne', 55);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-03-1972', 'dd-mm-yyyy'), 48107, 'palne', 75);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-09-1978', 'dd-mm-yyyy'), 67390, 'palne', 112);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-06-1987', 'dd-mm-yyyy'), 44874, 'helicopter', 58);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-10-2013', 'dd-mm-yyyy'), 23474, 'helicopter', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-11-2011', 'dd-mm-yyyy'), 14311, 'palne', 94);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-09-1978', 'dd-mm-yyyy'), 52521, 'helicopter', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-08-1994', 'dd-mm-yyyy'), 34401, 'helicopter', 67);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-08-1987', 'dd-mm-yyyy'), 45622, 'palne', 117);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-05-1976', 'dd-mm-yyyy'), 45762, 'helicopter', 34);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-05-2005', 'dd-mm-yyyy'), 18919, 'helicopter', 65);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-07-1999', 'dd-mm-yyyy'), 33419, 'helicopter', 75);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-11-1978', 'dd-mm-yyyy'), 31485, 'helicopter', 55);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-08-1984', 'dd-mm-yyyy'), 80795, 'helicopter', 113);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-11-1982', 'dd-mm-yyyy'), 64316, 'helicopter', 76);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-08-1971', 'dd-mm-yyyy'), 29262, 'helicopter', 53);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-05-1982', 'dd-mm-yyyy'), 38214, 'palne', 122);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-08-1977', 'dd-mm-yyyy'), 76579, 'palne', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-12-2009', 'dd-mm-yyyy'), 59446, 'palne', 126);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-07-2019', 'dd-mm-yyyy'), 91993, 'palne', 95);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-06-2009', 'dd-mm-yyyy'), 93183, 'helicopter', 66);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-10-2002', 'dd-mm-yyyy'), 48012, 'palne', 123);
commit;
prompt 100 records committed...
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-04-1994', 'dd-mm-yyyy'), 42491, 'helicopter', 30);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-07-1975', 'dd-mm-yyyy'), 57732, 'helicopter', 79);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-06-1972', 'dd-mm-yyyy'), 55104, 'palne', 106);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-06-1998', 'dd-mm-yyyy'), 17717, 'helicopter', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-07-1986', 'dd-mm-yyyy'), 80193, 'helicopter', 116);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-01-1980', 'dd-mm-yyyy'), 11992, 'helicopter', 42);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-04-2019', 'dd-mm-yyyy'), 97359, 'palne', 50);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-02-1978', 'dd-mm-yyyy'), 54929, 'palne', 92);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-03-2015', 'dd-mm-yyyy'), 40073, 'helicopter', 60);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('31-12-2015', 'dd-mm-yyyy'), 61902, 'palne', 99);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-05-2017', 'dd-mm-yyyy'), 35778, 'helicopter', 112);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-02-2015', 'dd-mm-yyyy'), 47724, 'helicopter', 35);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-06-1970', 'dd-mm-yyyy'), 73770, 'palne', 74);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-12-1992', 'dd-mm-yyyy'), 19535, 'palne', 92);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-07-1988', 'dd-mm-yyyy'), 78639, 'helicopter', 124);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-07-1976', 'dd-mm-yyyy'), 97455, 'palne', 58);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-02-1989', 'dd-mm-yyyy'), 33701, 'helicopter', 92);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-09-1981', 'dd-mm-yyyy'), 63027, 'palne', 46);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-12-1992', 'dd-mm-yyyy'), 65555, 'palne', 65);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-12-2007', 'dd-mm-yyyy'), 24315, 'palne', 128);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('31-07-1988', 'dd-mm-yyyy'), 45289, 'palne', 77);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-09-1998', 'dd-mm-yyyy'), 64349, 'palne', 110);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-09-2013', 'dd-mm-yyyy'), 39701, 'palne', 101);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-08-2017', 'dd-mm-yyyy'), 28444, 'palne', 96);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-04-2001', 'dd-mm-yyyy'), 12514, 'palne', 58);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-03-1990', 'dd-mm-yyyy'), 72642, 'palne', 79);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-05-1991', 'dd-mm-yyyy'), 20032, 'palne', 52);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-01-2011', 'dd-mm-yyyy'), 17706, 'helicopter', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-02-2009', 'dd-mm-yyyy'), 12360, 'helicopter', 82);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('31-10-2016', 'dd-mm-yyyy'), 86441, 'helicopter', 59);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-11-2007', 'dd-mm-yyyy'), 40172, 'palne', 88);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-01-1975', 'dd-mm-yyyy'), 91026, 'helicopter', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-12-1977', 'dd-mm-yyyy'), 67037, 'helicopter', 34);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-11-1987', 'dd-mm-yyyy'), 92560, 'palne', 106);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-04-1971', 'dd-mm-yyyy'), 98416, 'palne', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-06-2012', 'dd-mm-yyyy'), 43943, 'helicopter', 107);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-09-1991', 'dd-mm-yyyy'), 93982, 'helicopter', 44);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-10-1995', 'dd-mm-yyyy'), 16095, 'palne', 44);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-03-2000', 'dd-mm-yyyy'), 18841, 'palne', 45);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-04-1976', 'dd-mm-yyyy'), 29722, 'palne', 114);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-12-1986', 'dd-mm-yyyy'), 33633, 'helicopter', 80);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-03-2000', 'dd-mm-yyyy'), 25980, 'helicopter', 49);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('23-11-2007', 'dd-mm-yyyy'), 23527, 'palne', 37);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-03-2004', 'dd-mm-yyyy'), 64909, 'helicopter', 128);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-05-1987', 'dd-mm-yyyy'), 66100, 'palne', 41);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-11-2012', 'dd-mm-yyyy'), 40540, 'palne', 38);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-09-1986', 'dd-mm-yyyy'), 60334, 'palne', 42);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-10-2002', 'dd-mm-yyyy'), 68220, 'helicopter', 56);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-09-1987', 'dd-mm-yyyy'), 27829, 'palne', 72);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-05-1981', 'dd-mm-yyyy'), 33049, 'helicopter', 116);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-07-1992', 'dd-mm-yyyy'), 19572, 'helicopter', 126);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-01-1982', 'dd-mm-yyyy'), 77208, 'helicopter', 89);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-08-1988', 'dd-mm-yyyy'), 72713, 'helicopter', 71);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('31-03-1974', 'dd-mm-yyyy'), 70617, 'palne', 118);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-05-1979', 'dd-mm-yyyy'), 39553, 'helicopter', 95);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('23-10-1989', 'dd-mm-yyyy'), 20484, 'helicopter', 81);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-09-1980', 'dd-mm-yyyy'), 88762, 'helicopter', 57);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-08-2014', 'dd-mm-yyyy'), 86412, 'helicopter', 32);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-03-1983', 'dd-mm-yyyy'), 12148, 'helicopter', 128);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-11-1995', 'dd-mm-yyyy'), 23276, 'helicopter', 60);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-04-1979', 'dd-mm-yyyy'), 92543, 'helicopter', 46);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-02-2015', 'dd-mm-yyyy'), 96330, 'palne', 78);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-11-2006', 'dd-mm-yyyy'), 66122, 'helicopter', 41);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-08-1976', 'dd-mm-yyyy'), 90757, 'helicopter', 50);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-02-2008', 'dd-mm-yyyy'), 90294, 'helicopter', 51);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-12-2011', 'dd-mm-yyyy'), 60103, 'palne', 130);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-02-2004', 'dd-mm-yyyy'), 72686, 'palne', 49);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('01-05-1999', 'dd-mm-yyyy'), 58051, 'helicopter', 76);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-07-1984', 'dd-mm-yyyy'), 27923, 'palne', 88);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-06-1999', 'dd-mm-yyyy'), 97966, 'palne', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-02-2014', 'dd-mm-yyyy'), 39945, 'helicopter', 102);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-05-2006', 'dd-mm-yyyy'), 73559, 'palne', 114);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-05-2003', 'dd-mm-yyyy'), 96563, 'helicopter', 117);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-05-2014', 'dd-mm-yyyy'), 85101, 'palne', 111);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-12-1995', 'dd-mm-yyyy'), 62894, 'palne', 106);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-12-1999', 'dd-mm-yyyy'), 15635, 'palne', 57);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-03-1971', 'dd-mm-yyyy'), 60352, 'palne', 75);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-03-1970', 'dd-mm-yyyy'), 46085, 'palne', 46);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-08-2012', 'dd-mm-yyyy'), 95644, 'palne', 56);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-02-1976', 'dd-mm-yyyy'), 64800, 'palne', 99);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-04-1991', 'dd-mm-yyyy'), 95319, 'palne', 66);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-10-1991', 'dd-mm-yyyy'), 15996, 'palne', 95);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-10-2015', 'dd-mm-yyyy'), 79200, 'palne', 101);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-04-2009', 'dd-mm-yyyy'), 31523, 'palne', 77);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-04-1997', 'dd-mm-yyyy'), 28274, 'helicopter', 122);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-04-1999', 'dd-mm-yyyy'), 79306, 'palne', 72);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-01-1980', 'dd-mm-yyyy'), 69235, 'palne', 51);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-10-1986', 'dd-mm-yyyy'), 17333, 'helicopter', 117);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-02-1988', 'dd-mm-yyyy'), 86811, 'helicopter', 129);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-12-1992', 'dd-mm-yyyy'), 53211, 'palne', 66);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-03-1987', 'dd-mm-yyyy'), 97203, 'helicopter', 106);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-10-1992', 'dd-mm-yyyy'), 98151, 'palne', 105);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-03-2012', 'dd-mm-yyyy'), 49301, 'helicopter', 125);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-05-1987', 'dd-mm-yyyy'), 59856, 'palne', 125);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-09-2010', 'dd-mm-yyyy'), 31452, 'palne', 118);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-02-1993', 'dd-mm-yyyy'), 96512, 'helicopter', 127);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-09-2001', 'dd-mm-yyyy'), 83788, 'helicopter', 38);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-09-1995', 'dd-mm-yyyy'), 31891, 'palne', 105);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-02-2000', 'dd-mm-yyyy'), 60554, 'palne', 123);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-08-2019', 'dd-mm-yyyy'), 64900, 'palne', 48);
commit;
prompt 200 records committed...
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-12-2006', 'dd-mm-yyyy'), 75764, 'helicopter', 118);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-02-2014', 'dd-mm-yyyy'), 18022, 'helicopter', 109);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-03-2015', 'dd-mm-yyyy'), 21086, 'palne', 36);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-01-2004', 'dd-mm-yyyy'), 57969, 'palne', 52);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-01-1981', 'dd-mm-yyyy'), 22612, 'helicopter', 41);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-06-2006', 'dd-mm-yyyy'), 44126, 'helicopter', 98);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-10-2010', 'dd-mm-yyyy'), 58740, 'helicopter', 35);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-01-2013', 'dd-mm-yyyy'), 82541, 'palne', 117);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-10-2013', 'dd-mm-yyyy'), 72498, 'palne', 123);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-02-1988', 'dd-mm-yyyy'), 63252, 'palne', 55);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-07-1970', 'dd-mm-yyyy'), 44986, 'palne', 42);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-03-1982', 'dd-mm-yyyy'), 47612, 'palne', 38);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('31-07-2016', 'dd-mm-yyyy'), 29921, 'helicopter', 128);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-11-2010', 'dd-mm-yyyy'), 83395, 'palne', 121);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-12-1991', 'dd-mm-yyyy'), 60412, 'palne', 105);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-04-2000', 'dd-mm-yyyy'), 69900, 'helicopter', 99);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-05-2006', 'dd-mm-yyyy'), 16834, 'palne', 122);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-11-1996', 'dd-mm-yyyy'), 28610, 'helicopter', 35);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-02-1970', 'dd-mm-yyyy'), 78052, 'helicopter', 103);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-01-1994', 'dd-mm-yyyy'), 68296, 'helicopter', 57);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-04-1990', 'dd-mm-yyyy'), 67076, 'helicopter', 87);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-05-1973', 'dd-mm-yyyy'), 44566, 'palne', 54);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-09-1982', 'dd-mm-yyyy'), 91167, 'palne', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-03-2012', 'dd-mm-yyyy'), 69414, 'palne', 97);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-11-1999', 'dd-mm-yyyy'), 76383, 'helicopter', 52);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-09-2006', 'dd-mm-yyyy'), 92991, 'palne', 85);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-11-1973', 'dd-mm-yyyy'), 63243, 'helicopter', 128);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-02-2010', 'dd-mm-yyyy'), 68707, 'palne', 93);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-06-1975', 'dd-mm-yyyy'), 19048, 'helicopter', 129);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-02-1987', 'dd-mm-yyyy'), 79450, 'helicopter', 96);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-09-1988', 'dd-mm-yyyy'), 55769, 'helicopter', 44);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-11-1983', 'dd-mm-yyyy'), 69353, 'palne', 117);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-09-2000', 'dd-mm-yyyy'), 75701, 'palne', 104);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('23-11-2012', 'dd-mm-yyyy'), 70012, 'palne', 113);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-11-2007', 'dd-mm-yyyy'), 89350, 'palne', 38);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('23-10-2004', 'dd-mm-yyyy'), 32256, 'helicopter', 58);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-10-1986', 'dd-mm-yyyy'), 49976, 'palne', 102);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('31-07-1974', 'dd-mm-yyyy'), 63471, 'helicopter', 32);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-09-1981', 'dd-mm-yyyy'), 93704, 'palne', 83);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-01-2004', 'dd-mm-yyyy'), 92710, 'helicopter', 107);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-11-2006', 'dd-mm-yyyy'), 29621, 'palne', 75);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-08-1989', 'dd-mm-yyyy'), 30236, 'palne', 62);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-11-2014', 'dd-mm-yyyy'), 35442, 'palne', 44);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-06-2006', 'dd-mm-yyyy'), 65961, 'palne', 114);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-06-1980', 'dd-mm-yyyy'), 69832, 'helicopter', 101);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-09-1986', 'dd-mm-yyyy'), 40108, 'palne', 93);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-04-2000', 'dd-mm-yyyy'), 45845, 'helicopter', 84);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-06-2015', 'dd-mm-yyyy'), 19422, 'palne', 65);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-09-2007', 'dd-mm-yyyy'), 54364, 'palne', 58);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-01-1990', 'dd-mm-yyyy'), 34502, 'helicopter', 49);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-11-2003', 'dd-mm-yyyy'), 15310, 'palne', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-02-1997', 'dd-mm-yyyy'), 44900, 'helicopter', 42);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-12-2003', 'dd-mm-yyyy'), 89976, 'palne', 114);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-09-2003', 'dd-mm-yyyy'), 43116, 'helicopter', 106);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-12-1998', 'dd-mm-yyyy'), 76680, 'palne', 51);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-10-2014', 'dd-mm-yyyy'), 30815, 'helicopter', 86);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-11-1983', 'dd-mm-yyyy'), 11985, 'helicopter', 102);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-02-1996', 'dd-mm-yyyy'), 45040, 'helicopter', 104);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-06-2000', 'dd-mm-yyyy'), 21912, 'palne', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-01-2013', 'dd-mm-yyyy'), 56648, 'palne', 104);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-03-1996', 'dd-mm-yyyy'), 45380, 'helicopter', 63);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-06-1984', 'dd-mm-yyyy'), 96531, 'helicopter', 34);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-02-1999', 'dd-mm-yyyy'), 52081, 'palne', 83);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-07-2002', 'dd-mm-yyyy'), 76271, 'helicopter', 91);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-08-2007', 'dd-mm-yyyy'), 43706, 'helicopter', 99);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-10-2018', 'dd-mm-yyyy'), 14355, 'helicopter', 107);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-04-1996', 'dd-mm-yyyy'), 16263, 'palne', 83);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-03-1994', 'dd-mm-yyyy'), 45726, 'helicopter', 80);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-07-1987', 'dd-mm-yyyy'), 61293, 'helicopter', 86);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-09-2016', 'dd-mm-yyyy'), 36887, 'palne', 54);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-02-1988', 'dd-mm-yyyy'), 72647, 'palne', 76);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-04-1983', 'dd-mm-yyyy'), 51004, 'palne', 35);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-04-1992', 'dd-mm-yyyy'), 36583, 'helicopter', 105);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-10-1997', 'dd-mm-yyyy'), 63009, 'helicopter', 38);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-10-1999', 'dd-mm-yyyy'), 16318, 'helicopter', 95);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-06-1984', 'dd-mm-yyyy'), 80265, 'palne', 54);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-09-1999', 'dd-mm-yyyy'), 97688, 'helicopter', 130);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-06-2017', 'dd-mm-yyyy'), 46551, 'helicopter', 45);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('31-01-1970', 'dd-mm-yyyy'), 29251, 'palne', 87);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-05-2015', 'dd-mm-yyyy'), 62728, 'palne', 71);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-01-1993', 'dd-mm-yyyy'), 67948, 'palne', 113);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-11-2001', 'dd-mm-yyyy'), 35177, 'helicopter', 53);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-08-1985', 'dd-mm-yyyy'), 96982, 'helicopter', 120);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-08-1981', 'dd-mm-yyyy'), 85340, 'helicopter', 55);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-11-1995', 'dd-mm-yyyy'), 38148, 'helicopter', 34);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-02-1982', 'dd-mm-yyyy'), 31501, 'helicopter', 102);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-04-2015', 'dd-mm-yyyy'), 47491, 'helicopter', 100);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-12-2010', 'dd-mm-yyyy'), 76105, 'palne', 119);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-02-2006', 'dd-mm-yyyy'), 49856, 'palne', 35);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-09-1978', 'dd-mm-yyyy'), 31975, 'helicopter', 38);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-10-1994', 'dd-mm-yyyy'), 34544, 'helicopter', 84);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-07-1987', 'dd-mm-yyyy'), 20751, 'helicopter', 113);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-08-1980', 'dd-mm-yyyy'), 45421, 'helicopter', 53);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-07-1985', 'dd-mm-yyyy'), 65773, 'helicopter', 42);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('23-08-2010', 'dd-mm-yyyy'), 43241, 'helicopter', 116);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-05-1986', 'dd-mm-yyyy'), 90514, 'palne', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-05-2019', 'dd-mm-yyyy'), 84640, 'helicopter', 129);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-10-2004', 'dd-mm-yyyy'), 55910, 'palne', 49);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-11-1984', 'dd-mm-yyyy'), 17797, 'palne', 60);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-09-2007', 'dd-mm-yyyy'), 58796, 'palne', 35);
commit;
prompt 300 records committed...
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-12-1999', 'dd-mm-yyyy'), 28091, 'palne', 60);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-12-1980', 'dd-mm-yyyy'), 35901, 'helicopter', 52);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-03-2009', 'dd-mm-yyyy'), 78209, 'helicopter', 52);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-07-2011', 'dd-mm-yyyy'), 51171, 'helicopter', 111);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-11-2011', 'dd-mm-yyyy'), 20467, 'helicopter', 113);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-07-1985', 'dd-mm-yyyy'), 99766, 'helicopter', 33);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-09-1979', 'dd-mm-yyyy'), 25809, 'palne', 68);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-10-2001', 'dd-mm-yyyy'), 50939, 'palne', 129);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-02-1991', 'dd-mm-yyyy'), 85019, 'helicopter', 121);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-12-2000', 'dd-mm-yyyy'), 85362, 'helicopter', 94);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-09-1980', 'dd-mm-yyyy'), 93269, 'helicopter', 33);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-08-2010', 'dd-mm-yyyy'), 26902, 'palne', 38);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-03-2004', 'dd-mm-yyyy'), 73558, 'helicopter', 108);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-05-2005', 'dd-mm-yyyy'), 57717, 'palne', 61);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-08-2019', 'dd-mm-yyyy'), 94594, 'helicopter', 102);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-02-1983', 'dd-mm-yyyy'), 61144, 'palne', 114);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-12-1982', 'dd-mm-yyyy'), 60898, 'helicopter', 54);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-09-2006', 'dd-mm-yyyy'), 81248, 'palne', 103);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-01-2011', 'dd-mm-yyyy'), 86240, 'helicopter', 43);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-05-2011', 'dd-mm-yyyy'), 32365, 'palne', 46);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-06-2008', 'dd-mm-yyyy'), 28190, 'helicopter', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-06-1977', 'dd-mm-yyyy'), 80879, 'helicopter', 90);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-04-2011', 'dd-mm-yyyy'), 50443, 'helicopter', 91);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-02-2019', 'dd-mm-yyyy'), 99211, 'helicopter', 49);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-09-1995', 'dd-mm-yyyy'), 79589, 'helicopter', 51);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-07-1988', 'dd-mm-yyyy'), 58703, 'palne', 35);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-08-2002', 'dd-mm-yyyy'), 22998, 'helicopter', 105);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-09-1995', 'dd-mm-yyyy'), 28055, 'palne', 118);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-11-1977', 'dd-mm-yyyy'), 36697, 'palne', 47);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-12-1993', 'dd-mm-yyyy'), 43983, 'palne', 101);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-10-1977', 'dd-mm-yyyy'), 43258, 'palne', 101);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-12-1980', 'dd-mm-yyyy'), 31882, 'palne', 85);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-11-1990', 'dd-mm-yyyy'), 99676, 'palne', 73);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-05-2015', 'dd-mm-yyyy'), 43151, 'palne', 91);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-05-1974', 'dd-mm-yyyy'), 15249, 'palne', 97);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-04-1999', 'dd-mm-yyyy'), 98074, 'palne', 119);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-05-2007', 'dd-mm-yyyy'), 86134, 'helicopter', 41);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-01-1976', 'dd-mm-yyyy'), 78701, 'palne', 92);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-10-2008', 'dd-mm-yyyy'), 13220, 'helicopter', 65);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-12-1993', 'dd-mm-yyyy'), 27289, 'palne', 107);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-06-1971', 'dd-mm-yyyy'), 92240, 'helicopter', 52);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-05-1985', 'dd-mm-yyyy'), 50293, 'helicopter', 77);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-05-2011', 'dd-mm-yyyy'), 53869, 'palne', 74);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-09-2011', 'dd-mm-yyyy'), 94581, 'palne', 104);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-01-1983', 'dd-mm-yyyy'), 87166, 'palne', 94);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-07-1973', 'dd-mm-yyyy'), 40316, 'palne', 63);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-02-2010', 'dd-mm-yyyy'), 46342, 'palne', 103);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-01-1987', 'dd-mm-yyyy'), 21618, 'palne', 120);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-12-1981', 'dd-mm-yyyy'), 40865, 'helicopter', 89);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('23-06-1975', 'dd-mm-yyyy'), 86107, 'palne', 43);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-05-2015', 'dd-mm-yyyy'), 97788, 'palne', 98);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-07-1976', 'dd-mm-yyyy'), 82236, 'palne', 44);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-07-1982', 'dd-mm-yyyy'), 51849, 'helicopter', 34);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-06-2015', 'dd-mm-yyyy'), 41059, 'palne', 51);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-02-2004', 'dd-mm-yyyy'), 18915, 'helicopter', 90);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-04-1993', 'dd-mm-yyyy'), 74667, 'helicopter', 104);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-01-2008', 'dd-mm-yyyy'), 30523, 'palne', 52);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-06-1991', 'dd-mm-yyyy'), 57961, 'palne', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-05-2004', 'dd-mm-yyyy'), 73991, 'palne', 47);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-03-1991', 'dd-mm-yyyy'), 71532, 'palne', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-11-1974', 'dd-mm-yyyy'), 93628, 'helicopter', 38);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-06-2009', 'dd-mm-yyyy'), 94547, 'palne', 101);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-07-1979', 'dd-mm-yyyy'), 41953, 'palne', 109);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-07-1999', 'dd-mm-yyyy'), 14291, 'helicopter', 83);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-01-1977', 'dd-mm-yyyy'), 69797, 'helicopter', 42);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-12-2017', 'dd-mm-yyyy'), 41278, 'helicopter', 60);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-10-2012', 'dd-mm-yyyy'), 55297, 'helicopter', 109);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-01-2007', 'dd-mm-yyyy'), 18795, 'palne', 48);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-07-1970', 'dd-mm-yyyy'), 71778, 'helicopter', 43);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-04-1992', 'dd-mm-yyyy'), 26897, 'palne', 114);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-06-1991', 'dd-mm-yyyy'), 16746, 'palne', 113);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-07-1996', 'dd-mm-yyyy'), 58621, 'helicopter', 76);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('01-08-2007', 'dd-mm-yyyy'), 90880, 'helicopter', 34);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-10-2018', 'dd-mm-yyyy'), 12870, 'helicopter', 129);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-06-1991', 'dd-mm-yyyy'), 82581, 'helicopter', 115);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-03-1979', 'dd-mm-yyyy'), 92850, 'palne', 118);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-03-1971', 'dd-mm-yyyy'), 35856, 'helicopter', 102);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-07-1979', 'dd-mm-yyyy'), 98948, 'helicopter', 124);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-07-2011', 'dd-mm-yyyy'), 79309, 'helicopter', 40);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-01-1979', 'dd-mm-yyyy'), 16066, 'helicopter', 120);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-08-2009', 'dd-mm-yyyy'), 38466, 'helicopter', 110);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-06-1986', 'dd-mm-yyyy'), 28717, 'palne', 60);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-09-2007', 'dd-mm-yyyy'), 75884, 'helicopter', 96);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-01-2017', 'dd-mm-yyyy'), 52801, 'palne', 71);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-04-1970', 'dd-mm-yyyy'), 47917, 'helicopter', 70);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-09-2015', 'dd-mm-yyyy'), 28487, 'palne', 89);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-08-1977', 'dd-mm-yyyy'), 67043, 'helicopter', 44);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-08-1995', 'dd-mm-yyyy'), 85313, 'palne', 117);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-08-1984', 'dd-mm-yyyy'), 47528, 'palne', 114);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-04-1992', 'dd-mm-yyyy'), 46185, 'helicopter', 113);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-02-1995', 'dd-mm-yyyy'), 12192, 'palne', 116);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('23-05-1983', 'dd-mm-yyyy'), 48030, 'palne', 107);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-04-2002', 'dd-mm-yyyy'), 93626, 'palne', 126);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-03-1974', 'dd-mm-yyyy'), 56907, 'palne', 71);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-03-1994', 'dd-mm-yyyy'), 52074, 'helicopter', 77);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-11-1998', 'dd-mm-yyyy'), 55327, 'helicopter', 30);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-05-1975', 'dd-mm-yyyy'), 87760, 'palne', 36);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-10-1986', 'dd-mm-yyyy'), 12919, 'helicopter', 34);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-10-2003', 'dd-mm-yyyy'), 14324, 'palne', 114);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-05-1995', 'dd-mm-yyyy'), 84863, 'palne', 107);
commit;
prompt 400 records committed...
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-03-1993', 'dd-mm-yyyy'), 82261, 'helicopter', 127);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-05-2007', 'dd-mm-yyyy'), 60326, 'palne', 93);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-12-1981', 'dd-mm-yyyy'), 74581, 'helicopter', 48);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-01-1995', 'dd-mm-yyyy'), 16462, 'palne', 85);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-03-2016', 'dd-mm-yyyy'), 52466, 'helicopter', 60);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-03-1999', 'dd-mm-yyyy'), 44622, 'helicopter', 74);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-03-2000', 'dd-mm-yyyy'), 84265, 'helicopter', 32);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-09-1973', 'dd-mm-yyyy'), 26569, 'palne', 122);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-08-2010', 'dd-mm-yyyy'), 24489, 'palne', 45);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-05-1996', 'dd-mm-yyyy'), 82918, 'palne', 60);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-01-1978', 'dd-mm-yyyy'), 53911, 'palne', 35);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-08-1994', 'dd-mm-yyyy'), 93795, 'helicopter', 48);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-10-1982', 'dd-mm-yyyy'), 25229, 'palne', 96);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-08-1987', 'dd-mm-yyyy'), 69494, 'helicopter', 89);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-03-2017', 'dd-mm-yyyy'), 14279, 'helicopter', 45);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-04-1993', 'dd-mm-yyyy'), 37809, 'palne', 128);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-05-2013', 'dd-mm-yyyy'), 32364, 'helicopter', 45);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-04-2001', 'dd-mm-yyyy'), 70245, 'palne', 96);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-02-1986', 'dd-mm-yyyy'), 55244, 'helicopter', 59);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-10-2011', 'dd-mm-yyyy'), 91566, 'helicopter', 103);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-02-1992', 'dd-mm-yyyy'), 13243, 'helicopter', 61);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-03-1989', 'dd-mm-yyyy'), 94902, 'palne', 68);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-03-2004', 'dd-mm-yyyy'), 98019, 'helicopter', 109);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-10-1982', 'dd-mm-yyyy'), 51298, 'helicopter', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-09-2001', 'dd-mm-yyyy'), 52664, 'palne', 118);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-04-2011', 'dd-mm-yyyy'), 47035, 'helicopter', 121);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-03-1976', 'dd-mm-yyyy'), 22928, 'helicopter', 57);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-07-2014', 'dd-mm-yyyy'), 26519, 'palne', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-08-2002', 'dd-mm-yyyy'), 36204, 'palne', 55);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-12-2019', 'dd-mm-yyyy'), 29603, 'palne', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-09-1976', 'dd-mm-yyyy'), 63858, 'helicopter', 116);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-10-1974', 'dd-mm-yyyy'), 34471, 'helicopter', 39);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-03-2017', 'dd-mm-yyyy'), 44666, 'palne', 36);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-04-1994', 'dd-mm-yyyy'), 28295, 'helicopter', 75);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-07-1984', 'dd-mm-yyyy'), 47141, 'helicopter', 101);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-02-1975', 'dd-mm-yyyy'), 39008, 'helicopter', 95);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-04-2014', 'dd-mm-yyyy'), 37414, 'palne', 68);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-08-1974', 'dd-mm-yyyy'), 39299, 'palne', 90);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-12-2016', 'dd-mm-yyyy'), 52671, 'palne', 67);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-09-2005', 'dd-mm-yyyy'), 78378, 'helicopter', 95);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-02-1993', 'dd-mm-yyyy'), 69037, 'palne', 101);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-01-1997', 'dd-mm-yyyy'), 19309, 'helicopter', 84);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-01-2014', 'dd-mm-yyyy'), 97232, 'palne', 116);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-05-2019', 'dd-mm-yyyy'), 37442, 'helicopter', 83);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-04-2018', 'dd-mm-yyyy'), 61570, 'helicopter', 74);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-03-1977', 'dd-mm-yyyy'), 13300, 'helicopter', 80);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-05-1973', 'dd-mm-yyyy'), 84501, 'helicopter', 38);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-01-2016', 'dd-mm-yyyy'), 42122, 'palne', 122);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-09-2003', 'dd-mm-yyyy'), 21164, 'helicopter', 130);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('23-04-1995', 'dd-mm-yyyy'), 15639, 'helicopter', 53);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('01-12-1983', 'dd-mm-yyyy'), 21713, 'palne', 67);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-02-1977', 'dd-mm-yyyy'), 53842, 'helicopter', 93);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-04-1997', 'dd-mm-yyyy'), 76975, 'helicopter', 103);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-03-1980', 'dd-mm-yyyy'), 97864, 'palne', 39);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-11-2010', 'dd-mm-yyyy'), 58553, 'palne', 70);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-12-1999', 'dd-mm-yyyy'), 86196, 'palne', 106);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-01-2015', 'dd-mm-yyyy'), 75603, 'helicopter', 34);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('23-10-1993', 'dd-mm-yyyy'), 92015, 'palne', 96);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('01-10-1979', 'dd-mm-yyyy'), 81598, 'helicopter', 100);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-03-1982', 'dd-mm-yyyy'), 66061, 'helicopter', 63);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-07-1975', 'dd-mm-yyyy'), 64434, 'palne', 82);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-05-2015', 'dd-mm-yyyy'), 73969, 'palne', 75);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-10-2010', 'dd-mm-yyyy'), 19871, 'helicopter', 110);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-11-2005', 'dd-mm-yyyy'), 50259, 'helicopter', 52);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-05-1984', 'dd-mm-yyyy'), 63854, 'helicopter', 90);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('31-01-1976', 'dd-mm-yyyy'), 46775, 'helicopter', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-07-2003', 'dd-mm-yyyy'), 61511, 'palne', 114);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-03-1972', 'dd-mm-yyyy'), 86675, 'palne', 111);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-05-2018', 'dd-mm-yyyy'), 17254, 'palne', 76);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-03-1993', 'dd-mm-yyyy'), 68428, 'palne', 102);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-12-1970', 'dd-mm-yyyy'), 70439, 'helicopter', 100);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-09-1985', 'dd-mm-yyyy'), 75360, 'palne', 112);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-04-2010', 'dd-mm-yyyy'), 96583, 'helicopter', 47);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-08-2004', 'dd-mm-yyyy'), 24093, 'palne', 46);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-10-1973', 'dd-mm-yyyy'), 69689, 'helicopter', 93);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-09-1988', 'dd-mm-yyyy'), 74093, 'helicopter', 94);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-10-1982', 'dd-mm-yyyy'), 30127, 'palne', 99);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-01-2003', 'dd-mm-yyyy'), 20551, 'palne', 37);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-04-2005', 'dd-mm-yyyy'), 13632, 'palne', 84);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-08-1995', 'dd-mm-yyyy'), 70601, 'helicopter', 110);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-01-1983', 'dd-mm-yyyy'), 30289, 'palne', 128);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-09-1970', 'dd-mm-yyyy'), 69531, 'palne', 80);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-04-1975', 'dd-mm-yyyy'), 93532, 'palne', 79);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-04-1977', 'dd-mm-yyyy'), 21447, 'helicopter', 30);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-02-2017', 'dd-mm-yyyy'), 32471, 'palne', 130);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-04-2013', 'dd-mm-yyyy'), 37708, 'helicopter', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-06-1994', 'dd-mm-yyyy'), 65324, 'helicopter', 72);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-07-1995', 'dd-mm-yyyy'), 68698, 'palne', 109);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-02-1984', 'dd-mm-yyyy'), 89527, 'helicopter', 85);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-09-1994', 'dd-mm-yyyy'), 41152, 'helicopter', 94);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-03-2009', 'dd-mm-yyyy'), 88501, 'palne', 101);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('01-04-1987', 'dd-mm-yyyy'), 45480, 'helicopter', 112);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('15-12-2010', 'dd-mm-yyyy'), 55090, 'helicopter', 72);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-03-1971', 'dd-mm-yyyy'), 39766, 'palne', 100);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-06-1985', 'dd-mm-yyyy'), 53891, 'helicopter', 103);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-03-1999', 'dd-mm-yyyy'), 48200, 'helicopter', 40);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-05-1986', 'dd-mm-yyyy'), 66909, 'helicopter', 129);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-11-1975', 'dd-mm-yyyy'), 53961, 'helicopter', 112);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('22-04-1993', 'dd-mm-yyyy'), 66995, 'palne', 60);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('16-11-1971', 'dd-mm-yyyy'), 30990, 'palne', 57);
commit;
prompt 500 records committed...
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-07-1995', 'dd-mm-yyyy'), 52401, 'helicopter', 64);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('18-11-2002', 'dd-mm-yyyy'), 25759, 'palne', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('30-06-1991', 'dd-mm-yyyy'), 42429, 'helicopter', 124);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('14-05-1974', 'dd-mm-yyyy'), 22375, 'helicopter', 88);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-03-2004', 'dd-mm-yyyy'), 34210, 'palne', 65);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('19-02-1992', 'dd-mm-yyyy'), 35465, 'palne', 69);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('29-07-2011', 'dd-mm-yyyy'), 98364, 'palne', 86);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('17-05-1988', 'dd-mm-yyyy'), 75274, 'palne', 41);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('13-04-1993', 'dd-mm-yyyy'), 80208, 'palne', 113);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-05-2013', 'dd-mm-yyyy'), 73887, 'palne', 111);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-05-1992', 'dd-mm-yyyy'), 62089, 'palne', 122);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-10-1992', 'dd-mm-yyyy'), 39218, 'palne', 62);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-03-1993', 'dd-mm-yyyy'), 75710, 'helicopter', 111);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-08-2000', 'dd-mm-yyyy'), 81226, 'palne', 78);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-06-2014', 'dd-mm-yyyy'), 42230, 'palne', 70);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-11-1997', 'dd-mm-yyyy'), 43687, 'helicopter', 43);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-03-2018', 'dd-mm-yyyy'), 29039, 'helicopter', 94);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-08-1986', 'dd-mm-yyyy'), 74853, 'helicopter', 39);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('01-05-1984', 'dd-mm-yyyy'), 23193, 'palne', 67);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-11-1979', 'dd-mm-yyyy'), 92554, 'palne', 62);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-09-2000', 'dd-mm-yyyy'), 21518, 'palne', 111);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-02-1987', 'dd-mm-yyyy'), 99307, 'palne', 34);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-11-2018', 'dd-mm-yyyy'), 81830, 'helicopter', 55);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('27-04-2015', 'dd-mm-yyyy'), 14083, 'palne', 57);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-08-1975', 'dd-mm-yyyy'), 68588, 'palne', 84);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-06-1985', 'dd-mm-yyyy'), 87411, 'palne', 119);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('07-11-1979', 'dd-mm-yyyy'), 70779, 'helicopter', 71);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('24-03-2015', 'dd-mm-yyyy'), 33153, 'helicopter', 85);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('05-02-2015', 'dd-mm-yyyy'), 69801, 'helicopter', 33);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-08-2016', 'dd-mm-yyyy'), 76936, 'helicopter', 129);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-01-2008', 'dd-mm-yyyy'), 12900, 'palne', 31);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('08-09-2009', 'dd-mm-yyyy'), 99036, 'helicopter', 105);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-05-2012', 'dd-mm-yyyy'), 25494, 'helicopter', 68);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('02-10-2001', 'dd-mm-yyyy'), 71709, 'helicopter', 117);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-12-2007', 'dd-mm-yyyy'), 51279, 'helicopter', 83);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-02-1982', 'dd-mm-yyyy'), 13175, 'helicopter', 57);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('28-05-2016', 'dd-mm-yyyy'), 75670, 'palne', 49);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-09-1982', 'dd-mm-yyyy'), 80508, 'palne', 37);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('12-09-1981', 'dd-mm-yyyy'), 43675, 'palne', 115);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('11-10-2003', 'dd-mm-yyyy'), 90291, 'helicopter', 77);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('03-06-2016', 'dd-mm-yyyy'), 94450, 'palne', 87);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('04-02-2006', 'dd-mm-yyyy'), 67057, 'helicopter', 115);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('25-11-2017', 'dd-mm-yyyy'), 41723, 'helicopter', 128);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('21-12-1975', 'dd-mm-yyyy'), 84512, 'helicopter', 89);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('01-01-2008', 'dd-mm-yyyy'), 77807, 'palne', 41);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('10-11-2005', 'dd-mm-yyyy'), 83779, 'palne', 106);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('26-04-1974', 'dd-mm-yyyy'), 80978, 'helicopter', 128);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-06-2017', 'dd-mm-yyyy'), 38206, 'palne', 43);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('01-02-1998', 'dd-mm-yyyy'), 14157, 'palne', 84);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('06-09-2009', 'dd-mm-yyyy'), 14797, 'helicopter', 83);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('09-09-2013', 'dd-mm-yyyy'), 73735, 'palne', 50);
insert into AIRCRAFT (prodaction_date, serialid, kind, maintenance_id)
values (to_date('20-07-2006', 'dd-mm-yyyy'), 65328, 'helicopter', 94);
commit;
prompt 552 records loaded
prompt Loading MISSION...
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-04-2021', 'dd-mm-yyyy'), 'failed', 63);
insert into MISSION (mission_date, status, mission_id)
values (to_date('23-06-2024', 'dd-mm-yyyy'), 'failed', 190);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-12-2022', 'dd-mm-yyyy'), 'failed', 119);
insert into MISSION (mission_date, status, mission_id)
values (to_date('02-09-2023', 'dd-mm-yyyy'), 'Succeeded', 143);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-06-2020', 'dd-mm-yyyy'), 'failed', 886);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-01-2021', 'dd-mm-yyyy'), 'failed', 502);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-05-2021', 'dd-mm-yyyy'), 'Succeeded', 811);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-08-2022', 'dd-mm-yyyy'), 'Succeeded', 492);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-06-2023', 'dd-mm-yyyy'), 'Succeeded', 70);
insert into MISSION (mission_date, status, mission_id)
values (to_date('26-01-2022', 'dd-mm-yyyy'), 'failed', 549);
insert into MISSION (mission_date, status, mission_id)
values (to_date('26-01-2020', 'dd-mm-yyyy'), 'Succeeded', 759);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-01-2023', 'dd-mm-yyyy'), 'Succeeded', 780);
insert into MISSION (mission_date, status, mission_id)
values (to_date('11-11-2023', 'dd-mm-yyyy'), 'failed', 724);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-11-2021', 'dd-mm-yyyy'), 'failed', 134);
insert into MISSION (mission_date, status, mission_id)
values (to_date('26-10-2021', 'dd-mm-yyyy'), 'Succeeded', 654);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-07-2022', 'dd-mm-yyyy'), 'Succeeded', 582);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-03-2023', 'dd-mm-yyyy'), 'Succeeded', 851);
insert into MISSION (mission_date, status, mission_id)
values (to_date('29-10-2023', 'dd-mm-yyyy'), 'Succeeded', 570);
insert into MISSION (mission_date, status, mission_id)
values (to_date('11-10-2023', 'dd-mm-yyyy'), 'Succeeded', 692);
insert into MISSION (mission_date, status, mission_id)
values (to_date('01-01-2020', 'dd-mm-yyyy'), 'failed', 141);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-12-2021', 'dd-mm-yyyy'), 'Succeeded', 976);
insert into MISSION (mission_date, status, mission_id)
values (to_date('10-10-2020', 'dd-mm-yyyy'), 'Succeeded', 803);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-12-2022', 'dd-mm-yyyy'), 'Succeeded', 109);
insert into MISSION (mission_date, status, mission_id)
values (to_date('11-11-2024', 'dd-mm-yyyy'), 'failed', 101);
insert into MISSION (mission_date, status, mission_id)
values (to_date('31-12-2022', 'dd-mm-yyyy'), 'Succeeded', 890);
insert into MISSION (mission_date, status, mission_id)
values (to_date('18-01-2022', 'dd-mm-yyyy'), 'Succeeded', 363);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-11-2022', 'dd-mm-yyyy'), 'failed', 821);
insert into MISSION (mission_date, status, mission_id)
values (to_date('24-10-2020', 'dd-mm-yyyy'), 'failed', 71);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-03-2021', 'dd-mm-yyyy'), 'Succeeded', 556);
insert into MISSION (mission_date, status, mission_id)
values (to_date('23-10-2020', 'dd-mm-yyyy'), 'Succeeded', 924);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-08-2020', 'dd-mm-yyyy'), 'Succeeded', 878);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-04-2022', 'dd-mm-yyyy'), 'failed', 877);
insert into MISSION (mission_date, status, mission_id)
values (to_date('18-08-2024', 'dd-mm-yyyy'), 'failed', 519);
insert into MISSION (mission_date, status, mission_id)
values (to_date('12-11-2022', 'dd-mm-yyyy'), 'failed', 495);
insert into MISSION (mission_date, status, mission_id)
values (to_date('18-12-2023', 'dd-mm-yyyy'), 'Succeeded', 658);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-03-2022', 'dd-mm-yyyy'), 'failed', 677);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-07-2023', 'dd-mm-yyyy'), 'failed', 395);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-05-2023', 'dd-mm-yyyy'), 'failed', 486);
insert into MISSION (mission_date, status, mission_id)
values (to_date('05-06-2021', 'dd-mm-yyyy'), 'Succeeded', 44);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-02-2022', 'dd-mm-yyyy'), 'Succeeded', 311);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-05-2023', 'dd-mm-yyyy'), 'Succeeded', 271);
insert into MISSION (mission_date, status, mission_id)
values (to_date('08-07-2020', 'dd-mm-yyyy'), 'failed', 184);
insert into MISSION (mission_date, status, mission_id)
values (to_date('07-06-2021', 'dd-mm-yyyy'), 'Succeeded', 998);
insert into MISSION (mission_date, status, mission_id)
values (to_date('29-05-2023', 'dd-mm-yyyy'), 'Succeeded', 527);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-09-2021', 'dd-mm-yyyy'), 'Succeeded', 81);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-01-2024', 'dd-mm-yyyy'), 'Succeeded', 398);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-08-2021', 'dd-mm-yyyy'), 'Succeeded', 272);
insert into MISSION (mission_date, status, mission_id)
values (to_date('07-09-2021', 'dd-mm-yyyy'), 'failed', 985);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-12-2022', 'dd-mm-yyyy'), 'failed', 303);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-04-2022', 'dd-mm-yyyy'), 'Succeeded', 291);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-05-2022', 'dd-mm-yyyy'), 'failed', 169);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-03-2022', 'dd-mm-yyyy'), 'failed', 167);
insert into MISSION (mission_date, status, mission_id)
values (to_date('26-02-2020', 'dd-mm-yyyy'), 'Succeeded', 651);
insert into MISSION (mission_date, status, mission_id)
values (to_date('02-03-2021', 'dd-mm-yyyy'), 'failed', 595);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-10-2022', 'dd-mm-yyyy'), 'failed', 586);
insert into MISSION (mission_date, status, mission_id)
values (to_date('23-10-2023', 'dd-mm-yyyy'), 'failed', 867);
insert into MISSION (mission_date, status, mission_id)
values (to_date('10-02-2021', 'dd-mm-yyyy'), 'Succeeded', 144);
insert into MISSION (mission_date, status, mission_id)
values (to_date('19-01-2022', 'dd-mm-yyyy'), 'Succeeded', 833);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-11-2024', 'dd-mm-yyyy'), 'failed', 950);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-05-2024', 'dd-mm-yyyy'), 'failed', 849);
insert into MISSION (mission_date, status, mission_id)
values (to_date('11-02-2024', 'dd-mm-yyyy'), 'Succeeded', 285);
insert into MISSION (mission_date, status, mission_id)
values (to_date('23-07-2022', 'dd-mm-yyyy'), 'failed', 746);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-01-2024', 'dd-mm-yyyy'), 'Succeeded', 857);
insert into MISSION (mission_date, status, mission_id)
values (to_date('12-04-2023', 'dd-mm-yyyy'), 'failed', 161);
insert into MISSION (mission_date, status, mission_id)
values (to_date('12-08-2024', 'dd-mm-yyyy'), 'failed', 362);
insert into MISSION (mission_date, status, mission_id)
values (to_date('01-03-2021', 'dd-mm-yyyy'), 'Succeeded', 188);
insert into MISSION (mission_date, status, mission_id)
values (to_date('24-09-2022', 'dd-mm-yyyy'), 'Succeeded', 962);
insert into MISSION (mission_date, status, mission_id)
values (to_date('16-02-2020', 'dd-mm-yyyy'), 'failed', 172);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-12-2020', 'dd-mm-yyyy'), 'failed', 58);
insert into MISSION (mission_date, status, mission_id)
values (to_date('05-06-2023', 'dd-mm-yyyy'), 'failed', 575);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-02-2023', 'dd-mm-yyyy'), 'failed', 408);
insert into MISSION (mission_date, status, mission_id)
values (to_date('16-04-2024', 'dd-mm-yyyy'), 'failed', 288);
insert into MISSION (mission_date, status, mission_id)
values (to_date('18-01-2024', 'dd-mm-yyyy'), 'Succeeded', 762);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-07-2021', 'dd-mm-yyyy'), 'failed', 592);
insert into MISSION (mission_date, status, mission_id)
values (to_date('05-05-2024', 'dd-mm-yyyy'), 'Succeeded', 688);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-02-2020', 'dd-mm-yyyy'), 'Succeeded', 614);
insert into MISSION (mission_date, status, mission_id)
values (to_date('28-07-2023', 'dd-mm-yyyy'), 'Succeeded', 928);
insert into MISSION (mission_date, status, mission_id)
values (to_date('12-10-2024', 'dd-mm-yyyy'), 'failed', 552);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-02-2023', 'dd-mm-yyyy'), 'failed', 563);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-02-2020', 'dd-mm-yyyy'), 'Succeeded', 253);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-05-2020', 'dd-mm-yyyy'), 'Succeeded', 174);
insert into MISSION (mission_date, status, mission_id)
values (to_date('19-06-2020', 'dd-mm-yyyy'), 'failed', 54);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-03-2023', 'dd-mm-yyyy'), 'failed', 751);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-05-2020', 'dd-mm-yyyy'), 'failed', 846);
insert into MISSION (mission_date, status, mission_id)
values (to_date('18-08-2023', 'dd-mm-yyyy'), 'failed', 672);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-08-2023', 'dd-mm-yyyy'), 'failed', 6);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-04-2020', 'dd-mm-yyyy'), 'failed', 631);
insert into MISSION (mission_date, status, mission_id)
values (to_date('28-02-2022', 'dd-mm-yyyy'), 'failed', 716);
insert into MISSION (mission_date, status, mission_id)
values (to_date('12-01-2022', 'dd-mm-yyyy'), 'Succeeded', 12);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-01-2024', 'dd-mm-yyyy'), 'failed', 979);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-08-2021', 'dd-mm-yyyy'), 'failed', 942);
insert into MISSION (mission_date, status, mission_id)
values (to_date('23-06-2023', 'dd-mm-yyyy'), 'failed', 843);
insert into MISSION (mission_date, status, mission_id)
values (to_date('09-01-2023', 'dd-mm-yyyy'), 'Succeeded', 718);
insert into MISSION (mission_date, status, mission_id)
values (to_date('02-11-2023', 'dd-mm-yyyy'), 'Succeeded', 150);
insert into MISSION (mission_date, status, mission_id)
values (to_date('01-08-2021', 'dd-mm-yyyy'), 'Succeeded', 371);
insert into MISSION (mission_date, status, mission_id)
values (to_date('23-02-2021', 'dd-mm-yyyy'), 'failed', 136);
insert into MISSION (mission_date, status, mission_id)
values (to_date('19-12-2022', 'dd-mm-yyyy'), 'failed', 991);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-05-2021', 'dd-mm-yyyy'), 'failed', 321);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-06-2021', 'dd-mm-yyyy'), 'Succeeded', 583);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-10-2020', 'dd-mm-yyyy'), 'Succeeded', 468);
commit;
prompt 100 records committed...
insert into MISSION (mission_date, status, mission_id)
values (to_date('07-06-2021', 'dd-mm-yyyy'), 'Succeeded', 227);
insert into MISSION (mission_date, status, mission_id)
values (to_date('28-09-2022', 'dd-mm-yyyy'), 'failed', 974);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-03-2022', 'dd-mm-yyyy'), 'failed', 133);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-07-2022', 'dd-mm-yyyy'), 'failed', 607);
insert into MISSION (mission_date, status, mission_id)
values (to_date('10-12-2023', 'dd-mm-yyyy'), 'Succeeded', 406);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-09-2024', 'dd-mm-yyyy'), 'Succeeded', 135);
insert into MISSION (mission_date, status, mission_id)
values (to_date('29-09-2020', 'dd-mm-yyyy'), 'Succeeded', 470);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-03-2021', 'dd-mm-yyyy'), 'Succeeded', 778);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-06-2021', 'dd-mm-yyyy'), 'failed', 259);
insert into MISSION (mission_date, status, mission_id)
values (to_date('05-09-2021', 'dd-mm-yyyy'), 'failed', 601);
insert into MISSION (mission_date, status, mission_id)
values (to_date('28-12-2022', 'dd-mm-yyyy'), 'failed', 350);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-03-2024', 'dd-mm-yyyy'), 'failed', 450);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-11-2024', 'dd-mm-yyyy'), 'failed', 587);
insert into MISSION (mission_date, status, mission_id)
values (to_date('19-09-2023', 'dd-mm-yyyy'), 'Succeeded', 885);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-06-2020', 'dd-mm-yyyy'), 'Succeeded', 226);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-12-2020', 'dd-mm-yyyy'), 'Succeeded', 899);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-10-2020', 'dd-mm-yyyy'), 'Succeeded', 904);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-01-2023', 'dd-mm-yyyy'), 'failed', 574);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-12-2021', 'dd-mm-yyyy'), 'failed', 404);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-07-2020', 'dd-mm-yyyy'), 'Succeeded', 870);
insert into MISSION (mission_date, status, mission_id)
values (to_date('28-05-2022', 'dd-mm-yyyy'), 'failed', 604);
insert into MISSION (mission_date, status, mission_id)
values (to_date('01-10-2021', 'dd-mm-yyyy'), 'failed', 882);
insert into MISSION (mission_date, status, mission_id)
values (to_date('26-05-2020', 'dd-mm-yyyy'), 'failed', 779);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-07-2022', 'dd-mm-yyyy'), 'Succeeded', 704);
insert into MISSION (mission_date, status, mission_id)
values (to_date('12-09-2023', 'dd-mm-yyyy'), 'failed', 627);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-04-2024', 'dd-mm-yyyy'), 'failed', 355);
insert into MISSION (mission_date, status, mission_id)
values (to_date('07-03-2021', 'dd-mm-yyyy'), 'failed', 706);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-05-2022', 'dd-mm-yyyy'), 'failed', 318);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-05-2021', 'dd-mm-yyyy'), 'Succeeded', 590);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-04-2023', 'dd-mm-yyyy'), 'Succeeded', 580);
insert into MISSION (mission_date, status, mission_id)
values (to_date('16-08-2021', 'dd-mm-yyyy'), 'failed', 823);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-04-2022', 'dd-mm-yyyy'), 'Succeeded', 622);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-06-2020', 'dd-mm-yyyy'), 'Succeeded', 387);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-11-2023', 'dd-mm-yyyy'), 'Succeeded', 35);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-01-2022', 'dd-mm-yyyy'), 'Succeeded', 39);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-11-2023', 'dd-mm-yyyy'), 'failed', 498);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-09-2020', 'dd-mm-yyyy'), 'failed', 265);
insert into MISSION (mission_date, status, mission_id)
values (to_date('24-04-2021', 'dd-mm-yyyy'), 'Succeeded', 739);
insert into MISSION (mission_date, status, mission_id)
values (to_date('07-01-2023', 'dd-mm-yyyy'), 'failed', 956);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-09-2024', 'dd-mm-yyyy'), 'Succeeded', 422);
insert into MISSION (mission_date, status, mission_id)
values (to_date('30-04-2022', 'dd-mm-yyyy'), 'Succeeded', 558);
insert into MISSION (mission_date, status, mission_id)
values (to_date('31-08-2024', 'dd-mm-yyyy'), 'failed', 707);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-12-2020', 'dd-mm-yyyy'), 'Succeeded', 911);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-07-2021', 'dd-mm-yyyy'), 'Succeeded', 828);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-08-2020', 'dd-mm-yyyy'), 'Succeeded', 256);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-08-2021', 'dd-mm-yyyy'), 'failed', 455);
insert into MISSION (mission_date, status, mission_id)
values (to_date('26-09-2020', 'dd-mm-yyyy'), 'Succeeded', 907);
insert into MISSION (mission_date, status, mission_id)
values (to_date('11-12-2023', 'dd-mm-yyyy'), 'Succeeded', 22);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-07-2024', 'dd-mm-yyyy'), 'Succeeded', 32);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-05-2023', 'dd-mm-yyyy'), 'failed', 476);
insert into MISSION (mission_date, status, mission_id)
values (to_date('23-12-2021', 'dd-mm-yyyy'), 'failed', 60);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-08-2020', 'dd-mm-yyyy'), 'failed', 949);
insert into MISSION (mission_date, status, mission_id)
values (to_date('07-01-2021', 'dd-mm-yyyy'), 'Succeeded', 405);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-11-2021', 'dd-mm-yyyy'), 'failed', 545);
insert into MISSION (mission_date, status, mission_id)
values (to_date('16-08-2021', 'dd-mm-yyyy'), 'Succeeded', 14);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-02-2024', 'dd-mm-yyyy'), 'Succeeded', 955);
insert into MISSION (mission_date, status, mission_id)
values (to_date('09-04-2024', 'dd-mm-yyyy'), 'failed', 761);
insert into MISSION (mission_date, status, mission_id)
values (to_date('31-03-2022', 'dd-mm-yyyy'), 'failed', 568);
insert into MISSION (mission_date, status, mission_id)
values (to_date('08-07-2024', 'dd-mm-yyyy'), 'Succeeded', 816);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-06-2021', 'dd-mm-yyyy'), 'failed', 379);
insert into MISSION (mission_date, status, mission_id)
values (to_date('19-09-2023', 'dd-mm-yyyy'), 'Succeeded', 543);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-04-2020', 'dd-mm-yyyy'), 'Succeeded', 21);
insert into MISSION (mission_date, status, mission_id)
values (to_date('10-04-2022', 'dd-mm-yyyy'), 'Succeeded', 764);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-07-2024', 'dd-mm-yyyy'), 'failed', 193);
insert into MISSION (mission_date, status, mission_id)
values (to_date('10-06-2022', 'dd-mm-yyyy'), 'failed', 700);
insert into MISSION (mission_date, status, mission_id)
values (to_date('11-03-2021', 'dd-mm-yyyy'), 'Succeeded', 438);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-06-2023', 'dd-mm-yyyy'), 'failed', 671);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-04-2023', 'dd-mm-yyyy'), 'Succeeded', 516);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-07-2023', 'dd-mm-yyyy'), 'failed', 571);
insert into MISSION (mission_date, status, mission_id)
values (to_date('05-07-2024', 'dd-mm-yyyy'), 'Succeeded', 177);
insert into MISSION (mission_date, status, mission_id)
values (to_date('19-07-2024', 'dd-mm-yyyy'), 'Succeeded', 247);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-07-2022', 'dd-mm-yyyy'), 'failed', 50);
insert into MISSION (mission_date, status, mission_id)
values (to_date('29-03-2023', 'dd-mm-yyyy'), 'failed', 713);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-12-2021', 'dd-mm-yyyy'), 'failed', 965);
insert into MISSION (mission_date, status, mission_id)
values (to_date('23-05-2022', 'dd-mm-yyyy'), 'failed', 140);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-07-2023', 'dd-mm-yyyy'), 'failed', 370);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-09-2022', 'dd-mm-yyyy'), 'failed', 90);
insert into MISSION (mission_date, status, mission_id)
values (to_date('10-09-2021', 'dd-mm-yyyy'), 'failed', 948);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-12-2020', 'dd-mm-yyyy'), 'Succeeded', 242);
insert into MISSION (mission_date, status, mission_id)
values (to_date('02-06-2021', 'dd-mm-yyyy'), 'Succeeded', 680);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-02-2021', 'dd-mm-yyyy'), 'failed', 506);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-07-2024', 'dd-mm-yyyy'), 'Succeeded', 383);
insert into MISSION (mission_date, status, mission_id)
values (to_date('16-04-2020', 'dd-mm-yyyy'), 'failed', 178);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-02-2023', 'dd-mm-yyyy'), 'failed', 366);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-11-2023', 'dd-mm-yyyy'), 'Succeeded', 509);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-06-2024', 'dd-mm-yyyy'), 'failed', 793);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-02-2020', 'dd-mm-yyyy'), 'failed', 176);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-02-2022', 'dd-mm-yyyy'), 'Succeeded', 952);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-03-2024', 'dd-mm-yyyy'), 'failed', 347);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-09-2020', 'dd-mm-yyyy'), 'failed', 293);
insert into MISSION (mission_date, status, mission_id)
values (to_date('01-10-2021', 'dd-mm-yyyy'), 'Succeeded', 27);
insert into MISSION (mission_date, status, mission_id)
values (to_date('01-11-2024', 'dd-mm-yyyy'), 'Succeeded', 116);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-05-2024', 'dd-mm-yyyy'), 'failed', 987);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-10-2020', 'dd-mm-yyyy'), 'Succeeded', 709);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-05-2021', 'dd-mm-yyyy'), 'failed', 528);
insert into MISSION (mission_date, status, mission_id)
values (to_date('09-09-2021', 'dd-mm-yyyy'), 'failed', 232);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-10-2022', 'dd-mm-yyyy'), 'Succeeded', 863);
insert into MISSION (mission_date, status, mission_id)
values (to_date('23-10-2022', 'dd-mm-yyyy'), 'Succeeded', 369);
insert into MISSION (mission_date, status, mission_id)
values (to_date('01-02-2023', 'dd-mm-yyyy'), 'Succeeded', 164);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-11-2021', 'dd-mm-yyyy'), 'failed', 424);
commit;
prompt 200 records committed...
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-04-2023', 'dd-mm-yyyy'), 'Succeeded', 805);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-02-2023', 'dd-mm-yyyy'), 'failed', 375);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-07-2022', 'dd-mm-yyyy'), 'failed', 836);
insert into MISSION (mission_date, status, mission_id)
values (to_date('05-09-2022', 'dd-mm-yyyy'), 'Succeeded', 989);
insert into MISSION (mission_date, status, mission_id)
values (to_date('07-03-2023', 'dd-mm-yyyy'), 'failed', 299);
insert into MISSION (mission_date, status, mission_id)
values (to_date('24-11-2024', 'dd-mm-yyyy'), 'Succeeded', 386);
insert into MISSION (mission_date, status, mission_id)
values (to_date('12-12-2022', 'dd-mm-yyyy'), 'Succeeded', 38);
insert into MISSION (mission_date, status, mission_id)
values (to_date('07-06-2022', 'dd-mm-yyyy'), 'Succeeded', 753);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-05-2023', 'dd-mm-yyyy'), 'Succeeded', 769);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-04-2020', 'dd-mm-yyyy'), 'Succeeded', 443);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-09-2022', 'dd-mm-yyyy'), 'failed', 623);
insert into MISSION (mission_date, status, mission_id)
values (to_date('09-01-2023', 'dd-mm-yyyy'), 'failed', 51);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-10-2021', 'dd-mm-yyyy'), 'Succeeded', 297);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-07-2022', 'dd-mm-yyyy'), 'failed', 613);
insert into MISSION (mission_date, status, mission_id)
values (to_date('01-11-2022', 'dd-mm-yyyy'), 'failed', 893);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-07-2020', 'dd-mm-yyyy'), 'failed', 264);
insert into MISSION (mission_date, status, mission_id)
values (to_date('23-09-2022', 'dd-mm-yyyy'), 'failed', 518);
insert into MISSION (mission_date, status, mission_id)
values (to_date('28-06-2024', 'dd-mm-yyyy'), 'Succeeded', 682);
insert into MISSION (mission_date, status, mission_id)
values (to_date('18-09-2024', 'dd-mm-yyyy'), 'failed', 669);
insert into MISSION (mission_date, status, mission_id)
values (to_date('24-08-2023', 'dd-mm-yyyy'), 'Succeeded', 217);
insert into MISSION (mission_date, status, mission_id)
values (to_date('12-09-2022', 'dd-mm-yyyy'), 'failed', 576);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-09-2021', 'dd-mm-yyyy'), 'Succeeded', 653);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-07-2020', 'dd-mm-yyyy'), 'Succeeded', 995);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-04-2021', 'dd-mm-yyyy'), 'failed', 738);
insert into MISSION (mission_date, status, mission_id)
values (to_date('28-01-2020', 'dd-mm-yyyy'), 'failed', 68);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-07-2021', 'dd-mm-yyyy'), 'failed', 983);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-03-2022', 'dd-mm-yyyy'), 'Succeeded', 289);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-02-2021', 'dd-mm-yyyy'), 'Succeeded', 115);
insert into MISSION (mission_date, status, mission_id)
values (to_date('30-06-2022', 'dd-mm-yyyy'), 'failed', 78);
insert into MISSION (mission_date, status, mission_id)
values (to_date('02-02-2024', 'dd-mm-yyyy'), 'Succeeded', 3);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-05-2023', 'dd-mm-yyyy'), 'failed', 643);
insert into MISSION (mission_date, status, mission_id)
values (to_date('31-01-2023', 'dd-mm-yyyy'), 'Succeeded', 221);
insert into MISSION (mission_date, status, mission_id)
values (to_date('19-03-2022', 'dd-mm-yyyy'), 'failed', 839);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-07-2022', 'dd-mm-yyyy'), 'Succeeded', 49);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-04-2021', 'dd-mm-yyyy'), 'Succeeded', 41);
insert into MISSION (mission_date, status, mission_id)
values (to_date('12-06-2020', 'dd-mm-yyyy'), 'failed', 661);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-08-2023', 'dd-mm-yyyy'), 'failed', 637);
insert into MISSION (mission_date, status, mission_id)
values (to_date('08-07-2023', 'dd-mm-yyyy'), 'Succeeded', 279);
insert into MISSION (mission_date, status, mission_id)
values (to_date('07-09-2022', 'dd-mm-yyyy'), 'failed', 663);
insert into MISSION (mission_date, status, mission_id)
values (to_date('10-03-2022', 'dd-mm-yyyy'), 'failed', 657);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-06-2023', 'dd-mm-yyyy'), 'Succeeded', 814);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-03-2024', 'dd-mm-yyyy'), 'failed', 771);
insert into MISSION (mission_date, status, mission_id)
values (to_date('02-04-2023', 'dd-mm-yyyy'), 'failed', 564);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-08-2023', 'dd-mm-yyyy'), 'Succeeded', 766);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-01-2024', 'dd-mm-yyyy'), 'Succeeded', 420);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-07-2020', 'dd-mm-yyyy'), 'Succeeded', 736);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-06-2022', 'dd-mm-yyyy'), 'failed', 108);
insert into MISSION (mission_date, status, mission_id)
values (to_date('02-12-2023', 'dd-mm-yyyy'), 'failed', 48);
insert into MISSION (mission_date, status, mission_id)
values (to_date('10-06-2023', 'dd-mm-yyyy'), 'failed', 337);
insert into MISSION (mission_date, status, mission_id)
values (to_date('09-05-2021', 'dd-mm-yyyy'), 'Succeeded', 809);
insert into MISSION (mission_date, status, mission_id)
values (to_date('19-12-2022', 'dd-mm-yyyy'), 'Succeeded', 208);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-09-2022', 'dd-mm-yyyy'), 'failed', 99);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-12-2020', 'dd-mm-yyyy'), 'failed', 490);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-06-2022', 'dd-mm-yyyy'), 'failed', 931);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-07-2021', 'dd-mm-yyyy'), 'failed', 462);
insert into MISSION (mission_date, status, mission_id)
values (to_date('24-07-2020', 'dd-mm-yyyy'), 'Succeeded', 848);
insert into MISSION (mission_date, status, mission_id)
values (to_date('12-07-2023', 'dd-mm-yyyy'), 'Succeeded', 309);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-06-2023', 'dd-mm-yyyy'), 'failed', 220);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-01-2022', 'dd-mm-yyyy'), 'Succeeded', 262);
insert into MISSION (mission_date, status, mission_id)
values (to_date('09-02-2023', 'dd-mm-yyyy'), 'Succeeded', 634);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-02-2022', 'dd-mm-yyyy'), 'failed', 784);
insert into MISSION (mission_date, status, mission_id)
values (to_date('09-03-2021', 'dd-mm-yyyy'), 'Succeeded', 254);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-09-2020', 'dd-mm-yyyy'), 'Succeeded', 972);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-07-2020', 'dd-mm-yyyy'), 'Succeeded', 591);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-09-2024', 'dd-mm-yyyy'), 'Succeeded', 782);
insert into MISSION (mission_date, status, mission_id)
values (to_date('30-03-2020', 'dd-mm-yyyy'), 'Succeeded', 777);
insert into MISSION (mission_date, status, mission_id)
values (to_date('01-05-2024', 'dd-mm-yyyy'), 'Succeeded', 981);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-08-2023', 'dd-mm-yyyy'), 'failed', 889);
insert into MISSION (mission_date, status, mission_id)
values (to_date('30-08-2022', 'dd-mm-yyyy'), 'Succeeded', 479);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-07-2022', 'dd-mm-yyyy'), 'Succeeded', 114);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-05-2021', 'dd-mm-yyyy'), 'Succeeded', 514);
insert into MISSION (mission_date, status, mission_id)
values (to_date('18-05-2024', 'dd-mm-yyyy'), 'failed', 873);
insert into MISSION (mission_date, status, mission_id)
values (to_date('26-08-2022', 'dd-mm-yyyy'), 'failed', 173);
insert into MISSION (mission_date, status, mission_id)
values (to_date('02-03-2020', 'dd-mm-yyyy'), 'failed', 325);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-07-2023', 'dd-mm-yyyy'), 'failed', 689);
insert into MISSION (mission_date, status, mission_id)
values (to_date('02-01-2020', 'dd-mm-yyyy'), 'failed', 735);
insert into MISSION (mission_date, status, mission_id)
values (to_date('10-03-2023', 'dd-mm-yyyy'), 'failed', 930);
insert into MISSION (mission_date, status, mission_id)
values (to_date('30-06-2022', 'dd-mm-yyyy'), 'Succeeded', 722);
insert into MISSION (mission_date, status, mission_id)
values (to_date('29-06-2021', 'dd-mm-yyyy'), 'failed', 748);
insert into MISSION (mission_date, status, mission_id)
values (to_date('28-03-2024', 'dd-mm-yyyy'), 'Succeeded', 705);
insert into MISSION (mission_date, status, mission_id)
values (to_date('24-10-2020', 'dd-mm-yyyy'), 'Succeeded', 929);
insert into MISSION (mission_date, status, mission_id)
values (to_date('09-01-2020', 'dd-mm-yyyy'), 'Succeeded', 260);
insert into MISSION (mission_date, status, mission_id)
values (to_date('11-04-2022', 'dd-mm-yyyy'), 'failed', 181);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-06-2024', 'dd-mm-yyyy'), 'failed', 275);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-02-2021', 'dd-mm-yyyy'), 'Succeeded', 500);
insert into MISSION (mission_date, status, mission_id)
values (to_date('03-01-2024', 'dd-mm-yyyy'), 'Succeeded', 749);
insert into MISSION (mission_date, status, mission_id)
values (to_date('19-11-2024', 'dd-mm-yyyy'), 'failed', 897);
insert into MISSION (mission_date, status, mission_id)
values (to_date('26-04-2024', 'dd-mm-yyyy'), 'Succeeded', 357);
insert into MISSION (mission_date, status, mission_id)
values (to_date('09-02-2020', 'dd-mm-yyyy'), 'Succeeded', 605);
insert into MISSION (mission_date, status, mission_id)
values (to_date('18-08-2022', 'dd-mm-yyyy'), 'failed', 618);
insert into MISSION (mission_date, status, mission_id)
values (to_date('12-03-2024', 'dd-mm-yyyy'), 'Succeeded', 175);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-05-2023', 'dd-mm-yyyy'), 'failed', 681);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-07-2024', 'dd-mm-yyyy'), 'failed', 145);
insert into MISSION (mission_date, status, mission_id)
values (to_date('08-01-2020', 'dd-mm-yyyy'), 'Succeeded', 674);
insert into MISSION (mission_date, status, mission_id)
values (to_date('18-05-2020', 'dd-mm-yyyy'), 'failed', 418);
insert into MISSION (mission_date, status, mission_id)
values (to_date('07-12-2021', 'dd-mm-yyyy'), 'Succeeded', 728);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-10-2022', 'dd-mm-yyyy'), 'failed', 895);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-02-2022', 'dd-mm-yyyy'), 'Succeeded', 842);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-08-2022', 'dd-mm-yyyy'), 'Succeeded', 153);
insert into MISSION (mission_date, status, mission_id)
values (to_date('26-02-2023', 'dd-mm-yyyy'), 'Succeeded', 515);
commit;
prompt 300 records committed...
insert into MISSION (mission_date, status, mission_id)
values (to_date('02-11-2022', 'dd-mm-yyyy'), 'failed', 86);
insert into MISSION (mission_date, status, mission_id)
values (to_date('01-06-2022', 'dd-mm-yyyy'), 'Succeeded', 280);
insert into MISSION (mission_date, status, mission_id)
values (to_date('11-05-2022', 'dd-mm-yyyy'), 'Succeeded', 971);
insert into MISSION (mission_date, status, mission_id)
values (to_date('11-10-2021', 'dd-mm-yyyy'), 'failed', 327);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-01-2021', 'dd-mm-yyyy'), 'failed', 767);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-11-2021', 'dd-mm-yyyy'), 'failed', 85);
insert into MISSION (mission_date, status, mission_id)
values (to_date('08-11-2021', 'dd-mm-yyyy'), 'Succeeded', 597);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-04-2022', 'dd-mm-yyyy'), 'Succeeded', 104);
insert into MISSION (mission_date, status, mission_id)
values (to_date('29-10-2023', 'dd-mm-yyyy'), 'Succeeded', 147);
insert into MISSION (mission_date, status, mission_id)
values (to_date('08-01-2021', 'dd-mm-yyyy'), 'failed', 156);
insert into MISSION (mission_date, status, mission_id)
values (to_date('08-12-2023', 'dd-mm-yyyy'), 'failed', 158);
insert into MISSION (mission_date, status, mission_id)
values (to_date('16-07-2021', 'dd-mm-yyyy'), 'Succeeded', 721);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-09-2022', 'dd-mm-yyyy'), 'failed', 126);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-02-2024', 'dd-mm-yyyy'), 'failed', 46);
insert into MISSION (mission_date, status, mission_id)
values (to_date('29-03-2023', 'dd-mm-yyyy'), 'failed', 102);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-01-2020', 'dd-mm-yyyy'), 'Succeeded', 630);
insert into MISSION (mission_date, status, mission_id)
values (to_date('20-06-2021', 'dd-mm-yyyy'), 'failed', 620);
insert into MISSION (mission_date, status, mission_id)
values (to_date('28-12-2023', 'dd-mm-yyyy'), 'Succeeded', 646);
insert into MISSION (mission_date, status, mission_id)
values (to_date('10-07-2022', 'dd-mm-yyyy'), 'Succeeded', 305);
insert into MISSION (mission_date, status, mission_id)
values (to_date('30-12-2022', 'dd-mm-yyyy'), 'failed', 493);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-04-2021', 'dd-mm-yyyy'), 'Succeeded', 313);
insert into MISSION (mission_date, status, mission_id)
values (to_date('17-05-2021', 'dd-mm-yyyy'), 'Succeeded', 18);
insert into MISSION (mission_date, status, mission_id)
values (to_date('01-03-2020', 'dd-mm-yyyy'), 'failed', 794);
insert into MISSION (mission_date, status, mission_id)
values (to_date('04-09-2021', 'dd-mm-yyyy'), 'Succeeded', 91);
insert into MISSION (mission_date, status, mission_id)
values (to_date('25-11-2022', 'dd-mm-yyyy'), 'failed', 807);
insert into MISSION (mission_date, status, mission_id)
values (to_date('13-10-2020', 'dd-mm-yyyy'), 'Succeeded', 128);
insert into MISSION (mission_date, status, mission_id)
values (to_date('24-04-2021', 'dd-mm-yyyy'), 'Succeeded', 825);
insert into MISSION (mission_date, status, mission_id)
values (to_date('27-02-2024', 'dd-mm-yyyy'), 'Succeeded', 832);
insert into MISSION (mission_date, status, mission_id)
values (to_date('31-07-2023', 'dd-mm-yyyy'), 'failed', 234);
insert into MISSION (mission_date, status, mission_id)
values (to_date('05-03-2022', 'dd-mm-yyyy'), 'failed', 526);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-02-2022', 'dd-mm-yyyy'), 'failed', 403);
insert into MISSION (mission_date, status, mission_id)
values (to_date('29-12-2020', 'dd-mm-yyyy'), 'Succeeded', 351);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-11-2021', 'dd-mm-yyyy'), 'Succeeded', 241);
insert into MISSION (mission_date, status, mission_id)
values (to_date('14-09-2020', 'dd-mm-yyyy'), 'failed', 792);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-07-2021', 'dd-mm-yyyy'), 'failed', 740);
insert into MISSION (mission_date, status, mission_id)
values (to_date('31-03-2020', 'dd-mm-yyyy'), 'failed', 132);
insert into MISSION (mission_date, status, mission_id)
values (to_date('09-03-2020', 'dd-mm-yyyy'), 'failed', 274);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-06-2023', 'dd-mm-yyyy'), 'Succeeded', 918);
insert into MISSION (mission_date, status, mission_id)
values (to_date('24-04-2024', 'dd-mm-yyyy'), 'Succeeded', 649);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-01-2021', 'dd-mm-yyyy'), 'failed', 538);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-08-2022', 'dd-mm-yyyy'), 'failed', 561);
insert into MISSION (mission_date, status, mission_id)
values (to_date('21-02-2021', 'dd-mm-yyyy'), 'Succeeded', 103);
insert into MISSION (mission_date, status, mission_id)
values (to_date('15-03-2020', 'dd-mm-yyyy'), 'failed', 419);
insert into MISSION (mission_date, status, mission_id)
values (to_date('22-04-2024', 'dd-mm-yyyy'), 'failed', 328);
insert into MISSION (mission_date, status, mission_id)
values (to_date('18-10-2020', 'dd-mm-yyyy'), 'failed', 670);
insert into MISSION (mission_date, status, mission_id)
values (to_date('06-07-2020', 'dd-mm-yyyy'), 'Succeeded', 382);
insert into MISSION (mission_date, status, mission_id)
values (to_date('16-01-2023', 'dd-mm-yyyy'), 'failed', 209);
insert into MISSION (mission_date, status, mission_id)
values (to_date('26-06-2020', 'dd-mm-yyyy'), 'failed', 802);
commit;
prompt 348 records loaded
prompt Loading SOLIDER...
insert into SOLIDER (id, rank, joined_date, name)
values (69012, 'Aluf', to_date('04-04-1995', 'dd-mm-yyyy'), 'Miles');
insert into SOLIDER (id, rank, joined_date, name)
values (91417, 'Samal', to_date('17-11-2002', 'dd-mm-yyyy'), 'Cliff');
insert into SOLIDER (id, rank, joined_date, name)
values (96117, 'Samal', to_date('12-01-1996', 'dd-mm-yyyy'), 'Christian');
insert into SOLIDER (id, rank, joined_date, name)
values (25921, 'Aluf', to_date('11-01-2013', 'dd-mm-yyyy'), 'Sal');
insert into SOLIDER (id, rank, joined_date, name)
values (43606, 'Ranag', to_date('27-10-1991', 'dd-mm-yyyy'), 'Curt');
insert into SOLIDER (id, rank, joined_date, name)
values (79861, 'Samal', to_date('10-01-1993', 'dd-mm-yyyy'), 'Vincent');
insert into SOLIDER (id, rank, joined_date, name)
values (90467, 'Ranag', to_date('27-12-2002', 'dd-mm-yyyy'), 'Sara');
insert into SOLIDER (id, rank, joined_date, name)
values (59046, 'Ranag', to_date('12-10-2023', 'dd-mm-yyyy'), 'Trini');
insert into SOLIDER (id, rank, joined_date, name)
values (93998, 'Samal', to_date('07-12-2009', 'dd-mm-yyyy'), 'Maureen');
insert into SOLIDER (id, rank, joined_date, name)
values (12671, 'Samal', to_date('31-10-2001', 'dd-mm-yyyy'), 'Guy');
insert into SOLIDER (id, rank, joined_date, name)
values (50281, 'Aluf', to_date('14-06-1998', 'dd-mm-yyyy'), 'Christian');
insert into SOLIDER (id, rank, joined_date, name)
values (86616, 'Aluf', to_date('10-07-2004', 'dd-mm-yyyy'), 'Nina');
insert into SOLIDER (id, rank, joined_date, name)
values (50263, 'Samal', to_date('12-09-2015', 'dd-mm-yyyy'), 'Hugh');
insert into SOLIDER (id, rank, joined_date, name)
values (93410, 'Aluf', to_date('19-10-2019', 'dd-mm-yyyy'), 'Merrilee');
insert into SOLIDER (id, rank, joined_date, name)
values (41383, 'Ranag', to_date('22-10-1998', 'dd-mm-yyyy'), 'Jay');
insert into SOLIDER (id, rank, joined_date, name)
values (43311, 'Aluf', to_date('09-08-1992', 'dd-mm-yyyy'), 'Roberta');
insert into SOLIDER (id, rank, joined_date, name)
values (16984, 'Ranag', to_date('13-02-2022', 'dd-mm-yyyy'), 'Rupert');
insert into SOLIDER (id, rank, joined_date, name)
values (36491, 'Ranag', to_date('13-12-2017', 'dd-mm-yyyy'), 'Deborah');
insert into SOLIDER (id, rank, joined_date, name)
values (11280, 'Ranag', to_date('15-01-2011', 'dd-mm-yyyy'), 'Mac');
insert into SOLIDER (id, rank, joined_date, name)
values (49667, 'Ranag', to_date('24-07-2000', 'dd-mm-yyyy'), 'Dionne');
insert into SOLIDER (id, rank, joined_date, name)
values (77651, 'Aluf', to_date('05-07-2010', 'dd-mm-yyyy'), 'Manu');
insert into SOLIDER (id, rank, joined_date, name)
values (61624, 'Samal', to_date('09-03-2005', 'dd-mm-yyyy'), 'Bernard');
insert into SOLIDER (id, rank, joined_date, name)
values (72499, 'Aluf', to_date('12-02-2022', 'dd-mm-yyyy'), 'Mos');
insert into SOLIDER (id, rank, joined_date, name)
values (73179, 'Aluf', to_date('04-07-2005', 'dd-mm-yyyy'), 'Roy');
insert into SOLIDER (id, rank, joined_date, name)
values (44659, 'Samal', to_date('31-10-2021', 'dd-mm-yyyy'), 'Clay');
insert into SOLIDER (id, rank, joined_date, name)
values (21591, 'Aluf', to_date('04-09-2017', 'dd-mm-yyyy'), 'Corey');
insert into SOLIDER (id, rank, joined_date, name)
values (74806, 'Samal', to_date('11-05-2022', 'dd-mm-yyyy'), 'Chubby');
insert into SOLIDER (id, rank, joined_date, name)
values (33859, 'Samal', to_date('02-07-2006', 'dd-mm-yyyy'), 'Lydia');
insert into SOLIDER (id, rank, joined_date, name)
values (98199, 'Aluf', to_date('07-02-2010', 'dd-mm-yyyy'), 'Collective');
insert into SOLIDER (id, rank, joined_date, name)
values (41134, 'Ranag', to_date('20-03-2006', 'dd-mm-yyyy'), 'Alan');
insert into SOLIDER (id, rank, joined_date, name)
values (66315, 'Samal', to_date('22-10-1994', 'dd-mm-yyyy'), 'Julie');
insert into SOLIDER (id, rank, joined_date, name)
values (87570, 'Aluf', to_date('03-12-2013', 'dd-mm-yyyy'), 'Dianne');
insert into SOLIDER (id, rank, joined_date, name)
values (91812, 'Samal', to_date('30-09-2001', 'dd-mm-yyyy'), 'Uma');
insert into SOLIDER (id, rank, joined_date, name)
values (89182, 'Ranag', to_date('13-08-1995', 'dd-mm-yyyy'), 'Sandra');
insert into SOLIDER (id, rank, joined_date, name)
values (43494, 'Samal', to_date('13-08-2006', 'dd-mm-yyyy'), 'Jim');
insert into SOLIDER (id, rank, joined_date, name)
values (20472, 'Ranag', to_date('08-11-2004', 'dd-mm-yyyy'), 'Linda');
insert into SOLIDER (id, rank, joined_date, name)
values (13501, 'Samal', to_date('24-12-2016', 'dd-mm-yyyy'), 'Shirley');
insert into SOLIDER (id, rank, joined_date, name)
values (84402, 'Samal', to_date('24-01-2006', 'dd-mm-yyyy'), 'Goldie');
insert into SOLIDER (id, rank, joined_date, name)
values (56717, 'Samal', to_date('31-05-1994', 'dd-mm-yyyy'), 'Mena');
insert into SOLIDER (id, rank, joined_date, name)
values (65685, 'Samal', to_date('12-06-2014', 'dd-mm-yyyy'), 'Thin');
insert into SOLIDER (id, rank, joined_date, name)
values (91288, 'Samal', to_date('12-03-1991', 'dd-mm-yyyy'), 'Scott');
insert into SOLIDER (id, rank, joined_date, name)
values (89645, 'Samal', to_date('08-07-2008', 'dd-mm-yyyy'), 'Thin');
insert into SOLIDER (id, rank, joined_date, name)
values (49150, 'Samal', to_date('07-09-1991', 'dd-mm-yyyy'), 'Terrence');
insert into SOLIDER (id, rank, joined_date, name)
values (31068, 'Aluf', to_date('18-04-2023', 'dd-mm-yyyy'), 'Marie');
insert into SOLIDER (id, rank, joined_date, name)
values (98765, 'Ranag', to_date('21-04-2002', 'dd-mm-yyyy'), 'Richard');
insert into SOLIDER (id, rank, joined_date, name)
values (61947, 'Samal', to_date('25-01-2016', 'dd-mm-yyyy'), 'Charlton');
insert into SOLIDER (id, rank, joined_date, name)
values (51202, 'Samal', to_date('19-02-2016', 'dd-mm-yyyy'), 'Rip');
insert into SOLIDER (id, rank, joined_date, name)
values (27000, 'Aluf', to_date('28-10-2014', 'dd-mm-yyyy'), 'Helen');
insert into SOLIDER (id, rank, joined_date, name)
values (82877, 'Aluf', to_date('26-02-2022', 'dd-mm-yyyy'), 'Vienna');
insert into SOLIDER (id, rank, joined_date, name)
values (46971, 'Ranag', to_date('21-04-2005', 'dd-mm-yyyy'), 'Eileen');
insert into SOLIDER (id, rank, joined_date, name)
values (19409, 'Aluf', to_date('02-02-1991', 'dd-mm-yyyy'), 'Tony');
insert into SOLIDER (id, rank, joined_date, name)
values (38596, 'Samal', to_date('26-08-1998', 'dd-mm-yyyy'), 'Roddy');
insert into SOLIDER (id, rank, joined_date, name)
values (25029, 'Samal', to_date('19-11-2007', 'dd-mm-yyyy'), 'Judge');
insert into SOLIDER (id, rank, joined_date, name)
values (17899, 'Aluf', to_date('18-09-2007', 'dd-mm-yyyy'), 'Lizzy');
insert into SOLIDER (id, rank, joined_date, name)
values (30880, 'Ranag', to_date('30-10-2006', 'dd-mm-yyyy'), 'King');
insert into SOLIDER (id, rank, joined_date, name)
values (31269, 'Ranag', to_date('18-12-1999', 'dd-mm-yyyy'), 'Rebecca');
insert into SOLIDER (id, rank, joined_date, name)
values (35534, 'Samal', to_date('13-04-1993', 'dd-mm-yyyy'), 'Pelvic');
insert into SOLIDER (id, rank, joined_date, name)
values (69873, 'Ranag', to_date('13-01-1997', 'dd-mm-yyyy'), 'Susan');
insert into SOLIDER (id, rank, joined_date, name)
values (33297, 'Aluf', to_date('05-01-2004', 'dd-mm-yyyy'), 'Quentin');
insert into SOLIDER (id, rank, joined_date, name)
values (56283, 'Ranag', to_date('25-11-2014', 'dd-mm-yyyy'), 'Stephen');
insert into SOLIDER (id, rank, joined_date, name)
values (14722, 'Aluf', to_date('11-03-2010', 'dd-mm-yyyy'), 'Saul');
insert into SOLIDER (id, rank, joined_date, name)
values (81110, 'Ranag', to_date('26-08-2014', 'dd-mm-yyyy'), 'Viggo');
insert into SOLIDER (id, rank, joined_date, name)
values (39359, 'Ranag', to_date('02-01-2001', 'dd-mm-yyyy'), 'Edward');
insert into SOLIDER (id, rank, joined_date, name)
values (89638, 'Aluf', to_date('04-12-1999', 'dd-mm-yyyy'), 'Tara');
insert into SOLIDER (id, rank, joined_date, name)
values (25161, 'Ranag', to_date('13-11-2009', 'dd-mm-yyyy'), 'Austin');
insert into SOLIDER (id, rank, joined_date, name)
values (85120, 'Ranag', to_date('10-12-2022', 'dd-mm-yyyy'), 'Tori');
insert into SOLIDER (id, rank, joined_date, name)
values (54562, 'Samal', to_date('17-04-2015', 'dd-mm-yyyy'), 'Kylie');
insert into SOLIDER (id, rank, joined_date, name)
values (48744, 'Samal', to_date('09-03-1997', 'dd-mm-yyyy'), 'Danni');
insert into SOLIDER (id, rank, joined_date, name)
values (41661, 'Samal', to_date('11-05-2022', 'dd-mm-yyyy'), 'Darius');
insert into SOLIDER (id, rank, joined_date, name)
values (20709, 'Ranag', to_date('06-09-1996', 'dd-mm-yyyy'), 'Rascal');
insert into SOLIDER (id, rank, joined_date, name)
values (93860, 'Aluf', to_date('30-10-2018', 'dd-mm-yyyy'), 'Guy');
insert into SOLIDER (id, rank, joined_date, name)
values (75748, 'Aluf', to_date('03-12-2021', 'dd-mm-yyyy'), 'Curtis');
insert into SOLIDER (id, rank, joined_date, name)
values (56825, 'Samal', to_date('15-11-2009', 'dd-mm-yyyy'), 'Chrissie');
insert into SOLIDER (id, rank, joined_date, name)
values (15313, 'Aluf', to_date('28-05-2014', 'dd-mm-yyyy'), 'Nastassja');
insert into SOLIDER (id, rank, joined_date, name)
values (20562, 'Aluf', to_date('05-06-1995', 'dd-mm-yyyy'), 'Fats');
insert into SOLIDER (id, rank, joined_date, name)
values (20873, 'Samal', to_date('21-10-2017', 'dd-mm-yyyy'), 'Raymond');
insert into SOLIDER (id, rank, joined_date, name)
values (97719, 'Aluf', to_date('01-03-1992', 'dd-mm-yyyy'), 'Dionne');
insert into SOLIDER (id, rank, joined_date, name)
values (46105, 'Samal', to_date('09-10-2009', 'dd-mm-yyyy'), 'Madeleine');
insert into SOLIDER (id, rank, joined_date, name)
values (96325, 'Ranag', to_date('14-02-1998', 'dd-mm-yyyy'), 'Armin');
insert into SOLIDER (id, rank, joined_date, name)
values (81300, 'Aluf', to_date('02-05-2016', 'dd-mm-yyyy'), 'Patti');
insert into SOLIDER (id, rank, joined_date, name)
values (64759, 'Aluf', to_date('27-11-2001', 'dd-mm-yyyy'), 'Natacha');
insert into SOLIDER (id, rank, joined_date, name)
values (45555, 'Ranag', to_date('17-12-1998', 'dd-mm-yyyy'), 'Lili');
insert into SOLIDER (id, rank, joined_date, name)
values (20047, 'Ranag', to_date('25-07-2002', 'dd-mm-yyyy'), 'Vondie');
insert into SOLIDER (id, rank, joined_date, name)
values (17842, 'Samal', to_date('17-03-1990', 'dd-mm-yyyy'), 'Dick');
insert into SOLIDER (id, rank, joined_date, name)
values (15047, 'Ranag', to_date('20-01-2006', 'dd-mm-yyyy'), 'Armand');
insert into SOLIDER (id, rank, joined_date, name)
values (95871, 'Samal', to_date('11-01-2002', 'dd-mm-yyyy'), 'Daniel');
insert into SOLIDER (id, rank, joined_date, name)
values (11196, 'Ranag', to_date('14-05-1998', 'dd-mm-yyyy'), 'Jimmie');
insert into SOLIDER (id, rank, joined_date, name)
values (60493, 'Samal', to_date('09-09-2012', 'dd-mm-yyyy'), 'Diamond');
insert into SOLIDER (id, rank, joined_date, name)
values (90143, 'Aluf', to_date('28-03-1997', 'dd-mm-yyyy'), 'Mitchell');
insert into SOLIDER (id, rank, joined_date, name)
values (90114, 'Samal', to_date('21-04-1998', 'dd-mm-yyyy'), 'Chaka');
insert into SOLIDER (id, rank, joined_date, name)
values (26485, 'Samal', to_date('05-07-2012', 'dd-mm-yyyy'), 'Hazel');
insert into SOLIDER (id, rank, joined_date, name)
values (36211, 'Aluf', to_date('31-12-2008', 'dd-mm-yyyy'), 'Tal');
insert into SOLIDER (id, rank, joined_date, name)
values (88294, 'Samal', to_date('13-02-2017', 'dd-mm-yyyy'), 'Brittany');
insert into SOLIDER (id, rank, joined_date, name)
values (15526, 'Aluf', to_date('24-09-2017', 'dd-mm-yyyy'), 'Joely');
insert into SOLIDER (id, rank, joined_date, name)
values (43194, 'Aluf', to_date('12-09-1996', 'dd-mm-yyyy'), 'Lindsey');
insert into SOLIDER (id, rank, joined_date, name)
values (96693, 'Ranag', to_date('04-09-2017', 'dd-mm-yyyy'), 'Azucar');
insert into SOLIDER (id, rank, joined_date, name)
values (14431, 'Aluf', to_date('16-10-2009', 'dd-mm-yyyy'), 'Lari');
insert into SOLIDER (id, rank, joined_date, name)
values (59092, 'Samal', to_date('14-04-1994', 'dd-mm-yyyy'), 'Carla');
insert into SOLIDER (id, rank, joined_date, name)
values (75846, 'Aluf', to_date('25-09-2020', 'dd-mm-yyyy'), 'Deborah');
insert into SOLIDER (id, rank, joined_date, name)
values (23929, 'Samal', to_date('13-12-2009', 'dd-mm-yyyy'), 'Mira');
commit;
prompt 100 records committed...
insert into SOLIDER (id, rank, joined_date, name)
values (96835, 'Aluf', to_date('13-02-2015', 'dd-mm-yyyy'), 'Elijah');
insert into SOLIDER (id, rank, joined_date, name)
values (90867, 'Aluf', to_date('22-04-1993', 'dd-mm-yyyy'), 'Hugo');
insert into SOLIDER (id, rank, joined_date, name)
values (15093, 'Ranag', to_date('27-11-2023', 'dd-mm-yyyy'), 'Gailard');
insert into SOLIDER (id, rank, joined_date, name)
values (46875, 'Aluf', to_date('18-02-2015', 'dd-mm-yyyy'), 'Danny');
insert into SOLIDER (id, rank, joined_date, name)
values (92692, 'Aluf', to_date('23-02-2022', 'dd-mm-yyyy'), 'Bridgette');
insert into SOLIDER (id, rank, joined_date, name)
values (36202, 'Aluf', to_date('28-11-1996', 'dd-mm-yyyy'), 'Gilberto');
insert into SOLIDER (id, rank, joined_date, name)
values (88824, 'Aluf', to_date('08-05-2008', 'dd-mm-yyyy'), 'Brooke');
insert into SOLIDER (id, rank, joined_date, name)
values (58113, 'Aluf', to_date('23-12-2007', 'dd-mm-yyyy'), 'Carolyn');
insert into SOLIDER (id, rank, joined_date, name)
values (15875, 'Samal', to_date('16-06-1992', 'dd-mm-yyyy'), 'Rod');
insert into SOLIDER (id, rank, joined_date, name)
values (70189, 'Samal', to_date('03-05-1995', 'dd-mm-yyyy'), 'Collin');
insert into SOLIDER (id, rank, joined_date, name)
values (78836, 'Ranag', to_date('10-06-1994', 'dd-mm-yyyy'), 'Julianna');
insert into SOLIDER (id, rank, joined_date, name)
values (74963, 'Samal', to_date('23-01-2000', 'dd-mm-yyyy'), 'Franco');
insert into SOLIDER (id, rank, joined_date, name)
values (64715, 'Ranag', to_date('18-07-2019', 'dd-mm-yyyy'), 'LeVar');
insert into SOLIDER (id, rank, joined_date, name)
values (12103, 'Aluf', to_date('05-05-2010', 'dd-mm-yyyy'), 'Ritchie');
insert into SOLIDER (id, rank, joined_date, name)
values (48610, 'Ranag', to_date('20-02-2010', 'dd-mm-yyyy'), 'Kelly');
insert into SOLIDER (id, rank, joined_date, name)
values (78377, 'Ranag', to_date('27-02-1995', 'dd-mm-yyyy'), 'Joseph');
insert into SOLIDER (id, rank, joined_date, name)
values (16453, 'Samal', to_date('13-03-2012', 'dd-mm-yyyy'), 'Harriet');
insert into SOLIDER (id, rank, joined_date, name)
values (53179, 'Ranag', to_date('24-07-2016', 'dd-mm-yyyy'), 'Casey');
insert into SOLIDER (id, rank, joined_date, name)
values (93310, 'Aluf', to_date('27-05-2012', 'dd-mm-yyyy'), 'Rade');
insert into SOLIDER (id, rank, joined_date, name)
values (29600, 'Samal', to_date('12-08-2012', 'dd-mm-yyyy'), 'Merrill');
insert into SOLIDER (id, rank, joined_date, name)
values (43901, 'Ranag', to_date('15-11-2023', 'dd-mm-yyyy'), 'Kevin');
insert into SOLIDER (id, rank, joined_date, name)
values (62173, 'Samal', to_date('25-11-1998', 'dd-mm-yyyy'), 'Marty');
insert into SOLIDER (id, rank, joined_date, name)
values (89786, 'Samal', to_date('12-07-2012', 'dd-mm-yyyy'), 'Rosie');
insert into SOLIDER (id, rank, joined_date, name)
values (64616, 'Ranag', to_date('21-09-2008', 'dd-mm-yyyy'), 'Lin');
insert into SOLIDER (id, rank, joined_date, name)
values (20999, 'Aluf', to_date('25-01-2004', 'dd-mm-yyyy'), 'Xander');
insert into SOLIDER (id, rank, joined_date, name)
values (46466, 'Ranag', to_date('19-11-2009', 'dd-mm-yyyy'), 'Morris');
insert into SOLIDER (id, rank, joined_date, name)
values (68791, 'Ranag', to_date('22-07-1997', 'dd-mm-yyyy'), 'Nora');
insert into SOLIDER (id, rank, joined_date, name)
values (66373, 'Samal', to_date('07-02-2002', 'dd-mm-yyyy'), 'Charlton');
insert into SOLIDER (id, rank, joined_date, name)
values (72816, 'Aluf', to_date('09-09-1991', 'dd-mm-yyyy'), 'Tzi');
insert into SOLIDER (id, rank, joined_date, name)
values (79848, 'Aluf', to_date('22-01-2023', 'dd-mm-yyyy'), 'Beth');
insert into SOLIDER (id, rank, joined_date, name)
values (53876, 'Ranag', to_date('12-08-2021', 'dd-mm-yyyy'), 'Gabriel');
insert into SOLIDER (id, rank, joined_date, name)
values (37002, 'Aluf', to_date('25-01-1995', 'dd-mm-yyyy'), 'Tal');
insert into SOLIDER (id, rank, joined_date, name)
values (58884, 'Samal', to_date('09-06-2002', 'dd-mm-yyyy'), 'Buffy');
insert into SOLIDER (id, rank, joined_date, name)
values (52513, 'Samal', to_date('10-05-1990', 'dd-mm-yyyy'), 'Jamie');
insert into SOLIDER (id, rank, joined_date, name)
values (78053, 'Samal', to_date('26-04-1991', 'dd-mm-yyyy'), 'Ronnie');
insert into SOLIDER (id, rank, joined_date, name)
values (25594, 'Ranag', to_date('31-12-1996', 'dd-mm-yyyy'), 'Harriet');
insert into SOLIDER (id, rank, joined_date, name)
values (34306, 'Aluf', to_date('10-03-2018', 'dd-mm-yyyy'), 'Derek');
insert into SOLIDER (id, rank, joined_date, name)
values (43285, 'Samal', to_date('15-06-2001', 'dd-mm-yyyy'), 'Lily');
insert into SOLIDER (id, rank, joined_date, name)
values (22685, 'Samal', to_date('18-02-1995', 'dd-mm-yyyy'), 'Charles');
insert into SOLIDER (id, rank, joined_date, name)
values (55982, 'Aluf', to_date('24-09-2013', 'dd-mm-yyyy'), 'Lynette');
insert into SOLIDER (id, rank, joined_date, name)
values (88649, 'Aluf', to_date('07-05-2010', 'dd-mm-yyyy'), 'Lari');
insert into SOLIDER (id, rank, joined_date, name)
values (69617, 'Samal', to_date('08-03-2001', 'dd-mm-yyyy'), 'Blair');
insert into SOLIDER (id, rank, joined_date, name)
values (78596, 'Samal', to_date('03-10-2020', 'dd-mm-yyyy'), 'James');
insert into SOLIDER (id, rank, joined_date, name)
values (54516, 'Ranag', to_date('03-12-2002', 'dd-mm-yyyy'), 'Kevn');
insert into SOLIDER (id, rank, joined_date, name)
values (95939, 'Ranag', to_date('29-03-1997', 'dd-mm-yyyy'), 'Chaka');
insert into SOLIDER (id, rank, joined_date, name)
values (15365, 'Aluf', to_date('13-11-2016', 'dd-mm-yyyy'), 'Michael');
insert into SOLIDER (id, rank, joined_date, name)
values (51627, 'Aluf', to_date('27-06-2012', 'dd-mm-yyyy'), 'Greg');
insert into SOLIDER (id, rank, joined_date, name)
values (44507, 'Ranag', to_date('03-06-1999', 'dd-mm-yyyy'), 'Jeanne');
insert into SOLIDER (id, rank, joined_date, name)
values (86888, 'Ranag', to_date('27-06-1999', 'dd-mm-yyyy'), 'Julio');
insert into SOLIDER (id, rank, joined_date, name)
values (91907, 'Samal', to_date('25-09-2011', 'dd-mm-yyyy'), 'Lance');
insert into SOLIDER (id, rank, joined_date, name)
values (90416, 'Ranag', to_date('10-08-1996', 'dd-mm-yyyy'), 'Ramsey');
insert into SOLIDER (id, rank, joined_date, name)
values (74006, 'Samal', to_date('27-08-2002', 'dd-mm-yyyy'), 'Jean');
insert into SOLIDER (id, rank, joined_date, name)
values (87781, 'Ranag', to_date('13-05-1995', 'dd-mm-yyyy'), 'Rosie');
insert into SOLIDER (id, rank, joined_date, name)
values (54801, 'Ranag', to_date('01-04-2010', 'dd-mm-yyyy'), 'Albertina');
insert into SOLIDER (id, rank, joined_date, name)
values (80838, 'Samal', to_date('28-09-2002', 'dd-mm-yyyy'), 'Ted');
insert into SOLIDER (id, rank, joined_date, name)
values (54693, 'Ranag', to_date('28-12-1999', 'dd-mm-yyyy'), 'Rosco');
insert into SOLIDER (id, rank, joined_date, name)
values (48252, 'Samal', to_date('13-03-2012', 'dd-mm-yyyy'), 'Lizzy');
insert into SOLIDER (id, rank, joined_date, name)
values (20458, 'Aluf', to_date('13-07-2019', 'dd-mm-yyyy'), 'Rickie');
insert into SOLIDER (id, rank, joined_date, name)
values (18233, 'Ranag', to_date('02-04-2019', 'dd-mm-yyyy'), 'Aida');
insert into SOLIDER (id, rank, joined_date, name)
values (45208, 'Ranag', to_date('16-02-1990', 'dd-mm-yyyy'), 'Luis');
insert into SOLIDER (id, rank, joined_date, name)
values (35732, 'Samal', to_date('23-09-2013', 'dd-mm-yyyy'), 'Saffron');
insert into SOLIDER (id, rank, joined_date, name)
values (38360, 'Ranag', to_date('11-09-2018', 'dd-mm-yyyy'), 'Juice');
insert into SOLIDER (id, rank, joined_date, name)
values (24067, 'Ranag', to_date('07-08-2016', 'dd-mm-yyyy'), 'Mary');
insert into SOLIDER (id, rank, joined_date, name)
values (90044, 'Samal', to_date('16-06-2006', 'dd-mm-yyyy'), 'Rosanna');
insert into SOLIDER (id, rank, joined_date, name)
values (74336, 'Aluf', to_date('27-06-1991', 'dd-mm-yyyy'), 'Remy');
insert into SOLIDER (id, rank, joined_date, name)
values (18843, 'Ranag', to_date('01-04-2016', 'dd-mm-yyyy'), 'Alan');
insert into SOLIDER (id, rank, joined_date, name)
values (95936, 'Ranag', to_date('25-09-2004', 'dd-mm-yyyy'), 'Cheryl');
insert into SOLIDER (id, rank, joined_date, name)
values (58431, 'Samal', to_date('10-06-2004', 'dd-mm-yyyy'), 'Carrie');
insert into SOLIDER (id, rank, joined_date, name)
values (72639, 'Ranag', to_date('02-03-2022', 'dd-mm-yyyy'), 'Burton');
insert into SOLIDER (id, rank, joined_date, name)
values (16424, 'Aluf', to_date('18-06-2005', 'dd-mm-yyyy'), 'Anna');
insert into SOLIDER (id, rank, joined_date, name)
values (35340, 'Aluf', to_date('10-06-2022', 'dd-mm-yyyy'), 'Delbert');
insert into SOLIDER (id, rank, joined_date, name)
values (16564, 'Samal', to_date('28-12-2020', 'dd-mm-yyyy'), 'Candice');
insert into SOLIDER (id, rank, joined_date, name)
values (18124, 'Samal', to_date('04-01-2019', 'dd-mm-yyyy'), 'Julianne');
insert into SOLIDER (id, rank, joined_date, name)
values (68693, 'Samal', to_date('24-09-2021', 'dd-mm-yyyy'), 'Jon');
insert into SOLIDER (id, rank, joined_date, name)
values (86576, 'Samal', to_date('01-10-1990', 'dd-mm-yyyy'), 'Cevin');
insert into SOLIDER (id, rank, joined_date, name)
values (66487, 'Aluf', to_date('03-11-1993', 'dd-mm-yyyy'), 'Rita');
insert into SOLIDER (id, rank, joined_date, name)
values (82735, 'Ranag', to_date('03-03-1993', 'dd-mm-yyyy'), 'Wayne');
insert into SOLIDER (id, rank, joined_date, name)
values (35204, 'Ranag', to_date('20-12-1995', 'dd-mm-yyyy'), 'Richie');
insert into SOLIDER (id, rank, joined_date, name)
values (64514, 'Samal', to_date('14-04-2008', 'dd-mm-yyyy'), 'Gavin');
insert into SOLIDER (id, rank, joined_date, name)
values (96093, 'Ranag', to_date('02-12-2022', 'dd-mm-yyyy'), 'Antonio');
insert into SOLIDER (id, rank, joined_date, name)
values (17323, 'Samal', to_date('01-02-2009', 'dd-mm-yyyy'), 'Juan');
insert into SOLIDER (id, rank, joined_date, name)
values (58582, 'Samal', to_date('18-12-2015', 'dd-mm-yyyy'), 'Mae');
insert into SOLIDER (id, rank, joined_date, name)
values (82374, 'Ranag', to_date('26-08-2000', 'dd-mm-yyyy'), 'Ramsey');
insert into SOLIDER (id, rank, joined_date, name)
values (62463, 'Samal', to_date('24-09-2019', 'dd-mm-yyyy'), 'Alex');
insert into SOLIDER (id, rank, joined_date, name)
values (57199, 'Aluf', to_date('16-11-2003', 'dd-mm-yyyy'), 'Chrissie');
insert into SOLIDER (id, rank, joined_date, name)
values (47859, 'Ranag', to_date('09-10-2009', 'dd-mm-yyyy'), 'Woody');
insert into SOLIDER (id, rank, joined_date, name)
values (35060, 'Samal', to_date('25-10-2015', 'dd-mm-yyyy'), 'Jeffery');
insert into SOLIDER (id, rank, joined_date, name)
values (97413, 'Aluf', to_date('22-09-2002', 'dd-mm-yyyy'), 'Luis');
insert into SOLIDER (id, rank, joined_date, name)
values (49915, 'Ranag', to_date('08-09-2014', 'dd-mm-yyyy'), 'Ted');
insert into SOLIDER (id, rank, joined_date, name)
values (50695, 'Ranag', to_date('02-02-2007', 'dd-mm-yyyy'), 'Xander');
insert into SOLIDER (id, rank, joined_date, name)
values (60272, 'Aluf', to_date('16-06-2009', 'dd-mm-yyyy'), 'Patti');
insert into SOLIDER (id, rank, joined_date, name)
values (79724, 'Aluf', to_date('02-09-2018', 'dd-mm-yyyy'), 'Rosario');
insert into SOLIDER (id, rank, joined_date, name)
values (94152, 'Aluf', to_date('01-02-1998', 'dd-mm-yyyy'), 'Rade');
insert into SOLIDER (id, rank, joined_date, name)
values (92268, 'Ranag', to_date('11-08-1992', 'dd-mm-yyyy'), 'Andrea');
insert into SOLIDER (id, rank, joined_date, name)
values (21837, 'Ranag', to_date('15-05-2004', 'dd-mm-yyyy'), 'Tyrone');
insert into SOLIDER (id, rank, joined_date, name)
values (96250, 'Ranag', to_date('17-01-1996', 'dd-mm-yyyy'), 'Grant');
insert into SOLIDER (id, rank, joined_date, name)
values (23052, 'Ranag', to_date('08-06-2023', 'dd-mm-yyyy'), 'Gilberto');
insert into SOLIDER (id, rank, joined_date, name)
values (14162, 'Aluf', to_date('02-06-1997', 'dd-mm-yyyy'), 'Gladys');
insert into SOLIDER (id, rank, joined_date, name)
values (59712, 'Samal', to_date('29-10-2011', 'dd-mm-yyyy'), 'Meredith');
insert into SOLIDER (id, rank, joined_date, name)
values (14138, 'Aluf', to_date('20-05-2006', 'dd-mm-yyyy'), 'Tanya');
commit;
prompt 200 records committed...
insert into SOLIDER (id, rank, joined_date, name)
values (43108, 'Ranag', to_date('04-04-1990', 'dd-mm-yyyy'), 'Etta');
insert into SOLIDER (id, rank, joined_date, name)
values (24367, 'Samal', to_date('10-05-2020', 'dd-mm-yyyy'), 'Jesus');
insert into SOLIDER (id, rank, joined_date, name)
values (73316, 'Aluf', to_date('12-12-2020', 'dd-mm-yyyy'), 'Charlie');
insert into SOLIDER (id, rank, joined_date, name)
values (30832, 'Ranag', to_date('05-09-2015', 'dd-mm-yyyy'), 'Marina');
insert into SOLIDER (id, rank, joined_date, name)
values (39718, 'Ranag', to_date('14-08-1991', 'dd-mm-yyyy'), 'Oded');
insert into SOLIDER (id, rank, joined_date, name)
values (91724, 'Aluf', to_date('28-05-2017', 'dd-mm-yyyy'), 'Kimberly');
insert into SOLIDER (id, rank, joined_date, name)
values (93749, 'Samal', to_date('31-01-2022', 'dd-mm-yyyy'), 'Victoria');
insert into SOLIDER (id, rank, joined_date, name)
values (68514, 'Samal', to_date('27-09-2009', 'dd-mm-yyyy'), 'Loretta');
insert into SOLIDER (id, rank, joined_date, name)
values (38300, 'Samal', to_date('02-07-1997', 'dd-mm-yyyy'), 'Maury');
insert into SOLIDER (id, rank, joined_date, name)
values (51479, 'Ranag', to_date('20-01-1993', 'dd-mm-yyyy'), 'Ted');
insert into SOLIDER (id, rank, joined_date, name)
values (33798, 'Aluf', to_date('13-03-1996', 'dd-mm-yyyy'), 'Daryl');
insert into SOLIDER (id, rank, joined_date, name)
values (57441, 'Aluf', to_date('29-07-2017', 'dd-mm-yyyy'), 'Donald');
insert into SOLIDER (id, rank, joined_date, name)
values (43175, 'Ranag', to_date('05-03-2014', 'dd-mm-yyyy'), 'Heath');
insert into SOLIDER (id, rank, joined_date, name)
values (66399, 'Ranag', to_date('02-09-2023', 'dd-mm-yyyy'), 'Kelly');
insert into SOLIDER (id, rank, joined_date, name)
values (60157, 'Aluf', to_date('19-03-2006', 'dd-mm-yyyy'), 'Belinda');
insert into SOLIDER (id, rank, joined_date, name)
values (41496, 'Aluf', to_date('08-10-1998', 'dd-mm-yyyy'), 'Saffron');
insert into SOLIDER (id, rank, joined_date, name)
values (54239, 'Aluf', to_date('01-08-2005', 'dd-mm-yyyy'), 'Benjamin');
insert into SOLIDER (id, rank, joined_date, name)
values (21208, 'Aluf', to_date('22-11-2008', 'dd-mm-yyyy'), 'Diamond');
insert into SOLIDER (id, rank, joined_date, name)
values (76756, 'Samal', to_date('03-06-2016', 'dd-mm-yyyy'), 'Dar');
insert into SOLIDER (id, rank, joined_date, name)
values (17082, 'Aluf', to_date('05-11-2002', 'dd-mm-yyyy'), 'Robbie');
insert into SOLIDER (id, rank, joined_date, name)
values (83627, 'Ranag', to_date('14-09-2018', 'dd-mm-yyyy'), 'Annie');
insert into SOLIDER (id, rank, joined_date, name)
values (72595, 'Samal', to_date('25-12-2000', 'dd-mm-yyyy'), 'Jimmy');
insert into SOLIDER (id, rank, joined_date, name)
values (96989, 'Ranag', to_date('04-11-2017', 'dd-mm-yyyy'), 'Debra');
insert into SOLIDER (id, rank, joined_date, name)
values (38672, 'Samal', to_date('28-08-2022', 'dd-mm-yyyy'), 'Elias');
insert into SOLIDER (id, rank, joined_date, name)
values (83493, 'Ranag', to_date('07-12-2002', 'dd-mm-yyyy'), 'Emily');
insert into SOLIDER (id, rank, joined_date, name)
values (43654, 'Ranag', to_date('24-03-1990', 'dd-mm-yyyy'), 'Holly');
insert into SOLIDER (id, rank, joined_date, name)
values (82602, 'Aluf', to_date('05-08-2017', 'dd-mm-yyyy'), 'Brad');
insert into SOLIDER (id, rank, joined_date, name)
values (57704, 'Samal', to_date('01-10-2017', 'dd-mm-yyyy'), 'Joaquim');
insert into SOLIDER (id, rank, joined_date, name)
values (51561, 'Aluf', to_date('16-06-2003', 'dd-mm-yyyy'), 'Sam');
insert into SOLIDER (id, rank, joined_date, name)
values (62775, 'Ranag', to_date('10-04-1996', 'dd-mm-yyyy'), 'Marley');
insert into SOLIDER (id, rank, joined_date, name)
values (49245, 'Ranag', to_date('09-04-1994', 'dd-mm-yyyy'), 'Loreena');
insert into SOLIDER (id, rank, joined_date, name)
values (28131, 'Aluf', to_date('30-09-2005', 'dd-mm-yyyy'), 'Carrie');
insert into SOLIDER (id, rank, joined_date, name)
values (47796, 'Aluf', to_date('18-08-2014', 'dd-mm-yyyy'), 'Garth');
insert into SOLIDER (id, rank, joined_date, name)
values (46976, 'Samal', to_date('23-07-2023', 'dd-mm-yyyy'), 'Jody');
insert into SOLIDER (id, rank, joined_date, name)
values (83141, 'Ranag', to_date('29-04-2023', 'dd-mm-yyyy'), 'Noah');
insert into SOLIDER (id, rank, joined_date, name)
values (11979, 'Ranag', to_date('17-09-2017', 'dd-mm-yyyy'), 'Allan');
insert into SOLIDER (id, rank, joined_date, name)
values (33292, 'Aluf', to_date('05-05-2003', 'dd-mm-yyyy'), 'Elvis');
insert into SOLIDER (id, rank, joined_date, name)
values (74125, 'Ranag', to_date('17-08-2016', 'dd-mm-yyyy'), 'Jay');
insert into SOLIDER (id, rank, joined_date, name)
values (91087, 'Samal', to_date('10-06-1994', 'dd-mm-yyyy'), 'Colm');
insert into SOLIDER (id, rank, joined_date, name)
values (18237, 'Samal', to_date('16-07-2019', 'dd-mm-yyyy'), 'First');
insert into SOLIDER (id, rank, joined_date, name)
values (44053, 'Aluf', to_date('21-07-2019', 'dd-mm-yyyy'), 'Murray');
insert into SOLIDER (id, rank, joined_date, name)
values (83787, 'Aluf', to_date('23-11-2008', 'dd-mm-yyyy'), 'Ronny');
insert into SOLIDER (id, rank, joined_date, name)
values (19522, 'Aluf', to_date('24-04-2003', 'dd-mm-yyyy'), 'Ving');
insert into SOLIDER (id, rank, joined_date, name)
values (44304, 'Ranag', to_date('03-12-2021', 'dd-mm-yyyy'), 'Dom');
insert into SOLIDER (id, rank, joined_date, name)
values (50774, 'Aluf', to_date('14-04-1995', 'dd-mm-yyyy'), 'Jennifer');
insert into SOLIDER (id, rank, joined_date, name)
values (14737, 'Ranag', to_date('16-12-1994', 'dd-mm-yyyy'), 'Wallace');
insert into SOLIDER (id, rank, joined_date, name)
values (57635, 'Ranag', to_date('08-09-2010', 'dd-mm-yyyy'), 'Garry');
insert into SOLIDER (id, rank, joined_date, name)
values (92095, 'Samal', to_date('30-08-1990', 'dd-mm-yyyy'), 'Campbell');
insert into SOLIDER (id, rank, joined_date, name)
values (43598, 'Samal', to_date('11-01-2019', 'dd-mm-yyyy'), 'Jeffrey');
insert into SOLIDER (id, rank, joined_date, name)
values (63565, 'Aluf', to_date('29-03-2003', 'dd-mm-yyyy'), 'Amanda');
insert into SOLIDER (id, rank, joined_date, name)
values (82450, 'Aluf', to_date('10-04-2020', 'dd-mm-yyyy'), 'Holly');
insert into SOLIDER (id, rank, joined_date, name)
values (29249, 'Ranag', to_date('04-06-1997', 'dd-mm-yyyy'), 'Anita');
insert into SOLIDER (id, rank, joined_date, name)
values (21574, 'Ranag', to_date('22-08-1995', 'dd-mm-yyyy'), 'Glen');
insert into SOLIDER (id, rank, joined_date, name)
values (30469, 'Aluf', to_date('31-01-1992', 'dd-mm-yyyy'), 'Ramsey');
insert into SOLIDER (id, rank, joined_date, name)
values (57469, 'Ranag', to_date('01-01-2005', 'dd-mm-yyyy'), 'Grant');
insert into SOLIDER (id, rank, joined_date, name)
values (16948, 'Ranag', to_date('10-06-2018', 'dd-mm-yyyy'), 'Trick');
insert into SOLIDER (id, rank, joined_date, name)
values (50158, 'Samal', to_date('18-12-2022', 'dd-mm-yyyy'), 'Dianne');
insert into SOLIDER (id, rank, joined_date, name)
values (64001, 'Ranag', to_date('09-12-2020', 'dd-mm-yyyy'), 'Sharon');
insert into SOLIDER (id, rank, joined_date, name)
values (65378, 'Samal', to_date('30-06-2023', 'dd-mm-yyyy'), 'Andre');
insert into SOLIDER (id, rank, joined_date, name)
values (39722, 'Aluf', to_date('21-09-2006', 'dd-mm-yyyy'), 'Gilbert');
insert into SOLIDER (id, rank, joined_date, name)
values (11211, 'Ranag', to_date('01-04-2007', 'dd-mm-yyyy'), 'Aaron');
insert into SOLIDER (id, rank, joined_date, name)
values (55505, 'Ranag', to_date('25-09-2001', 'dd-mm-yyyy'), 'Emily');
insert into SOLIDER (id, rank, joined_date, name)
values (58048, 'Ranag', to_date('14-06-2005', 'dd-mm-yyyy'), 'Denise');
insert into SOLIDER (id, rank, joined_date, name)
values (99897, 'Aluf', to_date('14-06-2017', 'dd-mm-yyyy'), 'Ramsey');
insert into SOLIDER (id, rank, joined_date, name)
values (64112, 'Samal', to_date('27-06-1992', 'dd-mm-yyyy'), 'Quentin');
insert into SOLIDER (id, rank, joined_date, name)
values (11343, 'Samal', to_date('31-03-1994', 'dd-mm-yyyy'), 'Patrick');
insert into SOLIDER (id, rank, joined_date, name)
values (50978, 'Ranag', to_date('07-01-2013', 'dd-mm-yyyy'), 'Elijah');
insert into SOLIDER (id, rank, joined_date, name)
values (56483, 'Ranag', to_date('09-05-1993', 'dd-mm-yyyy'), 'Debbie');
insert into SOLIDER (id, rank, joined_date, name)
values (40203, 'Aluf', to_date('26-10-2013', 'dd-mm-yyyy'), 'Greg');
insert into SOLIDER (id, rank, joined_date, name)
values (69563, 'Ranag', to_date('26-06-1991', 'dd-mm-yyyy'), 'Carole');
insert into SOLIDER (id, rank, joined_date, name)
values (51072, 'Ranag', to_date('29-02-1992', 'dd-mm-yyyy'), 'Heath');
insert into SOLIDER (id, rank, joined_date, name)
values (86287, 'Samal', to_date('22-01-1992', 'dd-mm-yyyy'), 'Lynn');
insert into SOLIDER (id, rank, joined_date, name)
values (81674, 'Aluf', to_date('20-11-2018', 'dd-mm-yyyy'), 'Renee');
insert into SOLIDER (id, rank, joined_date, name)
values (72117, 'Aluf', to_date('22-01-2011', 'dd-mm-yyyy'), 'Val');
insert into SOLIDER (id, rank, joined_date, name)
values (73310, 'Samal', to_date('18-01-2000', 'dd-mm-yyyy'), 'Cate');
insert into SOLIDER (id, rank, joined_date, name)
values (78351, 'Samal', to_date('02-07-2005', 'dd-mm-yyyy'), 'Celia');
insert into SOLIDER (id, rank, joined_date, name)
values (36013, 'Ranag', to_date('21-03-1993', 'dd-mm-yyyy'), 'Lila');
insert into SOLIDER (id, rank, joined_date, name)
values (25975, 'Ranag', to_date('23-07-2016', 'dd-mm-yyyy'), 'Rich');
insert into SOLIDER (id, rank, joined_date, name)
values (68519, 'Ranag', to_date('30-05-1990', 'dd-mm-yyyy'), 'Talvin');
insert into SOLIDER (id, rank, joined_date, name)
values (95073, 'Ranag', to_date('11-04-2017', 'dd-mm-yyyy'), 'Samuel');
insert into SOLIDER (id, rank, joined_date, name)
values (94891, 'Ranag', to_date('09-08-2017', 'dd-mm-yyyy'), 'Ed');
insert into SOLIDER (id, rank, joined_date, name)
values (30903, 'Samal', to_date('06-12-2008', 'dd-mm-yyyy'), 'Nick');
insert into SOLIDER (id, rank, joined_date, name)
values (28934, 'Ranag', to_date('08-12-2006', 'dd-mm-yyyy'), 'Emerson');
insert into SOLIDER (id, rank, joined_date, name)
values (33309, 'Ranag', to_date('08-01-1992', 'dd-mm-yyyy'), 'Ty');
insert into SOLIDER (id, rank, joined_date, name)
values (99716, 'Samal', to_date('21-06-2019', 'dd-mm-yyyy'), 'Sheryl');
insert into SOLIDER (id, rank, joined_date, name)
values (29462, 'Samal', to_date('06-11-2015', 'dd-mm-yyyy'), 'Mira');
insert into SOLIDER (id, rank, joined_date, name)
values (93753, 'Aluf', to_date('20-08-2002', 'dd-mm-yyyy'), 'Kristin');
insert into SOLIDER (id, rank, joined_date, name)
values (85491, 'Samal', to_date('12-10-2000', 'dd-mm-yyyy'), 'Frank');
insert into SOLIDER (id, rank, joined_date, name)
values (91640, 'Ranag', to_date('31-03-2000', 'dd-mm-yyyy'), 'Eileen');
insert into SOLIDER (id, rank, joined_date, name)
values (90339, 'Ranag', to_date('30-01-2013', 'dd-mm-yyyy'), 'Azucar');
insert into SOLIDER (id, rank, joined_date, name)
values (32466, 'Aluf', to_date('16-03-1999', 'dd-mm-yyyy'), 'Alessandro');
insert into SOLIDER (id, rank, joined_date, name)
values (45175, 'Samal', to_date('29-05-2006', 'dd-mm-yyyy'), 'Stockard');
insert into SOLIDER (id, rank, joined_date, name)
values (61552, 'Ranag', to_date('03-10-1990', 'dd-mm-yyyy'), 'Ming-Na');
insert into SOLIDER (id, rank, joined_date, name)
values (69465, 'Aluf', to_date('22-11-2015', 'dd-mm-yyyy'), 'Ann');
insert into SOLIDER (id, rank, joined_date, name)
values (61529, 'Aluf', to_date('04-06-2008', 'dd-mm-yyyy'), 'Melba');
insert into SOLIDER (id, rank, joined_date, name)
values (34828, 'Aluf', to_date('26-11-2022', 'dd-mm-yyyy'), 'Clay');
insert into SOLIDER (id, rank, joined_date, name)
values (55637, 'Samal', to_date('26-07-2006', 'dd-mm-yyyy'), 'Amy');
insert into SOLIDER (id, rank, joined_date, name)
values (71117, 'Ranag', to_date('19-05-2000', 'dd-mm-yyyy'), 'Alessandro');
insert into SOLIDER (id, rank, joined_date, name)
values (61023, 'Samal', to_date('08-07-2021', 'dd-mm-yyyy'), 'Emmylou');
insert into SOLIDER (id, rank, joined_date, name)
values (78043, 'Aluf', to_date('28-10-2002', 'dd-mm-yyyy'), 'Madeleine');
commit;
prompt 300 records committed...
insert into SOLIDER (id, rank, joined_date, name)
values (14263, 'Samal', to_date('26-05-2003', 'dd-mm-yyyy'), 'Kay');
insert into SOLIDER (id, rank, joined_date, name)
values (20148, 'Aluf', to_date('21-11-1994', 'dd-mm-yyyy'), 'Benjamin');
insert into SOLIDER (id, rank, joined_date, name)
values (35770, 'Aluf', to_date('13-07-1998', 'dd-mm-yyyy'), 'Dom');
insert into SOLIDER (id, rank, joined_date, name)
values (27320, 'Aluf', to_date('18-08-1996', 'dd-mm-yyyy'), 'Ali');
insert into SOLIDER (id, rank, joined_date, name)
values (55316, 'Samal', to_date('23-06-2002', 'dd-mm-yyyy'), 'Talvin');
insert into SOLIDER (id, rank, joined_date, name)
values (34206, 'Samal', to_date('08-05-2001', 'dd-mm-yyyy'), 'Janeane');
insert into SOLIDER (id, rank, joined_date, name)
values (43109, 'Aluf', to_date('15-09-1993', 'dd-mm-yyyy'), 'Miranda');
insert into SOLIDER (id, rank, joined_date, name)
values (25176, 'Aluf', to_date('31-01-2006', 'dd-mm-yyyy'), 'Bryan');
insert into SOLIDER (id, rank, joined_date, name)
values (46422, 'Ranag', to_date('26-11-2011', 'dd-mm-yyyy'), 'Benjamin');
insert into SOLIDER (id, rank, joined_date, name)
values (84844, 'Aluf', to_date('09-09-2018', 'dd-mm-yyyy'), 'Rosario');
insert into SOLIDER (id, rank, joined_date, name)
values (31785, 'Samal', to_date('10-11-2008', 'dd-mm-yyyy'), 'Adrien');
insert into SOLIDER (id, rank, joined_date, name)
values (76367, 'Samal', to_date('09-08-2007', 'dd-mm-yyyy'), 'Ronny');
insert into SOLIDER (id, rank, joined_date, name)
values (66057, 'Aluf', to_date('17-01-2016', 'dd-mm-yyyy'), 'Hope');
insert into SOLIDER (id, rank, joined_date, name)
values (14188, 'Aluf', to_date('06-03-1998', 'dd-mm-yyyy'), 'Andrew');
insert into SOLIDER (id, rank, joined_date, name)
values (36395, 'Aluf', to_date('01-10-2016', 'dd-mm-yyyy'), 'Ice');
insert into SOLIDER (id, rank, joined_date, name)
values (64557, 'Samal', to_date('29-08-2009', 'dd-mm-yyyy'), 'Rosanna');
insert into SOLIDER (id, rank, joined_date, name)
values (64660, 'Aluf', to_date('27-11-1998', 'dd-mm-yyyy'), 'Coley');
insert into SOLIDER (id, rank, joined_date, name)
values (84939, 'Samal', to_date('23-10-2002', 'dd-mm-yyyy'), 'Diane');
insert into SOLIDER (id, rank, joined_date, name)
values (16274, 'Ranag', to_date('21-06-2018', 'dd-mm-yyyy'), 'Danni');
insert into SOLIDER (id, rank, joined_date, name)
values (35648, 'Samal', to_date('16-02-2008', 'dd-mm-yyyy'), 'Tim');
insert into SOLIDER (id, rank, joined_date, name)
values (59073, 'Ranag', to_date('01-07-2001', 'dd-mm-yyyy'), 'Chantי');
insert into SOLIDER (id, rank, joined_date, name)
values (19256, 'Aluf', to_date('11-09-1992', 'dd-mm-yyyy'), 'Karon');
insert into SOLIDER (id, rank, joined_date, name)
values (49941, 'Ranag', to_date('18-10-1998', 'dd-mm-yyyy'), 'Gilberto');
insert into SOLIDER (id, rank, joined_date, name)
values (36670, 'Ranag', to_date('05-09-2009', 'dd-mm-yyyy'), 'Laura');
insert into SOLIDER (id, rank, joined_date, name)
values (60327, 'Aluf', to_date('20-03-2009', 'dd-mm-yyyy'), 'Robbie');
insert into SOLIDER (id, rank, joined_date, name)
values (82097, 'Samal', to_date('31-05-2018', 'dd-mm-yyyy'), 'Claire');
insert into SOLIDER (id, rank, joined_date, name)
values (85102, 'Samal', to_date('31-07-2017', 'dd-mm-yyyy'), 'Rhys');
insert into SOLIDER (id, rank, joined_date, name)
values (43562, 'Aluf', to_date('24-02-2021', 'dd-mm-yyyy'), 'Brian');
insert into SOLIDER (id, rank, joined_date, name)
values (90300, 'Samal', to_date('21-03-2009', 'dd-mm-yyyy'), 'Treat');
insert into SOLIDER (id, rank, joined_date, name)
values (31212, 'Samal', to_date('27-05-2006', 'dd-mm-yyyy'), 'Goran');
insert into SOLIDER (id, rank, joined_date, name)
values (44198, 'Samal', to_date('17-02-1995', 'dd-mm-yyyy'), 'Zooey');
insert into SOLIDER (id, rank, joined_date, name)
values (66722, 'Samal', to_date('03-12-2004', 'dd-mm-yyyy'), 'Juan');
insert into SOLIDER (id, rank, joined_date, name)
values (20611, 'Samal', to_date('17-10-2013', 'dd-mm-yyyy'), 'Anita');
insert into SOLIDER (id, rank, joined_date, name)
values (22704, 'Samal', to_date('28-04-2020', 'dd-mm-yyyy'), 'Giancarlo');
insert into SOLIDER (id, rank, joined_date, name)
values (18857, 'Samal', to_date('27-07-2007', 'dd-mm-yyyy'), 'Geoffrey');
insert into SOLIDER (id, rank, joined_date, name)
values (78789, 'Ranag', to_date('16-04-2004', 'dd-mm-yyyy'), 'Joseph');
insert into SOLIDER (id, rank, joined_date, name)
values (33728, 'Aluf', to_date('29-09-2015', 'dd-mm-yyyy'), 'Nikka');
insert into SOLIDER (id, rank, joined_date, name)
values (94360, 'Samal', to_date('13-06-2012', 'dd-mm-yyyy'), 'Amanda');
insert into SOLIDER (id, rank, joined_date, name)
values (19891, 'Ranag', to_date('18-03-2004', 'dd-mm-yyyy'), 'Kevn');
insert into SOLIDER (id, rank, joined_date, name)
values (31307, 'Ranag', to_date('02-11-1996', 'dd-mm-yyyy'), 'Daryl');
insert into SOLIDER (id, rank, joined_date, name)
values (17417, 'Samal', to_date('02-10-2011', 'dd-mm-yyyy'), 'Ceili');
insert into SOLIDER (id, rank, joined_date, name)
values (93427, 'Aluf', to_date('08-01-2017', 'dd-mm-yyyy'), 'Harris');
insert into SOLIDER (id, rank, joined_date, name)
values (82851, 'Aluf', to_date('15-12-2000', 'dd-mm-yyyy'), 'Arturo');
insert into SOLIDER (id, rank, joined_date, name)
values (49172, 'Samal', to_date('25-10-2019', 'dd-mm-yyyy'), 'Lorraine');
insert into SOLIDER (id, rank, joined_date, name)
values (25848, 'Ranag', to_date('07-10-1991', 'dd-mm-yyyy'), 'Kelli');
insert into SOLIDER (id, rank, joined_date, name)
values (48837, 'Samal', to_date('23-08-2003', 'dd-mm-yyyy'), 'Rueben');
insert into SOLIDER (id, rank, joined_date, name)
values (18027, 'Ranag', to_date('23-08-2001', 'dd-mm-yyyy'), 'Natacha');
insert into SOLIDER (id, rank, joined_date, name)
values (91743, 'Aluf', to_date('08-07-2023', 'dd-mm-yyyy'), 'Nina');
insert into SOLIDER (id, rank, joined_date, name)
values (29599, 'Aluf', to_date('13-05-1996', 'dd-mm-yyyy'), 'Joshua');
insert into SOLIDER (id, rank, joined_date, name)
values (98984, 'Samal', to_date('22-08-2002', 'dd-mm-yyyy'), 'Regina');
insert into SOLIDER (id, rank, joined_date, name)
values (49337, 'Samal', to_date('08-06-2021', 'dd-mm-yyyy'), 'Roger');
insert into SOLIDER (id, rank, joined_date, name)
values (58392, 'Aluf', to_date('25-08-1996', 'dd-mm-yyyy'), 'Gordie');
insert into SOLIDER (id, rank, joined_date, name)
values (21207, 'Samal', to_date('20-02-2004', 'dd-mm-yyyy'), 'Lenny');
insert into SOLIDER (id, rank, joined_date, name)
values (63946, 'Samal', to_date('12-06-1992', 'dd-mm-yyyy'), 'Wally');
insert into SOLIDER (id, rank, joined_date, name)
values (30997, 'Samal', to_date('11-03-2008', 'dd-mm-yyyy'), 'Trace');
insert into SOLIDER (id, rank, joined_date, name)
values (71846, 'Aluf', to_date('17-09-2023', 'dd-mm-yyyy'), 'Gran');
insert into SOLIDER (id, rank, joined_date, name)
values (31841, 'Samal', to_date('22-01-2023', 'dd-mm-yyyy'), 'Lucinda');
insert into SOLIDER (id, rank, joined_date, name)
values (84373, 'Aluf', to_date('22-12-1990', 'dd-mm-yyyy'), 'Ving');
insert into SOLIDER (id, rank, joined_date, name)
values (86405, 'Aluf', to_date('06-11-2001', 'dd-mm-yyyy'), 'Brothers');
insert into SOLIDER (id, rank, joined_date, name)
values (50404, 'Samal', to_date('15-05-2002', 'dd-mm-yyyy'), 'Bret');
insert into SOLIDER (id, rank, joined_date, name)
values (59074, 'Ranag', to_date('12-11-2011', 'dd-mm-yyyy'), 'Colleen');
insert into SOLIDER (id, rank, joined_date, name)
values (15934, 'Samal', to_date('25-12-2010', 'dd-mm-yyyy'), 'Lesley');
insert into SOLIDER (id, rank, joined_date, name)
values (91475, 'Aluf', to_date('12-10-2021', 'dd-mm-yyyy'), 'Geraldine');
insert into SOLIDER (id, rank, joined_date, name)
values (80157, 'Ranag', to_date('30-10-2006', 'dd-mm-yyyy'), 'Taye');
insert into SOLIDER (id, rank, joined_date, name)
values (83551, 'Ranag', to_date('03-06-2005', 'dd-mm-yyyy'), 'Chad');
insert into SOLIDER (id, rank, joined_date, name)
values (68204, 'Aluf', to_date('20-06-2015', 'dd-mm-yyyy'), 'Denise');
insert into SOLIDER (id, rank, joined_date, name)
values (46863, 'Samal', to_date('11-03-2022', 'dd-mm-yyyy'), 'Benjamin');
insert into SOLIDER (id, rank, joined_date, name)
values (76108, 'Ranag', to_date('20-03-2005', 'dd-mm-yyyy'), 'Kevn');
insert into SOLIDER (id, rank, joined_date, name)
values (85660, 'Aluf', to_date('09-02-2002', 'dd-mm-yyyy'), 'Susan');
insert into SOLIDER (id, rank, joined_date, name)
values (21328, 'Samal', to_date('09-01-2009', 'dd-mm-yyyy'), 'Lionel');
insert into SOLIDER (id, rank, joined_date, name)
values (94630, 'Ranag', to_date('25-06-2017', 'dd-mm-yyyy'), 'Lynette');
insert into SOLIDER (id, rank, joined_date, name)
values (65493, 'Samal', to_date('10-12-2018', 'dd-mm-yyyy'), 'Kate');
insert into SOLIDER (id, rank, joined_date, name)
values (62193, 'Samal', to_date('11-03-2021', 'dd-mm-yyyy'), 'Trace');
insert into SOLIDER (id, rank, joined_date, name)
values (42696, 'Aluf', to_date('24-03-1993', 'dd-mm-yyyy'), 'Percy');
insert into SOLIDER (id, rank, joined_date, name)
values (26682, 'Aluf', to_date('30-01-2010', 'dd-mm-yyyy'), 'Nigel');
insert into SOLIDER (id, rank, joined_date, name)
values (43014, 'Samal', to_date('12-03-1990', 'dd-mm-yyyy'), 'Fiona');
insert into SOLIDER (id, rank, joined_date, name)
values (81376, 'Ranag', to_date('02-01-1990', 'dd-mm-yyyy'), 'Suzy');
insert into SOLIDER (id, rank, joined_date, name)
values (64802, 'Ranag', to_date('13-07-2015', 'dd-mm-yyyy'), 'Barbara');
insert into SOLIDER (id, rank, joined_date, name)
values (83616, 'Samal', to_date('06-10-2006', 'dd-mm-yyyy'), 'Nastassja');
insert into SOLIDER (id, rank, joined_date, name)
values (18840, 'Samal', to_date('08-04-2006', 'dd-mm-yyyy'), 'Todd');
insert into SOLIDER (id, rank, joined_date, name)
values (62569, 'Aluf', to_date('05-01-1997', 'dd-mm-yyyy'), 'Lynette');
insert into SOLIDER (id, rank, joined_date, name)
values (61694, 'Aluf', to_date('14-06-2014', 'dd-mm-yyyy'), 'Rhona');
insert into SOLIDER (id, rank, joined_date, name)
values (78029, 'Ranag', to_date('09-07-1990', 'dd-mm-yyyy'), 'Chazz');
insert into SOLIDER (id, rank, joined_date, name)
values (46792, 'Aluf', to_date('03-08-2019', 'dd-mm-yyyy'), 'Cliff');
insert into SOLIDER (id, rank, joined_date, name)
values (82047, 'Samal', to_date('05-01-2011', 'dd-mm-yyyy'), 'Fats');
insert into SOLIDER (id, rank, joined_date, name)
values (66606, 'Samal', to_date('26-04-2013', 'dd-mm-yyyy'), 'Parker');
insert into SOLIDER (id, rank, joined_date, name)
values (30564, 'Ranag', to_date('03-09-2021', 'dd-mm-yyyy'), 'Holly');
insert into SOLIDER (id, rank, joined_date, name)
values (89288, 'Samal', to_date('14-09-1992', 'dd-mm-yyyy'), 'Danni');
insert into SOLIDER (id, rank, joined_date, name)
values (67266, 'Ranag', to_date('29-03-2017', 'dd-mm-yyyy'), 'Pelvic');
insert into SOLIDER (id, rank, joined_date, name)
values (23076, 'Samal', to_date('22-02-1998', 'dd-mm-yyyy'), 'Alfred');
insert into SOLIDER (id, rank, joined_date, name)
values (68547, 'Ranag', to_date('23-09-1990', 'dd-mm-yyyy'), 'Ossie');
insert into SOLIDER (id, rank, joined_date, name)
values (30708, 'Samal', to_date('05-12-1991', 'dd-mm-yyyy'), 'Jeffery');
insert into SOLIDER (id, rank, joined_date, name)
values (60700, 'Aluf', to_date('16-10-2012', 'dd-mm-yyyy'), 'Jeffrey');
insert into SOLIDER (id, rank, joined_date, name)
values (27159, 'Aluf', to_date('22-05-2019', 'dd-mm-yyyy'), 'Dermot');
insert into SOLIDER (id, rank, joined_date, name)
values (87100, 'Samal', to_date('17-09-2015', 'dd-mm-yyyy'), 'Tori');
insert into SOLIDER (id, rank, joined_date, name)
values (49613, 'Aluf', to_date('15-09-2006', 'dd-mm-yyyy'), 'Willie');
insert into SOLIDER (id, rank, joined_date, name)
values (58729, 'Ranag', to_date('27-12-1995', 'dd-mm-yyyy'), 'Annie');
insert into SOLIDER (id, rank, joined_date, name)
values (77425, 'Aluf', to_date('30-04-2011', 'dd-mm-yyyy'), 'Stewart');
insert into SOLIDER (id, rank, joined_date, name)
values (32472, 'Samal', to_date('29-07-2023', 'dd-mm-yyyy'), 'Nick');
insert into SOLIDER (id, rank, joined_date, name)
values (13196, 'Samal', to_date('31-12-2006', 'dd-mm-yyyy'), 'Carole');
commit;
prompt 400 records committed...
insert into SOLIDER (id, rank, joined_date, name)
values (28306, 'Ranag', to_date('30-09-2023', 'dd-mm-yyyy'), 'Shirley');
insert into SOLIDER (id, rank, joined_date, name)
values (91631, 'Aluf', to_date('11-06-2019', 'dd-mm-yyyy'), 'Salma');
insert into SOLIDER (id, rank, joined_date, name)
values (96486, 'Aluf', to_date('24-07-2011', 'dd-mm-yyyy'), 'Angela');
insert into SOLIDER (id, rank, joined_date, name)
values (27277, 'Samal', to_date('23-08-2000', 'dd-mm-yyyy'), 'Miki');
insert into SOLIDER (id, rank, joined_date, name)
values (12511, 'Ranag', to_date('22-12-1996', 'dd-mm-yyyy'), 'Donald');
insert into SOLIDER (id, rank, joined_date, name)
values (12271, 'Ranag', to_date('12-10-2019', 'dd-mm-yyyy'), 'Paul');
insert into SOLIDER (id, rank, joined_date, name)
values (22092, 'Aluf', to_date('30-07-2002', 'dd-mm-yyyy'), 'Pablo');
insert into SOLIDER (id, rank, joined_date, name)
values (97415, 'Ranag', to_date('30-09-2022', 'dd-mm-yyyy'), 'Jean-Luc');
insert into SOLIDER (id, rank, joined_date, name)
values (58334, 'Ranag', to_date('06-12-2023', 'dd-mm-yyyy'), 'Andy');
insert into SOLIDER (id, rank, joined_date, name)
values (89916, 'Samal', to_date('04-05-2010', 'dd-mm-yyyy'), 'Johnette');
insert into SOLIDER (id, rank, joined_date, name)
values (97816, 'Aluf', to_date('27-07-2000', 'dd-mm-yyyy'), 'Rhys');
insert into SOLIDER (id, rank, joined_date, name)
values (56687, 'Samal', to_date('15-01-2023', 'dd-mm-yyyy'), 'Oliver');
insert into SOLIDER (id, rank, joined_date, name)
values (55555, 'Ranag', to_date('06-08-2001', 'dd-mm-yyyy'), 'Woody');
insert into SOLIDER (id, rank, joined_date, name)
values (99871, 'Samal', to_date('09-06-2000', 'dd-mm-yyyy'), 'Leo');
insert into SOLIDER (id, rank, joined_date, name)
values (18864, 'Ranag', to_date('27-11-2013', 'dd-mm-yyyy'), 'Shawn');
insert into SOLIDER (id, rank, joined_date, name)
values (26800, 'Aluf', to_date('10-04-1991', 'dd-mm-yyyy'), 'Natasha');
insert into SOLIDER (id, rank, joined_date, name)
values (20088, 'Samal', to_date('22-01-2013', 'dd-mm-yyyy'), 'Edwin');
insert into SOLIDER (id, rank, joined_date, name)
values (69963, 'Aluf', to_date('04-02-2000', 'dd-mm-yyyy'), 'Miko');
insert into SOLIDER (id, rank, joined_date, name)
values (59352, 'Aluf', to_date('29-09-2010', 'dd-mm-yyyy'), 'Natasha');
insert into SOLIDER (id, rank, joined_date, name)
values (79197, 'Ranag', to_date('27-07-2014', 'dd-mm-yyyy'), 'Rosie');
insert into SOLIDER (id, rank, joined_date, name)
values (21748, 'Ranag', to_date('21-11-2010', 'dd-mm-yyyy'), 'Ritchie');
insert into SOLIDER (id, rank, joined_date, name)
values (30534, 'Ranag', to_date('24-05-2009', 'dd-mm-yyyy'), 'Victor');
insert into SOLIDER (id, rank, joined_date, name)
values (22299, 'Ranag', to_date('26-05-2010', 'dd-mm-yyyy'), 'Lance');
insert into SOLIDER (id, rank, joined_date, name)
values (73952, 'Samal', to_date('30-10-1994', 'dd-mm-yyyy'), 'Harris');
insert into SOLIDER (id, rank, joined_date, name)
values (23149, 'Ranag', to_date('03-07-2010', 'dd-mm-yyyy'), 'Rhona');
insert into SOLIDER (id, rank, joined_date, name)
values (31111, 'Aluf', to_date('16-11-2007', 'dd-mm-yyyy'), 'Marlon');
insert into SOLIDER (id, rank, joined_date, name)
values (56300, 'Aluf', to_date('26-09-2004', 'dd-mm-yyyy'), 'Mary Beth');
insert into SOLIDER (id, rank, joined_date, name)
values (31990, 'Aluf', to_date('26-01-2012', 'dd-mm-yyyy'), 'Randall');
insert into SOLIDER (id, rank, joined_date, name)
values (74142, 'Ranag', to_date('21-07-2011', 'dd-mm-yyyy'), 'Brendan');
insert into SOLIDER (id, rank, joined_date, name)
values (68182, 'Aluf', to_date('24-11-2011', 'dd-mm-yyyy'), 'Davy');
insert into SOLIDER (id, rank, joined_date, name)
values (49965, 'Aluf', to_date('16-07-2015', 'dd-mm-yyyy'), 'Lonnie');
insert into SOLIDER (id, rank, joined_date, name)
values (62863, 'Ranag', to_date('31-10-2007', 'dd-mm-yyyy'), 'Bonnie');
insert into SOLIDER (id, rank, joined_date, name)
values (61820, 'Samal', to_date('15-04-2021', 'dd-mm-yyyy'), 'Nina');
insert into SOLIDER (id, rank, joined_date, name)
values (12976, 'Aluf', to_date('05-01-1996', 'dd-mm-yyyy'), 'Cloris');
insert into SOLIDER (id, rank, joined_date, name)
values (93034, 'Samal', to_date('14-11-2015', 'dd-mm-yyyy'), 'Shelby');
insert into SOLIDER (id, rank, joined_date, name)
values (25864, 'Aluf', to_date('13-07-2012', 'dd-mm-yyyy'), 'Joy');
insert into SOLIDER (id, rank, joined_date, name)
values (82736, 'Ranag', to_date('10-12-2009', 'dd-mm-yyyy'), 'Collin');
insert into SOLIDER (id, rank, joined_date, name)
values (72570, 'Aluf', to_date('08-05-2018', 'dd-mm-yyyy'), 'Dennis');
insert into SOLIDER (id, rank, joined_date, name)
values (48596, 'Samal', to_date('20-06-2021', 'dd-mm-yyyy'), 'Davis');
insert into SOLIDER (id, rank, joined_date, name)
values (80024, 'Ranag', to_date('06-11-1998', 'dd-mm-yyyy'), 'Luis');
insert into SOLIDER (id, rank, joined_date, name)
values (15127, 'Aluf', to_date('04-02-2002', 'dd-mm-yyyy'), 'April');
insert into SOLIDER (id, rank, joined_date, name)
values (95450, 'Ranag', to_date('26-12-2005', 'dd-mm-yyyy'), 'Ronnie');
insert into SOLIDER (id, rank, joined_date, name)
values (14203, 'Ranag', to_date('10-02-2012', 'dd-mm-yyyy'), 'Betty');
insert into SOLIDER (id, rank, joined_date, name)
values (78559, 'Aluf', to_date('06-02-2007', 'dd-mm-yyyy'), 'Andrae');
insert into SOLIDER (id, rank, joined_date, name)
values (68916, 'Samal', to_date('24-01-1998', 'dd-mm-yyyy'), 'Eliza');
insert into SOLIDER (id, rank, joined_date, name)
values (32619, 'Aluf', to_date('26-04-2016', 'dd-mm-yyyy'), 'Lea');
insert into SOLIDER (id, rank, joined_date, name)
values (71870, 'Aluf', to_date('27-12-2022', 'dd-mm-yyyy'), 'April');
insert into SOLIDER (id, rank, joined_date, name)
values (29980, 'Aluf', to_date('10-08-1998', 'dd-mm-yyyy'), 'Rebecca');
insert into SOLIDER (id, rank, joined_date, name)
values (91262, 'Ranag', to_date('07-04-1997', 'dd-mm-yyyy'), 'Natascha');
insert into SOLIDER (id, rank, joined_date, name)
values (43151, 'Samal', to_date('09-06-2022', 'dd-mm-yyyy'), 'Merillee');
insert into SOLIDER (id, rank, joined_date, name)
values (38070, 'Samal', to_date('02-02-1998', 'dd-mm-yyyy'), 'Frederic');
insert into SOLIDER (id, rank, joined_date, name)
values (25872, 'Samal', to_date('30-01-2015', 'dd-mm-yyyy'), 'Meg');
insert into SOLIDER (id, rank, joined_date, name)
values (27680, 'Samal', to_date('03-08-2021', 'dd-mm-yyyy'), 'Jesse');
insert into SOLIDER (id, rank, joined_date, name)
values (66417, 'Ranag', to_date('07-07-2004', 'dd-mm-yyyy'), 'Gordon');
insert into SOLIDER (id, rank, joined_date, name)
values (13742, 'Ranag', to_date('22-07-2017', 'dd-mm-yyyy'), 'Bobbi');
insert into SOLIDER (id, rank, joined_date, name)
values (79779, 'Samal', to_date('27-12-1997', 'dd-mm-yyyy'), 'Moe');
insert into SOLIDER (id, rank, joined_date, name)
values (27585, 'Samal', to_date('16-10-2002', 'dd-mm-yyyy'), 'Janeane');
insert into SOLIDER (id, rank, joined_date, name)
values (16527, 'Samal', to_date('02-03-2007', 'dd-mm-yyyy'), 'Janeane');
insert into SOLIDER (id, rank, joined_date, name)
values (45396, 'Samal', to_date('31-01-2015', 'dd-mm-yyyy'), 'Andie');
insert into SOLIDER (id, rank, joined_date, name)
values (54988, 'Aluf', to_date('07-12-2015', 'dd-mm-yyyy'), 'Mickey');
insert into SOLIDER (id, rank, joined_date, name)
values (16526, 'Samal', to_date('03-11-2009', 'dd-mm-yyyy'), 'Nanci');
insert into SOLIDER (id, rank, joined_date, name)
values (65663, 'Ranag', to_date('26-10-1992', 'dd-mm-yyyy'), 'Judge');
insert into SOLIDER (id, rank, joined_date, name)
values (52893, 'Samal', to_date('13-04-2005', 'dd-mm-yyyy'), 'Nils');
insert into SOLIDER (id, rank, joined_date, name)
values (36745, 'Ranag', to_date('11-01-2016', 'dd-mm-yyyy'), 'Johnette');
insert into SOLIDER (id, rank, joined_date, name)
values (68398, 'Aluf', to_date('28-04-2000', 'dd-mm-yyyy'), 'Terri');
insert into SOLIDER (id, rank, joined_date, name)
values (38527, 'Aluf', to_date('11-02-2001', 'dd-mm-yyyy'), 'Latin');
insert into SOLIDER (id, rank, joined_date, name)
values (23888, 'Samal', to_date('16-01-2005', 'dd-mm-yyyy'), 'Antonio');
insert into SOLIDER (id, rank, joined_date, name)
values (82259, 'Aluf', to_date('09-04-2017', 'dd-mm-yyyy'), 'Lionel');
insert into SOLIDER (id, rank, joined_date, name)
values (66562, 'Aluf', to_date('17-10-2013', 'dd-mm-yyyy'), 'Shannyn');
insert into SOLIDER (id, rank, joined_date, name)
values (51224, 'Aluf', to_date('04-04-2002', 'dd-mm-yyyy'), 'Hope');
insert into SOLIDER (id, rank, joined_date, name)
values (30499, 'Ranag', to_date('07-12-2022', 'dd-mm-yyyy'), 'Nora');
insert into SOLIDER (id, rank, joined_date, name)
values (59590, 'Aluf', to_date('03-12-1997', 'dd-mm-yyyy'), 'Jodie');
insert into SOLIDER (id, rank, joined_date, name)
values (76061, 'Aluf', to_date('04-03-1991', 'dd-mm-yyyy'), 'Peter');
insert into SOLIDER (id, rank, joined_date, name)
values (83490, 'Samal', to_date('25-05-2022', 'dd-mm-yyyy'), 'Antonio');
insert into SOLIDER (id, rank, joined_date, name)
values (68195, 'Ranag', to_date('23-07-2014', 'dd-mm-yyyy'), 'Malcolm');
insert into SOLIDER (id, rank, joined_date, name)
values (19871, 'Samal', to_date('14-11-2020', 'dd-mm-yyyy'), 'Angela');
insert into SOLIDER (id, rank, joined_date, name)
values (93621, 'Aluf', to_date('02-02-2002', 'dd-mm-yyyy'), 'Paula');
insert into SOLIDER (id, rank, joined_date, name)
values (84243, 'Ranag', to_date('05-01-1997', 'dd-mm-yyyy'), 'Cuba');
insert into SOLIDER (id, rank, joined_date, name)
values (72462, 'Samal', to_date('08-12-2007', 'dd-mm-yyyy'), 'Edward');
insert into SOLIDER (id, rank, joined_date, name)
values (36195, 'Samal', to_date('08-01-2019', 'dd-mm-yyyy'), 'Burton');
insert into SOLIDER (id, rank, joined_date, name)
values (64321, 'Samal', to_date('18-04-1996', 'dd-mm-yyyy'), 'Harris');
insert into SOLIDER (id, rank, joined_date, name)
values (77142, 'Samal', to_date('12-04-1998', 'dd-mm-yyyy'), 'Marley');
insert into SOLIDER (id, rank, joined_date, name)
values (24358, 'Samal', to_date('18-11-1990', 'dd-mm-yyyy'), 'Gailard');
insert into SOLIDER (id, rank, joined_date, name)
values (42508, 'Samal', to_date('29-08-2022', 'dd-mm-yyyy'), 'Roger');
insert into SOLIDER (id, rank, joined_date, name)
values (76033, 'Ranag', to_date('05-01-1997', 'dd-mm-yyyy'), 'Wang');
insert into SOLIDER (id, rank, joined_date, name)
values (88363, 'Samal', to_date('08-06-2020', 'dd-mm-yyyy'), 'Mena');
insert into SOLIDER (id, rank, joined_date, name)
values (56071, 'Samal', to_date('15-05-2002', 'dd-mm-yyyy'), 'Tilda');
insert into SOLIDER (id, rank, joined_date, name)
values (28050, 'Ranag', to_date('30-10-2012', 'dd-mm-yyyy'), 'Allison');
insert into SOLIDER (id, rank, joined_date, name)
values (20537, 'Aluf', to_date('27-04-2022', 'dd-mm-yyyy'), 'Celia');
insert into SOLIDER (id, rank, joined_date, name)
values (74377, 'Samal', to_date('06-03-2003', 'dd-mm-yyyy'), 'Lily');
insert into SOLIDER (id, rank, joined_date, name)
values (23139, 'Aluf', to_date('03-12-2019', 'dd-mm-yyyy'), 'Curtis');
insert into SOLIDER (id, rank, joined_date, name)
values (54024, 'Samal', to_date('19-09-2012', 'dd-mm-yyyy'), 'Roscoe');
insert into SOLIDER (id, rank, joined_date, name)
values (54630, 'Ranag', to_date('09-07-2006', 'dd-mm-yyyy'), 'Burton');
insert into SOLIDER (id, rank, joined_date, name)
values (27506, 'Ranag', to_date('08-01-1991', 'dd-mm-yyyy'), 'Carl');
insert into SOLIDER (id, rank, joined_date, name)
values (54449, 'Samal', to_date('21-12-2016', 'dd-mm-yyyy'), 'Michelle');
insert into SOLIDER (id, rank, joined_date, name)
values (92480, 'Ranag', to_date('05-01-2009', 'dd-mm-yyyy'), 'Todd');
insert into SOLIDER (id, rank, joined_date, name)
values (83458, 'Samal', to_date('09-07-1993', 'dd-mm-yyyy'), 'Emily');
insert into SOLIDER (id, rank, joined_date, name)
values (81479, 'Aluf', to_date('02-09-2020', 'dd-mm-yyyy'), 'Shannon');
insert into SOLIDER (id, rank, joined_date, name)
values (35575, 'Samal', to_date('31-03-2020', 'dd-mm-yyyy'), 'Mel');
insert into SOLIDER (id, rank, joined_date, name)
values (42991, 'Aluf', to_date('17-04-2009', 'dd-mm-yyyy'), 'Carrie');
commit;
prompt 500 records committed...
insert into SOLIDER (id, rank, joined_date, name)
values (43853, 'Ranag', to_date('18-03-1990', 'dd-mm-yyyy'), 'Lloyd');
insert into SOLIDER (id, rank, joined_date, name)
values (83650, 'Aluf', to_date('02-06-2008', 'dd-mm-yyyy'), 'Mika');
insert into SOLIDER (id, rank, joined_date, name)
values (69885, 'Samal', to_date('20-02-1997', 'dd-mm-yyyy'), 'Rhea');
insert into SOLIDER (id, rank, joined_date, name)
values (15976, 'Ranag', to_date('22-05-1997', 'dd-mm-yyyy'), 'Nikka');
insert into SOLIDER (id, rank, joined_date, name)
values (98775, 'Aluf', to_date('29-10-2023', 'dd-mm-yyyy'), 'Tony');
insert into SOLIDER (id, rank, joined_date, name)
values (56117, 'Aluf', to_date('30-06-2011', 'dd-mm-yyyy'), 'Breckin');
insert into SOLIDER (id, rank, joined_date, name)
values (50764, 'Aluf', to_date('29-01-2015', 'dd-mm-yyyy'), 'Jean-Luc');
insert into SOLIDER (id, rank, joined_date, name)
values (82707, 'Ranag', to_date('11-10-1990', 'dd-mm-yyyy'), 'Terry');
insert into SOLIDER (id, rank, joined_date, name)
values (31756, 'Samal', to_date('05-05-1995', 'dd-mm-yyyy'), 'Nigel');
insert into SOLIDER (id, rank, joined_date, name)
values (34604, 'Aluf', to_date('13-06-2013', 'dd-mm-yyyy'), 'Tim');
insert into SOLIDER (id, rank, joined_date, name)
values (33836, 'Aluf', to_date('01-12-1992', 'dd-mm-yyyy'), 'Barbara');
insert into SOLIDER (id, rank, joined_date, name)
values (25305, 'Samal', to_date('07-12-1995', 'dd-mm-yyyy'), 'Heather');
insert into SOLIDER (id, rank, joined_date, name)
values (63569, 'Samal', to_date('29-10-2008', 'dd-mm-yyyy'), 'Carla');
insert into SOLIDER (id, rank, joined_date, name)
values (85131, 'Aluf', to_date('14-07-2015', 'dd-mm-yyyy'), 'Keith');
insert into SOLIDER (id, rank, joined_date, name)
values (75855, 'Samal', to_date('17-04-1996', 'dd-mm-yyyy'), 'Quentin');
insert into SOLIDER (id, rank, joined_date, name)
values (64523, 'Samal', to_date('22-09-1997', 'dd-mm-yyyy'), 'Lara');
insert into SOLIDER (id, rank, joined_date, name)
values (68893, 'Aluf', to_date('01-11-2020', 'dd-mm-yyyy'), 'Nigel');
insert into SOLIDER (id, rank, joined_date, name)
values (54012, 'Aluf', to_date('28-01-1992', 'dd-mm-yyyy'), 'Diane');
insert into SOLIDER (id, rank, joined_date, name)
values (73591, 'Ranag', to_date('05-01-2023', 'dd-mm-yyyy'), 'Marie');
insert into SOLIDER (id, rank, joined_date, name)
values (76404, 'Samal', to_date('10-10-2016', 'dd-mm-yyyy'), 'Bret');
insert into SOLIDER (id, rank, joined_date, name)
values (37423, 'Samal', to_date('09-10-1999', 'dd-mm-yyyy'), 'Peabo');
insert into SOLIDER (id, rank, joined_date, name)
values (28969, 'Ranag', to_date('02-11-2015', 'dd-mm-yyyy'), 'Winona');
insert into SOLIDER (id, rank, joined_date, name)
values (47166, 'Aluf', to_date('04-06-1992', 'dd-mm-yyyy'), 'Corey');
insert into SOLIDER (id, rank, joined_date, name)
values (53402, 'Aluf', to_date('05-11-1996', 'dd-mm-yyyy'), 'Johnette');
insert into SOLIDER (id, rank, joined_date, name)
values (90538, 'Aluf', to_date('06-04-2017', 'dd-mm-yyyy'), 'Nastassja');
insert into SOLIDER (id, rank, joined_date, name)
values (89129, 'Ranag', to_date('01-06-2009', 'dd-mm-yyyy'), 'Lee');
insert into SOLIDER (id, rank, joined_date, name)
values (67829, 'Aluf', to_date('15-10-2006', 'dd-mm-yyyy'), 'Udo');
insert into SOLIDER (id, rank, joined_date, name)
values (32153, 'Ranag', to_date('17-03-1998', 'dd-mm-yyyy'), 'Chuck');
insert into SOLIDER (id, rank, joined_date, name)
values (53527, 'Aluf', to_date('22-07-1999', 'dd-mm-yyyy'), 'Marc');
insert into SOLIDER (id, rank, joined_date, name)
values (55025, 'Aluf', to_date('09-08-2006', 'dd-mm-yyyy'), 'Avenged');
insert into SOLIDER (id, rank, joined_date, name)
values (96847, 'Ranag', to_date('29-08-2000', 'dd-mm-yyyy'), 'Natascha');
insert into SOLIDER (id, rank, joined_date, name)
values (21253, 'Ranag', to_date('04-01-2017', 'dd-mm-yyyy'), 'Gabriel');
insert into SOLIDER (id, rank, joined_date, name)
values (94469, 'Aluf', to_date('08-11-2022', 'dd-mm-yyyy'), 'Merle');
insert into SOLIDER (id, rank, joined_date, name)
values (38598, 'Ranag', to_date('05-10-2005', 'dd-mm-yyyy'), 'Jim');
insert into SOLIDER (id, rank, joined_date, name)
values (91060, 'Aluf', to_date('06-04-2002', 'dd-mm-yyyy'), 'Wayman');
insert into SOLIDER (id, rank, joined_date, name)
values (17930, 'Aluf', to_date('01-09-2008', 'dd-mm-yyyy'), 'Amy');
insert into SOLIDER (id, rank, joined_date, name)
values (29796, 'Aluf', to_date('26-09-1996', 'dd-mm-yyyy'), 'Jackie');
insert into SOLIDER (id, rank, joined_date, name)
values (15415, 'Samal', to_date('13-03-1993', 'dd-mm-yyyy'), 'Spencer');
insert into SOLIDER (id, rank, joined_date, name)
values (19548, 'Samal', to_date('06-11-2020', 'dd-mm-yyyy'), 'Malcolm');
insert into SOLIDER (id, rank, joined_date, name)
values (24705, 'Samal', to_date('27-03-2013', 'dd-mm-yyyy'), 'Seth');
insert into SOLIDER (id, rank, joined_date, name)
values (52070, 'Ranag', to_date('30-06-1993', 'dd-mm-yyyy'), 'Jon');
insert into SOLIDER (id, rank, joined_date, name)
values (19119, 'Ranag', to_date('16-07-2000', 'dd-mm-yyyy'), 'Clarence');
insert into SOLIDER (id, rank, joined_date, name)
values (58075, 'Ranag', to_date('08-02-2002', 'dd-mm-yyyy'), 'Adrien');
insert into SOLIDER (id, rank, joined_date, name)
values (66061, 'Aluf', to_date('06-10-2008', 'dd-mm-yyyy'), 'Dwight');
insert into SOLIDER (id, rank, joined_date, name)
values (35535, 'Aluf', to_date('14-07-1999', 'dd-mm-yyyy'), 'Pamela');
insert into SOLIDER (id, rank, joined_date, name)
values (69200, 'Ranag', to_date('16-02-1992', 'dd-mm-yyyy'), 'Donna');
insert into SOLIDER (id, rank, joined_date, name)
values (72422, 'Samal', to_date('30-06-2021', 'dd-mm-yyyy'), 'Nastassja');
insert into SOLIDER (id, rank, joined_date, name)
values (27331, 'Ranag', to_date('13-09-2002', 'dd-mm-yyyy'), 'William');
insert into SOLIDER (id, rank, joined_date, name)
values (86119, 'Samal', to_date('22-09-2006', 'dd-mm-yyyy'), 'Tony');
insert into SOLIDER (id, rank, joined_date, name)
values (98780, 'Ranag', to_date('08-05-1990', 'dd-mm-yyyy'), 'Lorraine');
insert into SOLIDER (id, rank, joined_date, name)
values (79497, 'Aluf', to_date('28-08-2001', 'dd-mm-yyyy'), 'Nicolas');
insert into SOLIDER (id, rank, joined_date, name)
values (26924, 'Aluf', to_date('31-03-2021', 'dd-mm-yyyy'), 'Lloyd');
insert into SOLIDER (id, rank, joined_date, name)
values (24768, 'Aluf', to_date('22-10-2001', 'dd-mm-yyyy'), 'Anne');
insert into SOLIDER (id, rank, joined_date, name)
values (60162, 'Samal', to_date('23-01-1997', 'dd-mm-yyyy'), 'Martha');
insert into SOLIDER (id, rank, joined_date, name)
values (86228, 'Ranag', to_date('04-10-2007', 'dd-mm-yyyy'), 'Avril');
insert into SOLIDER (id, rank, joined_date, name)
values (77430, 'Ranag', to_date('28-09-1996', 'dd-mm-yyyy'), 'Petula');
insert into SOLIDER (id, rank, joined_date, name)
values (26334, 'Ranag', to_date('29-09-2023', 'dd-mm-yyyy'), 'Nils');
insert into SOLIDER (id, rank, joined_date, name)
values (30391, 'Aluf', to_date('07-12-2016', 'dd-mm-yyyy'), 'Dave');
insert into SOLIDER (id, rank, joined_date, name)
values (17337, 'Ranag', to_date('23-11-1998', 'dd-mm-yyyy'), 'Christine');
insert into SOLIDER (id, rank, joined_date, name)
values (13401, 'Aluf', to_date('13-01-1995', 'dd-mm-yyyy'), 'Sean');
insert into SOLIDER (id, rank, joined_date, name)
values (14021, 'Aluf', to_date('03-02-2017', 'dd-mm-yyyy'), 'Nikki');
insert into SOLIDER (id, rank, joined_date, name)
values (50139, 'Ranag', to_date('01-11-2012', 'dd-mm-yyyy'), 'Bernard');
insert into SOLIDER (id, rank, joined_date, name)
values (87563, 'Samal', to_date('13-06-2021', 'dd-mm-yyyy'), 'Dustin');
insert into SOLIDER (id, rank, joined_date, name)
values (41351, 'Samal', to_date('06-11-2000', 'dd-mm-yyyy'), 'Garth');
insert into SOLIDER (id, rank, joined_date, name)
values (31604, 'Ranag', to_date('29-05-1991', 'dd-mm-yyyy'), 'Greg');
insert into SOLIDER (id, rank, joined_date, name)
values (51484, 'Aluf', to_date('16-03-1997', 'dd-mm-yyyy'), 'Danni');
insert into SOLIDER (id, rank, joined_date, name)
values (18329, 'Samal', to_date('21-06-1994', 'dd-mm-yyyy'), 'Scarlett');
insert into SOLIDER (id, rank, joined_date, name)
values (45314, 'Ranag', to_date('09-03-2009', 'dd-mm-yyyy'), 'Boz');
insert into SOLIDER (id, rank, joined_date, name)
values (82320, 'Aluf', to_date('28-07-2010', 'dd-mm-yyyy'), 'Will');
insert into SOLIDER (id, rank, joined_date, name)
values (52358, 'Aluf', to_date('05-06-2021', 'dd-mm-yyyy'), 'Geoffrey');
insert into SOLIDER (id, rank, joined_date, name)
values (32187, 'Ranag', to_date('15-01-2005', 'dd-mm-yyyy'), 'Colleen');
insert into SOLIDER (id, rank, joined_date, name)
values (47949, 'Aluf', to_date('02-09-2014', 'dd-mm-yyyy'), 'Angela');
insert into SOLIDER (id, rank, joined_date, name)
values (56647, 'Aluf', to_date('21-03-2012', 'dd-mm-yyyy'), 'Geoffrey');
insert into SOLIDER (id, rank, joined_date, name)
values (84316, 'Ranag', to_date('20-03-1995', 'dd-mm-yyyy'), 'Gordon');
insert into SOLIDER (id, rank, joined_date, name)
values (69485, 'Samal', to_date('04-09-1991', 'dd-mm-yyyy'), 'Maury');
insert into SOLIDER (id, rank, joined_date, name)
values (49433, 'Samal', to_date('09-12-2000', 'dd-mm-yyyy'), 'Jarvis');
insert into SOLIDER (id, rank, joined_date, name)
values (15634, 'Ranag', to_date('28-01-2001', 'dd-mm-yyyy'), 'Ali');
insert into SOLIDER (id, rank, joined_date, name)
values (31434, 'Aluf', to_date('23-12-2015', 'dd-mm-yyyy'), 'Randy');
insert into SOLIDER (id, rank, joined_date, name)
values (71697, 'Ranag', to_date('31-08-2005', 'dd-mm-yyyy'), 'Chi');
insert into SOLIDER (id, rank, joined_date, name)
values (44129, 'Samal', to_date('04-01-1998', 'dd-mm-yyyy'), 'Gino');
insert into SOLIDER (id, rank, joined_date, name)
values (29795, 'Aluf', to_date('09-05-2004', 'dd-mm-yyyy'), 'Vincent');
insert into SOLIDER (id, rank, joined_date, name)
values (86983, 'Samal', to_date('21-06-1996', 'dd-mm-yyyy'), 'Petula');
insert into SOLIDER (id, rank, joined_date, name)
values (37249, 'Ranag', to_date('01-09-2003', 'dd-mm-yyyy'), 'Chantי');
insert into SOLIDER (id, rank, joined_date, name)
values (17990, 'Aluf', to_date('09-02-1993', 'dd-mm-yyyy'), 'Sam');
insert into SOLIDER (id, rank, joined_date, name)
values (81151, 'Ranag', to_date('11-10-2000', 'dd-mm-yyyy'), 'Hex');
insert into SOLIDER (id, rank, joined_date, name)
values (20186, 'Samal', to_date('05-02-2005', 'dd-mm-yyyy'), 'Shawn');
insert into SOLIDER (id, rank, joined_date, name)
values (61523, 'Samal', to_date('29-10-2006', 'dd-mm-yyyy'), 'Shannyn');
insert into SOLIDER (id, rank, joined_date, name)
values (30768, 'Aluf', to_date('19-08-2007', 'dd-mm-yyyy'), 'Juliette');
insert into SOLIDER (id, rank, joined_date, name)
values (75599, 'Aluf', to_date('30-06-2016', 'dd-mm-yyyy'), 'Kurtwood');
insert into SOLIDER (id, rank, joined_date, name)
values (93946, 'Samal', to_date('20-06-2017', 'dd-mm-yyyy'), 'Sandra');
insert into SOLIDER (id, rank, joined_date, name)
values (16086, 'Ranag', to_date('29-11-2010', 'dd-mm-yyyy'), 'Mitchell');
insert into SOLIDER (id, rank, joined_date, name)
values (89246, 'Aluf', to_date('25-10-2010', 'dd-mm-yyyy'), 'Hikaru');
insert into SOLIDER (id, rank, joined_date, name)
values (68903, 'Samal', to_date('15-04-1991', 'dd-mm-yyyy'), 'Rueben');
insert into SOLIDER (id, rank, joined_date, name)
values (65362, 'Aluf', to_date('15-10-2021', 'dd-mm-yyyy'), 'Horace');
insert into SOLIDER (id, rank, joined_date, name)
values (38703, 'Ranag', to_date('26-03-2023', 'dd-mm-yyyy'), 'Gavin');
insert into SOLIDER (id, rank, joined_date, name)
values (24008, 'Aluf', to_date('13-07-2013', 'dd-mm-yyyy'), 'Angie');
insert into SOLIDER (id, rank, joined_date, name)
values (79949, 'Samal', to_date('02-09-2019', 'dd-mm-yyyy'), 'Glen');
commit;
prompt 597 records loaded
prompt Loading PILOT...
insert into PILOT (type, id)
values ('combat', 59590);
insert into PILOT (type, id)
values ('Transport', 53402);
insert into PILOT (type, id)
values ('Transport', 96989);
insert into PILOT (type, id)
values ('combat', 74377);
insert into PILOT (type, id)
values ('Transport', 50695);
insert into PILOT (type, id)
values ('Transport', 67266);
insert into PILOT (type, id)
values ('Transport', 91743);
insert into PILOT (type, id)
values ('Transport', 99897);
insert into PILOT (type, id)
values ('Transport', 33798);
insert into PILOT (type, id)
values ('combat', 79949);
insert into PILOT (type, id)
values ('combat', 89288);
insert into PILOT (type, id)
values ('Transport', 30564);
insert into PILOT (type, id)
values ('combat', 43194);
insert into PILOT (type, id)
values ('combat', 27680);
insert into PILOT (type, id)
values ('combat', 59074);
insert into PILOT (type, id)
values ('combat', 39359);
insert into PILOT (type, id)
values ('Transport', 52513);
insert into PILOT (type, id)
values ('combat', 25305);
insert into PILOT (type, id)
values ('combat', 93427);
insert into PILOT (type, id)
values ('combat', 68519);
insert into PILOT (type, id)
values ('combat', 93753);
insert into PILOT (type, id)
values ('Transport', 26334);
insert into PILOT (type, id)
values ('Transport', 96486);
insert into PILOT (type, id)
values ('combat', 54630);
insert into PILOT (type, id)
values ('Transport', 98199);
insert into PILOT (type, id)
values ('Transport', 68791);
insert into PILOT (type, id)
values ('Transport', 60162);
insert into PILOT (type, id)
values ('Transport', 87563);
insert into PILOT (type, id)
values ('Transport', 69885);
insert into PILOT (type, id)
values ('combat', 21328);
insert into PILOT (type, id)
values ('Transport', 15976);
insert into PILOT (type, id)
values ('Transport', 14722);
insert into PILOT (type, id)
values ('Transport', 81151);
insert into PILOT (type, id)
values ('combat', 92095);
insert into PILOT (type, id)
values ('combat', 97816);
insert into PILOT (type, id)
values ('combat', 26485);
insert into PILOT (type, id)
values ('Transport', 46875);
insert into PILOT (type, id)
values ('combat', 64523);
insert into PILOT (type, id)
values ('Transport', 44198);
insert into PILOT (type, id)
values ('combat', 35204);
insert into PILOT (type, id)
values ('combat', 15934);
insert into PILOT (type, id)
values ('Transport', 18027);
insert into PILOT (type, id)
values ('Transport', 82602);
insert into PILOT (type, id)
values ('Transport', 83490);
insert into PILOT (type, id)
values ('Transport', 84939);
insert into PILOT (type, id)
values ('combat', 73591);
insert into PILOT (type, id)
values ('combat', 43654);
insert into PILOT (type, id)
values ('Transport', 82320);
insert into PILOT (type, id)
values ('Transport', 16086);
insert into PILOT (type, id)
values ('combat', 12511);
insert into PILOT (type, id)
values ('combat', 28969);
insert into PILOT (type, id)
values ('Transport', 79861);
insert into PILOT (type, id)
values ('combat', 77651);
insert into PILOT (type, id)
values ('Transport', 71846);
insert into PILOT (type, id)
values ('combat', 69563);
insert into PILOT (type, id)
values ('Transport', 65663);
insert into PILOT (type, id)
values ('combat', 64514);
insert into PILOT (type, id)
values ('Transport', 25161);
insert into PILOT (type, id)
values ('combat', 34604);
insert into PILOT (type, id)
values ('combat', 98765);
insert into PILOT (type, id)
values ('combat', 43562);
insert into PILOT (type, id)
values ('combat', 66373);
insert into PILOT (type, id)
values ('combat', 51561);
insert into PILOT (type, id)
values ('combat', 30903);
insert into PILOT (type, id)
values ('combat', 79848);
insert into PILOT (type, id)
values ('Transport', 80024);
insert into PILOT (type, id)
values ('combat', 22092);
insert into PILOT (type, id)
values ('Transport', 51479);
insert into PILOT (type, id)
values ('combat', 43151);
insert into PILOT (type, id)
values ('Transport', 77425);
insert into PILOT (type, id)
values ('Transport', 40203);
insert into PILOT (type, id)
values ('Transport', 91812);
insert into PILOT (type, id)
values ('combat', 14431);
insert into PILOT (type, id)
values ('Transport', 31068);
insert into PILOT (type, id)
values ('Transport', 63565);
insert into PILOT (type, id)
values ('combat', 13196);
insert into PILOT (type, id)
values ('combat', 15526);
insert into PILOT (type, id)
values ('Transport', 61694);
insert into PILOT (type, id)
values ('Transport', 16527);
insert into PILOT (type, id)
values ('combat', 74142);
insert into PILOT (type, id)
values ('combat', 99716);
insert into PILOT (type, id)
values ('combat', 49613);
insert into PILOT (type, id)
values ('combat', 60327);
insert into PILOT (type, id)
values ('combat', 32187);
insert into PILOT (type, id)
values ('Transport', 14162);
insert into PILOT (type, id)
values ('combat', 43285);
insert into PILOT (type, id)
values ('combat', 29249);
insert into PILOT (type, id)
values ('Transport', 91724);
insert into PILOT (type, id)
values ('combat', 11979);
insert into PILOT (type, id)
values ('Transport', 19256);
insert into PILOT (type, id)
values ('combat', 27000);
insert into PILOT (type, id)
values ('Transport', 30391);
insert into PILOT (type, id)
values ('Transport', 82851);
insert into PILOT (type, id)
values ('combat', 72499);
insert into PILOT (type, id)
values ('combat', 30768);
insert into PILOT (type, id)
values ('Transport', 49433);
insert into PILOT (type, id)
values ('combat', 35732);
insert into PILOT (type, id)
values ('Transport', 65362);
insert into PILOT (type, id)
values ('Transport', 25848);
insert into PILOT (type, id)
values ('combat', 73179);
commit;
prompt 100 records committed...
insert into PILOT (type, id)
values ('combat', 65378);
insert into PILOT (type, id)
values ('Transport', 94360);
insert into PILOT (type, id)
values ('Transport', 74336);
insert into PILOT (type, id)
values ('Transport', 90044);
insert into PILOT (type, id)
values ('combat', 66417);
insert into PILOT (type, id)
values ('Transport', 89645);
insert into PILOT (type, id)
values ('Transport', 60700);
insert into PILOT (type, id)
values ('combat', 74963);
insert into PILOT (type, id)
values ('combat', 90339);
insert into PILOT (type, id)
values ('combat', 38300);
insert into PILOT (type, id)
values ('Transport', 78043);
insert into PILOT (type, id)
values ('Transport', 58392);
insert into PILOT (type, id)
values ('Transport', 82097);
insert into PILOT (type, id)
values ('Transport', 21748);
insert into PILOT (type, id)
values ('combat', 89129);
insert into PILOT (type, id)
values ('Transport', 87100);
insert into PILOT (type, id)
values ('combat', 36745);
insert into PILOT (type, id)
values ('combat', 82736);
insert into PILOT (type, id)
values ('combat', 35535);
insert into PILOT (type, id)
values ('combat', 75599);
insert into PILOT (type, id)
values ('Transport', 56300);
insert into PILOT (type, id)
values ('combat', 91288);
insert into PILOT (type, id)
values ('combat', 92268);
insert into PILOT (type, id)
values ('Transport', 33309);
insert into PILOT (type, id)
values ('Transport', 23052);
insert into PILOT (type, id)
values ('Transport', 38598);
insert into PILOT (type, id)
values ('Transport', 72595);
insert into PILOT (type, id)
values ('combat', 41496);
insert into PILOT (type, id)
values ('combat', 20088);
insert into PILOT (type, id)
values ('Transport', 26800);
insert into PILOT (type, id)
values ('combat', 57635);
insert into PILOT (type, id)
values ('Transport', 60272);
insert into PILOT (type, id)
values ('combat', 21591);
insert into PILOT (type, id)
values ('Transport', 28934);
insert into PILOT (type, id)
values ('Transport', 20458);
insert into PILOT (type, id)
values ('combat', 95871);
insert into PILOT (type, id)
values ('Transport', 36670);
insert into PILOT (type, id)
values ('Transport', 93946);
insert into PILOT (type, id)
values ('Transport', 68182);
insert into PILOT (type, id)
values ('combat', 16453);
insert into PILOT (type, id)
values ('Transport', 25594);
insert into PILOT (type, id)
values ('combat', 96250);
insert into PILOT (type, id)
values ('combat', 15127);
insert into PILOT (type, id)
values ('Transport', 60493);
insert into PILOT (type, id)
values ('combat', 36013);
insert into PILOT (type, id)
values ('Transport', 41661);
insert into PILOT (type, id)
values ('combat', 31269);
insert into PILOT (type, id)
values ('combat', 25975);
insert into PILOT (type, id)
values ('Transport', 82450);
insert into PILOT (type, id)
values ('Transport', 48744);
insert into PILOT (type, id)
values ('combat', 22299);
insert into PILOT (type, id)
values ('Transport', 50263);
insert into PILOT (type, id)
values ('Transport', 64715);
insert into PILOT (type, id)
values ('Transport', 18840);
insert into PILOT (type, id)
values ('combat', 51484);
insert into PILOT (type, id)
values ('Transport', 88824);
insert into PILOT (type, id)
values ('combat', 36195);
insert into PILOT (type, id)
values ('Transport', 45175);
insert into PILOT (type, id)
values ('combat', 86287);
insert into PILOT (type, id)
values ('Transport', 50158);
insert into PILOT (type, id)
values ('Transport', 27331);
insert into PILOT (type, id)
values ('Transport', 20873);
insert into PILOT (type, id)
values ('Transport', 17323);
insert into PILOT (type, id)
values ('Transport', 38360);
insert into PILOT (type, id)
values ('Transport', 74806);
insert into PILOT (type, id)
values ('combat', 72422);
insert into PILOT (type, id)
values ('combat', 79497);
insert into PILOT (type, id)
values ('Transport', 71870);
insert into PILOT (type, id)
values ('Transport', 22704);
insert into PILOT (type, id)
values ('combat', 83627);
insert into PILOT (type, id)
values ('combat', 56071);
insert into PILOT (type, id)
values ('combat', 36202);
insert into PILOT (type, id)
values ('combat', 46422);
insert into PILOT (type, id)
values ('Transport', 24367);
insert into PILOT (type, id)
values ('Transport', 66722);
insert into PILOT (type, id)
values ('Transport', 19891);
insert into PILOT (type, id)
values ('Transport', 44053);
insert into PILOT (type, id)
values ('Transport', 97719);
insert into PILOT (type, id)
values ('combat', 87570);
insert into PILOT (type, id)
values ('Transport', 25029);
insert into PILOT (type, id)
values ('combat', 43494);
insert into PILOT (type, id)
values ('combat', 27506);
insert into PILOT (type, id)
values ('Transport', 33292);
insert into PILOT (type, id)
values ('combat', 54562);
insert into PILOT (type, id)
values ('combat', 53179);
insert into PILOT (type, id)
values ('combat', 89638);
insert into PILOT (type, id)
values ('Transport', 38703);
insert into PILOT (type, id)
values ('combat', 64321);
insert into PILOT (type, id)
values ('Transport', 17842);
insert into PILOT (type, id)
values ('combat', 38596);
insert into PILOT (type, id)
values ('Transport', 62193);
insert into PILOT (type, id)
values ('Transport', 66315);
insert into PILOT (type, id)
values ('combat', 24067);
insert into PILOT (type, id)
values ('combat', 18843);
insert into PILOT (type, id)
values ('Transport', 60157);
insert into PILOT (type, id)
values ('combat', 73316);
insert into PILOT (type, id)
values ('combat', 15093);
insert into PILOT (type, id)
values ('Transport', 16564);
insert into PILOT (type, id)
values ('combat', 62173);
insert into PILOT (type, id)
values ('combat', 20186);
commit;
prompt 200 records committed...
insert into PILOT (type, id)
values ('combat', 91417);
insert into PILOT (type, id)
values ('Transport', 98780);
insert into PILOT (type, id)
values ('combat', 76108);
insert into PILOT (type, id)
values ('Transport', 57469);
insert into PILOT (type, id)
values ('Transport', 62863);
insert into PILOT (type, id)
values ('combat', 14203);
insert into PILOT (type, id)
values ('Transport', 32153);
insert into PILOT (type, id)
values ('combat', 86888);
insert into PILOT (type, id)
values ('Transport', 44129);
insert into PILOT (type, id)
values ('Transport', 54516);
insert into PILOT (type, id)
values ('combat', 43014);
insert into PILOT (type, id)
values ('combat', 14737);
insert into PILOT (type, id)
values ('Transport', 24008);
insert into PILOT (type, id)
values ('combat', 61947);
insert into PILOT (type, id)
values ('Transport', 49245);
insert into PILOT (type, id)
values ('Transport', 59046);
insert into PILOT (type, id)
values ('Transport', 29795);
insert into PILOT (type, id)
values ('combat', 50978);
insert into PILOT (type, id)
values ('combat', 98775);
insert into PILOT (type, id)
values ('combat', 83616);
insert into PILOT (type, id)
values ('combat', 86576);
insert into PILOT (type, id)
values ('Transport', 93749);
insert into PILOT (type, id)
values ('Transport', 71117);
insert into PILOT (type, id)
values ('Transport', 14263);
insert into PILOT (type, id)
values ('Transport', 25864);
insert into PILOT (type, id)
values ('combat', 97413);
insert into PILOT (type, id)
values ('combat', 46105);
insert into PILOT (type, id)
values ('combat', 53527);
insert into PILOT (type, id)
values ('combat', 33297);
insert into PILOT (type, id)
values ('Transport', 91060);
insert into PILOT (type, id)
values ('Transport', 43598);
insert into PILOT (type, id)
values ('combat', 88363);
insert into PILOT (type, id)
values ('combat', 56825);
insert into PILOT (type, id)
values ('Transport', 61552);
insert into PILOT (type, id)
values ('Transport', 76404);
insert into PILOT (type, id)
values ('combat', 63946);
insert into PILOT (type, id)
values ('combat', 21208);
insert into PILOT (type, id)
values ('Transport', 45555);
insert into PILOT (type, id)
values ('Transport', 46863);
insert into PILOT (type, id)
values ('combat', 81674);
insert into PILOT (type, id)
values ('combat', 79779);
insert into PILOT (type, id)
values ('combat', 77142);
insert into PILOT (type, id)
values ('Transport', 31841);
insert into PILOT (type, id)
values ('Transport', 73952);
insert into PILOT (type, id)
values ('Transport', 19548);
insert into PILOT (type, id)
values ('combat', 56717);
insert into PILOT (type, id)
values ('Transport', 81479);
insert into PILOT (type, id)
values ('Transport', 86983);
insert into PILOT (type, id)
values ('combat', 98984);
insert into PILOT (type, id)
values ('combat', 81300);
insert into PILOT (type, id)
values ('Transport', 69465);
insert into PILOT (type, id)
values ('combat', 79724);
insert into PILOT (type, id)
values ('Transport', 27277);
insert into PILOT (type, id)
values ('combat', 16274);
insert into PILOT (type, id)
values ('combat', 84373);
insert into PILOT (type, id)
values ('combat', 64112);
insert into PILOT (type, id)
values ('combat', 15365);
insert into PILOT (type, id)
values ('combat', 38672);
insert into PILOT (type, id)
values ('Transport', 28050);
insert into PILOT (type, id)
values ('combat', 96847);
insert into PILOT (type, id)
values ('combat', 61023);
insert into PILOT (type, id)
values ('combat', 56687);
insert into PILOT (type, id)
values ('combat', 42508);
insert into PILOT (type, id)
values ('combat', 95939);
insert into PILOT (type, id)
values ('Transport', 83551);
insert into PILOT (type, id)
values ('Transport', 31785);
insert into PILOT (type, id)
values ('combat', 43311);
insert into PILOT (type, id)
values ('combat', 12271);
insert into PILOT (type, id)
values ('combat', 47166);
insert into PILOT (type, id)
values ('combat', 84243);
insert into PILOT (type, id)
values ('combat', 25176);
insert into PILOT (type, id)
values ('Transport', 64759);
insert into PILOT (type, id)
values ('Transport', 62775);
insert into PILOT (type, id)
values ('combat', 96835);
insert into PILOT (type, id)
values ('Transport', 30832);
insert into PILOT (type, id)
values ('combat', 84844);
insert into PILOT (type, id)
values ('combat', 61523);
insert into PILOT (type, id)
values ('combat', 93998);
insert into PILOT (type, id)
values ('Transport', 76033);
insert into PILOT (type, id)
values ('combat', 20562);
insert into PILOT (type, id)
values ('Transport', 36395);
insert into PILOT (type, id)
values ('combat', 37423);
insert into PILOT (type, id)
values ('Transport', 50774);
insert into PILOT (type, id)
values ('combat', 96693);
insert into PILOT (type, id)
values ('combat', 69200);
insert into PILOT (type, id)
values ('Transport', 83650);
insert into PILOT (type, id)
values ('combat', 92692);
insert into PILOT (type, id)
values ('combat', 23139);
insert into PILOT (type, id)
values ('Transport', 48252);
insert into PILOT (type, id)
values ('combat', 93621);
insert into PILOT (type, id)
values ('Transport', 58113);
insert into PILOT (type, id)
values ('Transport', 27159);
insert into PILOT (type, id)
values ('Transport', 57441);
insert into PILOT (type, id)
values ('combat', 94891);
insert into PILOT (type, id)
values ('Transport', 11196);
insert into PILOT (type, id)
values ('Transport', 85102);
insert into PILOT (type, id)
values ('combat', 67829);
insert into PILOT (type, id)
values ('Transport', 52070);
insert into PILOT (type, id)
values ('combat', 94469);
insert into PILOT (type, id)
values ('combat', 49915);
commit;
prompt 300 records committed...
insert into PILOT (type, id)
values ('combat', 13401);
insert into PILOT (type, id)
values ('Transport', 84316);
insert into PILOT (type, id)
values ('combat', 50404);
insert into PILOT (type, id)
values ('combat', 20148);
insert into PILOT (type, id)
values ('Transport', 18329);
commit;
prompt 305 records loaded
prompt Loading TECHNICAL_ENGENEER...
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 19522);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 54801);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 34306);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 87100);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 75599);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 66399);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 49915);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 83787);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 27000);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 52893);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 31434);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 43285);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 93860);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 21748);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 78789);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 41661);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 43109);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 76061);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 42991);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 60162);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 25872);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 11196);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 32472);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 75855);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 50764);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 86616);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 18840);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 32187);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 88363);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 91640);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 78596);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 50158);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 50139);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 43606);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 54516);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 89916);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 55555);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 31785);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 47166);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 91288);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 38672);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 93749);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 39722);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 33309);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 84316);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 75846);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 13742);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 96093);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 94360);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 99716);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 44129);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 17930);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 78351);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 81674);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 83627);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 27277);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 51627);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 68182);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 86576);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 62463);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 56071);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 59073);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 76033);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 64715);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 64616);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 49150);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 45555);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 94152);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 74006);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 74142);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 62193);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 33836);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 21837);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 58075);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 13501);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 90300);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 35204);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 61552);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 57704);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 17842);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 16424);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 72422);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 82735);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 25029);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 30499);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 14021);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 96847);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 79497);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 90339);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 55025);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 44304);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 33798);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 56647);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 82097);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 72595);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 17337);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 34828);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 11280);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 82320);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 73179);
commit;
prompt 100 records committed...
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 52358);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 25176);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 74377);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 99871);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 29600);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 81151);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 50281);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 59590);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 18843);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 94469);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 63946);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 25594);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 23149);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 66606);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 51561);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 49245);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 80157);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 16086);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 82602);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 45208);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 53402);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 46863);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 31212);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 66417);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 59074);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 81376);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 85491);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 95450);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 57635);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 50978);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 78559);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 87781);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 96989);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 98984);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 12271);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 92480);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 33728);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 72816);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 91907);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 54449);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 29599);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 43598);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 85131);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 72499);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 96117);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 83458);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 24008);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 78836);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 23139);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 34206);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 80838);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 24067);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 20186);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 20999);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 86228);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 57199);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 11979);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 81110);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 36395);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 40203);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 48596);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 83141);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 56117);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 74806);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 15047);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 30768);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 27506);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 59712);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 31756);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 20148);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 47949);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 14203);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 48744);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 23076);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 73591);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 61023);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 76756);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 78053);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 74125);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 78043);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 32466);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 36670);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 97719);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 30469);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 43901);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 37002);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 92268);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 94630);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 69617);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 61694);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 82259);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 19548);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 20472);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 35060);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 29462);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 87570);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 91812);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 58431);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 73316);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 20537);
commit;
prompt 200 records committed...
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 20873);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 86983);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 17899);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 20611);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 46875);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 30880);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 14162);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 91475);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 69200);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 36745);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 58582);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 26682);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 35535);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 86119);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 60272);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 17082);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 69485);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 38598);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 58334);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 58113);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 60493);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 16526);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 25864);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 81300);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 82851);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 14722);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 21207);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 45175);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 38070);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 64321);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 81479);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 56717);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 64802);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 49613);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 19409);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 55637);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 99897);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 45314);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 93621);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 47859);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 90538);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 19256);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 54562);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 18233);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 91087);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 94891);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 19891);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 51202);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 98199);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 12976);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 43311);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 30391);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 43108);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 35575);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 46971);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 69963);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 49667);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 26800);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 68519);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 15127);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 23888);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 91060);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 62775);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 30832);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 18237);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 16274);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 57469);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 35534);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 14431);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 82877);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 83493);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 17323);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 18864);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 77430);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 46105);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 41134);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 37249);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 82047);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 79861);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 89129);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 36211);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 27331);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 58048);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 64523);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 52070);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 41383);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 32153);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 72570);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 85660);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 19119);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 68398);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 57441);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 23929);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 95871);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 28131);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 46792);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 64759);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 25305);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 35770);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 49965);
commit;
prompt 300 records committed...
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 20562);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 87563);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 66562);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 29249);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 54693);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 49941);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 29795);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 16984);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 17417);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 79949);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 77142);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 69563);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 83490);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 28306);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 78377);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 56825);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 71846);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 84844);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 73952);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 21253);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 28934);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 33297);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 71870);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 79848);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 96835);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 54988);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 19871);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 42508);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 63565);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 54239);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 79724);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 15526);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 33859);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 25975);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 70189);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 15313);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 59092);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 79197);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 91417);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 13196);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 50695);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 71117);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 55316);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 85102);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 90114);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 22092);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 84939);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 20088);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 15976);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 51072);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 21574);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 88824);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 98775);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 43175);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 78029);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 47796);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 79779);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 64112);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 65663);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 97816);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 77651);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 56687);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 31111);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 20047);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 31841);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 45396);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 72462);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 36491);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 16453);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 24705);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 15934);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 25921);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 56283);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 35648);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 11343);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 90044);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 48837);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 30564);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 64660);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 65362);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 77425);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 43494);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 15875);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 18027);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 38360);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 58392);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 23052);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 31604);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 27320);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 84402);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 86405);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 85120);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 12511);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 95936);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 28969);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electronic', 44198);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 90467);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 76367);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 56483);
insert into TECHNICAL_ENGENEER (specialization, id)
values ('electrostatic', 97413);
commit;
prompt 400 records committed...
insert into TECHNICAL_ENGENEER (specialization, id)
values ('Hydraulics', 58729);
commit;
prompt 401 records loaded

set feedback on
set define on
prompt Done
