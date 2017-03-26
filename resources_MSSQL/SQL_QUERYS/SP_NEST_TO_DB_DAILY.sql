USE [NEST]
GO

/****** Object:  StoredProcedure [dbo].[SP_NEST_TO_DB_DAILY]    Script Date: 3/26/2017 2:47:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		JAMES DIBERNARDO
-- Create date: 3/25/2017
-- Description:	A SP Package of CMDSHELL expressions to call BCP to create the TXT files for NEST --> BlueIris CCTV
-- =============================================
CREATE PROCEDURE [dbo].[SP_NEST_TO_DB_DAILY]
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

--DAILY PULL
EXEC xp_cmdshell
'php C:\inetpub\nest_2\nest-get-data.php daily'
--SELECT * FROM [NEST].[dbo].[energy_reports]

END

GO

