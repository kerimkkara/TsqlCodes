USE [LibrayDatabase]
GO
/****** Object:  StoredProcedure [dbo].[usp_ImportPublication]    Script Date: 12/8/2022 5:14:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROCEDURE [dbo].[usp_ViewTable] (
	@tableName nvarchar(15)
)
as
begin
	declare @tsql nvarchar (2000);
	set nocount on


	set @tsql = 'select * from ' + @tableName

exec (@tsql)
set nocount off
end 