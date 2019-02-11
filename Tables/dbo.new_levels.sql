CREATE TABLE [dbo].[new_levels]
(
[row_id] [int] NOT NULL,
[DATE_msr] [datetime] NULL,
[storage] [float] NULL,
[height] [float] NULL,
[location_id] [int] NOT NULL
)
GO
ALTER TABLE [dbo].[new_levels] ADD CONSTRAINT [PK_new_levels] PRIMARY KEY CLUSTERED  ([row_id])
GO
ALTER TABLE [dbo].[new_levels] WITH NOCHECK ADD CONSTRAINT [FK_Level_Date] FOREIGN KEY ([DATE_msr]) REFERENCES [dbo].[consumption_uct] ([DATE_msr])
GO
ALTER TABLE [dbo].[new_levels] ADD CONSTRAINT [FK_new_levels_df_all_locations] FOREIGN KEY ([location_id]) REFERENCES [dbo].[df_all_locations] ([location_id])
GO
