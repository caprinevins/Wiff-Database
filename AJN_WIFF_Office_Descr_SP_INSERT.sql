USE WIFF
GO

INSERT INTO OFFICE (OfficeName, OfficeDescr)
VALUES ('Iceberg Lounge','Where our regional director of vice - Oswald Cobblepot - works')
;

CREATE PROCEDURE AJN_Office
(
@OfficeName varchar(35),
@OfficeDescr varchar(1000)
)
AS
SET NOCOUNT ON
INSERT INTO [dbo].[OFFICE]
			([OfficeName]
			,[OfficeDescr])
		VALUES
			(@OfficeName
			,@OfficeDescr)
GO

USE WIFF
GO

EXEC AJN_Office
@OfficeName = 'Hogwarts'
,@OfficeDescr = 'Deh deh deh..deh deh...deh.'
;

EXEC AJN_Office
@OfficeName = 'The Death Star'
,@OfficeDescr = 'Duh duh duh duhduhduh duh duhduh!!!!'
;

EXEC AJN_Office
@OfficeName = 'Fort Leonard Wood'
,@OfficeDescr = 'Its in the Ozarks. Trust me.'
;

EXEC AJN_Office
@OfficeName = 'Trump Tower'
,@OfficeDescr = 'Its gonna be YUGE!'
;