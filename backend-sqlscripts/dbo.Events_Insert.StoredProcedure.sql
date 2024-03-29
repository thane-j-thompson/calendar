USE [calendar]
GO
/****** Object:  StoredProcedure [dbo].[Events_Insert]    Script Date: 2/9/2024 4:43:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Thane Thompson
-- Create date: 9 FEB 2024
-- Description:  Insert new event
-- Code Reviewer  

-- MODIFIED BY: 
-- MODIFIED DATE:  
-- Code Reviewer: 
-- Note:
-- =============================================

/* TEST EXECUTION
-- Example values

EXEC [dbo].[Events_Insert]

FILL IN

*/


CREATE PROC [dbo].[Events_Insert]
		@startDate DateTime,
		@endDate DateTime,
		@title NVARCHAR(50),
		@location NVARCHAR(50),
		@description NVARCHAR(MAX),
		@createDate DateTime,
		@createId Int,
		@modifyDate DateTime,
		@modifyId Int,
		@ID INT OUTPUT
AS
BEGIN

	INSERT INTO [dbo].[Events]
	(
		[startDate],
		[endDate],
		[title],
		[location],
		[description],
		[createDate],
		[createId],
		[modifyDate],
		[modifyId]
	)
	VALUES
	(
		@startDate,
		@endDate,
		@title,
		@location,
		@description,
		@createDate,
		@createId,
		@modifyDate,
		@modifyId
	)

	SET @ID = SCOPE_IDENTITY()

END
GO
