USE [LibrayDatabase]
GO
/****** Object:  StoredProcedure [dbo].[usp_ImportLend]    Script Date: 12/10/2022 9:07:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROCEDURE [dbo].[usp_UpdatePublication] (
	@id nvarchar (4),
	@publicationName nvarchar(50)
)
as
begin
	declare @tsql nvarchar (2000);

	set nocount on

	set @tsql = 'update Publications set publicationName = ' + ''''  + @publicationName + '''' +  'where publicationId = ' + @id

exec (@tsql)
set nocount off
end 
