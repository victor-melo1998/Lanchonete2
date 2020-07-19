USE [db_lanchonete]
GO

/****** Object:  StoredProcedure [dbo].[sp_selListarIngredientes]    Script Date: 19/07/2020 14:20:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_selListarIngredientes]
	@idLanche BIGINT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT
	lxi.idLanche
	,lxi.idIngrediente
	,i.nome
	,i.valor
	FROM tb_Ingrediente i (nolock)
	INNER JOIN tb_lanchexIngrediente lxi (nolock) ON
	lxi.idIngrediente = i.idIngrediente
	where
	1=1
	and lxi.idLanche = @idLanche

END
GO


/****** Object:  StoredProcedure [dbo].[sp_selListarLanches]    Script Date: 19/07/2020 14:20:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_selListarLanches]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT
	idLanche
	,nome
	FROM tb_lanches (nolock)
END
GO