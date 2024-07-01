
[General]
Version=1

[Preferences]
Username=
Password=2682
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=SYSTEM
Name=TECHNICAL_ENGENEER
Count=1000

[Record]
Name=SPECIALIZATION
Type=VARCHAR2
Size=20
Data=List('electronic', 'Hydraulics','electrostatic')
Master=

[Record]
Name=ID
Type=NUMBER
Size=
Data=List(select ID from Solider)
Master=

