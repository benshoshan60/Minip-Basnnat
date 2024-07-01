
[General]
Version=1

[Preferences]
Username=
Password=2919
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=MISSION
Count=1000

[Record]
Name=MISSION_DATE
Type=DATE
Size=
Data=Random(01/01/2020, 28/11/2024)
Master=

[Record]
Name=STATUS
Type=VARCHAR2
Size=20
Data=List('Succeeded', 'failed')
Master=

[Record]
Name=MISSION_ID
Type=NUMBER
Size=
Data=Random(1, 999)
Master=

