------------------------------------------------------------ 
-- CREATE TABLES FOR NEST DATA
------------------------------------------------------------
DECLARE @DB VARCHAR(255)					SET @DB = 'NESTDB'
DECLARE @CREATE_DB_TEMPLATE VARCHAR(MAX)	SET @CREATE_DB_TEMPLATE = 'CREATE DATABASE {DBNAME}'
DECLARE @CREATE_DB_SCRIPT VARCHAR(MAX)		SET @CREATE_DB_SCRIPT = REPLACE(@CREATE_DB_TEMPLATE, '{DBNAME}', @DB)
DECLARE @USE_TEMPLETE VARCHAR(MAX)			SET @USE_TEMPLETE = 'USE {DBNAME}'
DECLARE @USE_SCRIPT	VARCHAR(MAX)			SET @USE_SCRIPT = REPLACE(@USE_TEMPLETE, '{DBNAME}', @DB)

/* Uncomment when needing to build the DB
EXECUTE (@SQL_SCRIPT)
*/

EXEC(@USE_SCRIPT)

--
-- Table structure for table Energy Reports
--

CREATE TABLE [dbo].[energy_reports] (
  [date] date NOT NULL,
  [total_heating_time] int NULL,
  [heating_degree_days] int NULL,
  [total_cooling_time] int NULL,
  [cooling_degree_days] int NULL,
  [total_fan_time] int NULL,
  [total_humidifier_time] int NULL,
  [total_dehumidifier_time] int NULL,
  [leafs] int NULL,
  [recent_avg_used] int NULL,
  [usage_over_avg] int NULL,
  UNIQUE ([date])
) 

--
-- Table structure for table nest data
--

CREATE TABLE [dbo].[nest_data] (
  [log_datetime] timestamp NOT NULL,
  [location] int NULL,
  [outside_temp] decimal(4,1) NULL,
  [outside_humidity] int NULL,
  [away_status] int NULL,
  [leaf_status] int NULL,
  [current_temp] decimal(4,1) NULL,
  [current_humidity] int NULL,
  [temp_mode] varchar(50) NULL,
  [low_target_temp] decimal(4,1) NULL,
  [high_target_temp] decimal(4,1) NULL,
  [time_to_target] int NULL,
  [target_humidity] int NULL,
  [heat_on] int NULL,
  [humidifier_on] int NULL,
  [ac_on] int NULL,
  [fan_on] int NULL,
  [battery_level] decimal(4,3) NULL,
  [is_online] int NULL,
  UNIQUE ([log_datetime])
) 

