USE WIFF
GO

INSERT INTO RATING (RatingName, RatingDescr)
VALUES ('Ewwww! Kissy Face!','This movie has lots of smooching')
;

CREATE PROCEDURE AJN_Rating
(
@RatingName varchar(35),
@RatingDescr varchar(1000)
)
AS
SET NOCOUNT ON
INSERT INTO [dbo].[RATING]
				([RatingName]
				,[RatingDescr])
			VALUES
				(@RatingName
				,@RatingDescr)
GO

EXEC AJN_Rating
@RatingName = 'I think I might...*hurl*'
,@RatingDescr = 'Given to the most violent of movies'
;

EXEC AJN_Rating
@RatingName = 'Thank GAWD'
,@RatingDescr = 'This movie had a scene where the bad guy was resurrected after you thought he was dead but then the hero still killed the bad guy and everyone was much more better.'
;

EXEC AJN_Rating
@RatingName = 'So Close!'
,@RatingDescr = 'Awarded to the movie that was ALMOST good, but still had a few things holding it back'
;

EXEC AJN_Rating
@RatingName = 'Ahhh...I see what you did there'
,@RatingDescr = 'Only awarded to movies that FCUK with your head in regards to TIME'
;

