USE [NEST]
GO

/****** Object:  View [dbo].[vNEST_CURRENT_DATA]    Script Date: 4/1/2017 7:21:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vNEST_CURRENT_DATA]
AS
SELECT        N.log_datetime, N.location, N.outside_temp, N.outside_humidity, N.away_status, CASE N .[away_status] WHEN '0' THEN 'Home' WHEN '1' THEN 'Away' END AS away_status_var, N.leaf_status, 
                         CASE N .[leaf_status] WHEN '0' THEN 'No' WHEN '1' THEN 'Yes' END AS leaf_status_var, N.current_temp, N.current_humidity, N.temp_mode, N.low_target_temp, N.high_target_temp, N.time_to_target, 
                         N.target_humidity, N.heat_on, CASE N .[heat_on] WHEN '0' THEN 'Off' WHEN '1' THEN 'On' END AS heat_status_var, N.humidifier_on, N.ac_on, 
                         CASE N .[ac_on] WHEN '0' THEN 'Off' WHEN '1' THEN 'On' END AS ac_status_var, N.fan_on, CASE N .[fan_on] WHEN '0' THEN 'Off' WHEN '1' THEN 'On' END AS Fan_status_var, N.battery_level, N.is_online, 
                         CASE N .[is_online] WHEN '0' THEN 'Offline' WHEN '1' THEN 'Online' END AS Nest_status_var
FROM            dbo.nest_data AS N INNER JOIN
                             (SELECT        MAX(log_datetime) AS [CURRENT]
                               FROM            dbo.nest_data AS N) AS N2 ON N.log_datetime = N2.[CURRENT]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "N"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "N2"
            Begin Extent = 
               Top = 6
               Left = 258
               Bottom = 85
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vNEST_CURRENT_DATA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vNEST_CURRENT_DATA'
GO


