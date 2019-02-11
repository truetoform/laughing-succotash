CREATE TABLE [dbo].[consumption_uct]
(
[row_id] [int] NOT NULL,
[URBAN] [int] NOT NULL,
[AGRICULTURAL] [int] NOT NULL,
[DATE_msr] [datetime] NOT NULL
)
GO
ALTER TABLE [dbo].[consumption_uct] ADD CONSTRAINT [PK_consumption_uct] PRIMARY KEY CLUSTERED  ([DATE_msr])
GO
