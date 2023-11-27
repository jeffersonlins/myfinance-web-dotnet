CREATE DATABASE myfinance_web_db_2
GO
USE [myfinance_web_db_2]
GO
/****** Object:  Table [dbo].[planoconta]    Script Date: 27/11/2023 19:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[planoconta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](200) NOT NULL,
	[tipo] [char](1) NOT NULL,
 CONSTRAINT [PK_planoconta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transacao]    Script Date: 27/11/2023 19:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transacao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](200) NOT NULL,
	[data] [datetime] NOT NULL,
	[idplanoconta] [int] NOT NULL,
	[valor] [float] NOT NULL,
 CONSTRAINT [PK_transacao] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[transacao]  WITH CHECK ADD  CONSTRAINT [FK_transacao_transacao] FOREIGN KEY([idplanoconta])
REFERENCES [dbo].[planoconta] ([id])
GO
ALTER TABLE [dbo].[transacao] CHECK CONSTRAINT [FK_transacao_transacao]
GO
