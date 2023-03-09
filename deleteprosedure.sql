USE [LibrayDatabase]
GO
/****** Object:  StoredProcedure [dbo].[usp_ImportPublication]    Script Date: 12/8/2022 5:14:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_DeletePublication] (
	@id nvarchar(1)
)
as
begin
	declare @tsql nvarchar (2000);
	set nocount on


	set @tsql = 'delete from Publication where publicationId =' + @id 

exec (@tsql)
set nocount off
end 