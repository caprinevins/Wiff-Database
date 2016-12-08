----USE WIFF
----GO

----INSERT INTO EVENT_TYPE (EventTypeName, EventTypeDescr)
----VALUES ('Family Movie Night', 'A night to bring the family to!')

--CREATE PROCEDURE AJN_EventType
--(
--@EventTypeName varchar(35),
--@EventTypeDescr varchar(1000)
--)

--AS

--/*
---- Object Name: Event_Type
---- Purpose: Insert a record into a table Event_Type table
---- Database: WIFF
---- Called By: Ad-hoc
----------------------------------------------------------------------------------------
---- | 2016-12-06 | Drew Nevins  | V. 1.0
--*/

--SET NOCOUNT ON

---- 1 - Declare variables

---- 2 - Initialize variables

---- 3 - Execute INSERT command
--INSERT INTO [dbo].[Event_Type]
--           ([EventTypeName]
--           ,[EventTypeDescr])
--     VALUES
--           (@EventTypeName
--           ,@EventTypeDescr)
--GO

EXEC AJN_EventType 
@EventTypeName = 'Grinch Movies',
@EventTypeDescr = 'Come watch all the classic Grinch movies this christmas!'
;

EXEC AJN_EventType
@EventTypeName = 'Holiday Bond Movies',
@EventTypeDescr = 'James Bond at his finest holiday film fest!'
;

EXEC AJN_EventType
@EventTypeName = 'Holiday Horror Movies',
@EventTypeDescr = 'Krampus, Frosty, And Nightmare Before Christas(yup!)!'
;

EXEC AJN_EventType
@EventTypeName = 'Fcuk Christmas!',
@EventTypeDescr = 'All these movies will not annoy you because no one else is playing them right now.'
;