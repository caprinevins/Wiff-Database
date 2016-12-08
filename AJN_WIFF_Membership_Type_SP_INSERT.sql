USE WIFF
GO

INSERT INTO MEMBERSHIP_TYPE (MembershipTypeName, MembershipTypeDescr)
VALUES ('Poo Premium', 'The one and only membership to show how little you care')
;

CREATE PROCEDURE AJN_Membership_Type
(
@MembershipTypeName varchar(35),
@MembershipTypeDescr varchar(1000)
)
AS
SET NOCOUNT ON
INSERT INTO [dbo].[Membership_Type]
			([MembershipTypeName]
			,[MembershipTypeDescr])
		VALUES
			(@MembershipTypeName
			,@MembershipTypeDescr)
GO

EXEC AJN_Membership_Type
@MembershipTypeName = 'Diamon Dogs',
@MembershipTypeDescr = 'For all the David Bowie movie fans in the house.'
;

EXEC AJN_Membership_Type
@MembershipTypeName = 'College Kid',
@MembershipTypeDescr = 'A poor college kid membership - movies only on Sunday mornings at 9am...ha!'
;

EXEC AJN_Membership_Type
@MembershipTypeName = '1 percenter',
@MembershipTypeDescr = 'It is ridiculously overpriced but they will pay for it and never use it'
;

EXEC AJN_Membership_Type
@MembershipTypeName = 'Goldilocks',
@MembershipTypeDescr = 'The just right membership. No opening nights, but all the free movies you want, once a day.'
;