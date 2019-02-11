CREATE TABLE [dbo].[df_rain]
(
[percp] [float] NOT NULL,
[location_id] [int] NOT NULL,
[DATE_msr] [datetime] NOT NULL,
[row_id] [int] NOT NULL IDENTITY(1, 1)
)
GO
ALTER TABLE [dbo].[df_rain] ADD CONSTRAINT [PK__df_rain__6965AB57BA88065F] PRIMARY KEY CLUSTERED  ([row_id])
GO
ALTER TABLE [dbo].[df_rain] ADD CONSTRAINT [FK_df_rain_df_all_locations] FOREIGN KEY ([location_id]) REFERENCES [dbo].[df_all_locations] ([location_id])
GO
ALTER TABLE [dbo].[df_rain] WITH NOCHECK ADD CONSTRAINT [FK_Rain_Date] FOREIGN KEY ([DATE_msr]) REFERENCES [dbo].[consumption_uct] ([DATE_msr])
GO
