USE [db_lanchonete]
GO

/****** Object:  Table [dbo].[tb_Ingrediente]    Script Date: 19/07/2020 14:11:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_Ingrediente](
	[idIngrediente] [bigint] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NULL,
	[valor] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tb_Ingrediente] PRIMARY KEY CLUSTERED 
(
	[idIngrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tb_lanches]    Script Date: 19/07/2020 14:13:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_lanches](
	[idLanche] [bigint] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NULL,
 CONSTRAINT [PK_tb_lanches] PRIMARY KEY CLUSTERED 
(
	[idLanche] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tb_lanchexIngrediente]    Script Date: 19/07/2020 14:14:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_lanchexIngrediente](
	[idLanchexIngrediente] [bigint] IDENTITY(1,1) NOT NULL,
	[idLanche] [bigint] NULL,
	[idIngrediente] [bigint] NULL,
 CONSTRAINT [PK_tb_lanchexIngrediente] PRIMARY KEY CLUSTERED 
(
	[idLanchexIngrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tb_lanchexIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_tb_lanchexIngrediente_1] FOREIGN KEY([idLanche])
REFERENCES [dbo].[tb_lanches] ([idLanche])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[tb_lanchexIngrediente] CHECK CONSTRAINT [FK_tb_lanchexIngrediente_1]
GO

ALTER TABLE [dbo].[tb_lanchexIngrediente]  WITH CHECK ADD  CONSTRAINT [FK_tb_lanchexIngrediente_2] FOREIGN KEY([idIngrediente])
REFERENCES [dbo].[tb_Ingrediente] ([idIngrediente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[tb_lanchexIngrediente] CHECK CONSTRAINT [FK_tb_lanchexIngrediente_2]
GO

INSERT INTO tb_Ingrediente(nome, valor)
VALUES('Alface', '0.40')

INSERT INTO tb_Ingrediente(nome, valor)
VALUES('Bacon', '2.00')

INSERT INTO tb_Ingrediente(nome, valor)
VALUES('Hamburguer de carne', '3.00')

INSERT INTO tb_Ingrediente(nome, valor)
VALUES('Queijo', '1.50')

INSERT INTO tb_lanches(nome)
VALUES('X-Bacon')

INSERT INTO tb_lanches(nome)
VALUES('X-Burguer')

INSERT INTO tb_lanches(nome)
VALUES('X-Egg')

INSERT INTO tb_lanches(nome)
VALUES('X-Egg Bacon')


INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(1,2)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(1,3)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(1,5)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
values(2,3)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(2,5)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(3,4)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(3,3)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(3,5)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(4,4)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(4,2)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(4,3)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(4,5)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
values(1,1)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(2,1)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(3,1)
INSERT INTO tb_lanchexIngrediente(idLanche, idIngrediente)
VALUES(4,1)

GO


