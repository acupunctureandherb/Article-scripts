USE [master]
GO

CREATE SERVER AUDIT [Audit ADW2014 DDL ]
TO FILE 
(	FILEPATH = N'C:\SQLAudits\'
	,MAXSIZE = 20 MB
	,MAX_FILES = 20
	,RESERVE_DISK_SPACE = ON
)
WITH
(	QUEUE_DELAY = 1000
	,ON_FAILURE = CONTINUE
	,AUDIT_GUID = '928b1094-b02b-437d-a5c7-8266af853b57'
)
ALTER SERVER AUDIT [Audit ADW2014 DDL ] WITH (STATE = ON)
GO