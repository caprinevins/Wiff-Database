USE WIFF
GO

INSERT INTO EVENT 
(EventName, EventStartDate, EventEndDate, EventDescr, EventTypeID, EventCoordinatorID)
VALUES ('Mr. Wiggins Party for Four','December 21, 2016','December 21, 2016','This is a dinner and cocktail party with a movie.'
,(SELECT EventTypeID FROM EVENT_TYPE WHERE EventTypeName = 'Holiday Horror Movies')
,(SELECT EventCoordinatorID FROM Event_Coordinator WHERE EventCoordinatorLname = 'Palin'))
;

CREATE PROCEDURE AJN_EVENT
(
@EventName varchar(35), 
@EventStartDate datetime, 
@EventEndDate datetime, 
@EventDescr varchar(1000), 
@EventTypeID SELECT EventTypeID , 
@EventCoordinatorID