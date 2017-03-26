USE [NEST]
GO

/****** Object:  StoredProcedure [dbo].[SP_NEST_TO_DB_15mins]    Script Date: 3/26/2017 2:46:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		JAMES DIBERNARDO
-- Create date: 3/25/2017
-- Description:	JOB to insert data into table
-- =============================================
CREATE PROCEDURE [dbo].[SP_NEST_TO_DB_15mins]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
/*
STEP ONE: download the latest php and place it in the ext folder http://php.net/manual/en/sqlsrv.installation.php
Note: This was tested with SQLSRV40.exe -- x64 and for PHP 7
*/

--PASSED
--EXEC xp_cmdshell
--'php C:\inetpub\nest_2\TEST_CONN.php'

--PASSED
--EXEC xp_cmdshell
--'php C:\inetpub\nest_2\TEST_NEST.php'

--PULL NOW
EXEC xp_cmdshell
'php C:\inetpub\nest_2\nest-get-data.php current'
--SELECT * FROM [NEST].[dbo].[nest_data]


END

GO

