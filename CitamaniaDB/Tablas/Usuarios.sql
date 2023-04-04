CREATE TABLE [dbo].[Usuarios]
(
	[UsuarioId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Nombre] NVARCHAR(250) NOT NULL,
	[Email] NVARCHAR(250) NOT NULL,
	[HasPassword] NVARCHAR(400) NOT NULL,
	[SaltStrig] NVARCHAR(400) NOT NULL,
	[TokenDeRecuperacion] NVARCHAR(100) NULL,
	[PrestaServicio] BIT NOT NULL
)
