USE [sqlDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_users2]    Script Date: 2021-02-15 오후 2:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[usp_users]    Script Date: 2021-02-15 오후 2:11:45 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
create or ALTER     procedure usp_users4
	@txtValue nvarchar(10),
	@outValue int output --리턴받은 매개변수(파라미터)
as
	insert into testTBL values (@txtValue);
	select @outValue = IDENT_CURRENT('testTBL'); -- testTBL의 현재 identity값 리턴