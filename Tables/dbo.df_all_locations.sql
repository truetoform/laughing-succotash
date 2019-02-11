CREATE TABLE [dbo].[df_all_locations]
(
[name] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[Latitude] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[location_id] [int] NOT NULL,
[Longitude] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[df_all_locations] ADD CONSTRAINT [PK_df_all_locations] PRIMARY KEY CLUSTERED  ([location_id])
GO
CREATE NONCLUSTERED INDEX [IX_df_all_locations] ON [dbo].[df_all_locations] ([name])
GO
