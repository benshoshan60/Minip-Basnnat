
[General]
Version=1

[Preferences]
Username=
Password=2516
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=SOLIDER
Count=1000

[Record]
Name=ID
Type=NUMBER
Size=
Data=Random(11111, 99999)
Master=

[Record]
Name=RANK
Type=VARCHAR2
Size=20
Data=List('Aluf', 'RANAG', 'SAMAL')
Master=

[Record]
Name=JOINED_DATE
Type=DATE
Size=
Data=Random(01/01/1990, 01/01/2024)
Master=

[Record]
Name=NAME
Type=VARCHAR2
Size=20
Data=FirstName
Master=

