CREATE TABLE [dbo].[population_sum]
(
[population1] [float] NOT NULL,
[population2] [float] NOT NULL,
[DATE_msr] [datetime] NOT NULL,
[row_id] [int] NOT NULL IDENTITY(1, 1)
)
GO
ALTER TABLE [dbo].[population_sum] ADD CONSTRAINT [PK__populati__6965AB577294C029] PRIMARY KEY CLUSTERED  ([row_id])
GO
ALTER TABLE [dbo].[population_sum] WITH NOCHECK ADD CONSTRAINT [FK_Pop_Date] FOREIGN KEY ([DATE_msr]) REFERENCES [dbo].[consumption_uct] ([DATE_msr])
GO
