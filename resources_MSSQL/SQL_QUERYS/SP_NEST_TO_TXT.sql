USE [NEST]
GO

/****** Object:  StoredProcedure [dbo].[SP_NEST_TXT]    Script Date: 3/26/2017 2:47:30 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		JAMES DIBERNARDO
-- Create date: 3/25/2017
-- Description:	A SP Package of CMDSHELL expressions to call BCP to create the TXT files for NEST --> BlueIris CCTV
-- =============================================
CREATE PROCEDURE [dbo].[SP_NEST_TXT]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

--CURRENT TEMP
    EXEC xp_cmdshell
	'bcp "SELECT TOP 1 [CURRENT_TEMP],''(F)'' FROM [NEST].[DBO].[NEST_DATA] ORDER BY log_datetime DESC" queryout "E:\Program Files (x86)\Blue Iris Tools\txt\Nest_Current_temp.txt" -c -T -x'

--TARGET TEMP
    EXEC xp_cmdshell
	'bcp "SELECT TOP 1 CONCAT([LOW_TARGET_TEMP], '' (F) to '', [HIGH_TARGET_TEMP], '' (F)'' ) FROM [NEST].[DBO].[NEST_DATA] ORDER BY log_datetime DESC" queryout "E:\Program Files (x86)\Blue Iris Tools\txt\Nest_Target_temp.txt" -c -T -x'

--FAN STATUS
    EXEC xp_cmdshell
	'bcp "SELECT [FAN_STATUS] FROM [NEST].[DBO].[NEST_DATA_FAN_STATUS]" queryout "E:\Program Files (x86)\Blue Iris Tools\txt\Nest_FAN.txt" -c -T -x'

--COOLING STATUS
    EXEC xp_cmdshell
	'bcp "SELECT [COOLING_STATUS] FROM [NEST].[dbo].[NEST_DATA_COOLING_STATUS]" queryout "E:\Program Files (x86)\Blue Iris Tools\txt\Nest_COOLING.txt" -c -T -x'

END

GO

