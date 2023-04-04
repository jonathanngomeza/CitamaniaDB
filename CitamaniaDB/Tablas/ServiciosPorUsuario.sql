CREATE TABLE [dbo].[ServiciosPorUsuario]
(
	[ServicioId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[UsuarioId] INT NOT NULL,
	[Servicio] NVARCHAR(100) NOT NULL,
	[Descripcion] NVARCHAR(400) NOT NULL,
	[Precio] MONEY NOT NULL,
	CONSTRAINT [FK_ServiciosPorUsuario_Usuarios] FOREIGN KEY ([UsuarioId]) REFERENCES [Usuarios] ([UsuarioId])
)
