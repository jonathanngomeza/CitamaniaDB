CREATE TABLE [dbo].[Citas]
(
	[CitaId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[CodigoUnico] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
	[FechaDeCita] DATETIME NOT NULL,
	[ClienteId] INT NOT NULL,
	[PrestadorDeServicioId] INT NOT NULL,
	[SolicitanteId] INT NOT NULL,
	[Estatus] NVARCHAR(50) NOT NULL,
	[UsuarioAprobacionId] INT NULL,
	[FechaAprobacion] DATETIME NULL,
	[FechaCancelacion] DATETIME NULL,
	[UsuarioCancelacionId] INT NULL,
	[MotivoDeCancelacion] NVARCHAR(400) NULL,
	[FechaCreacion] DATETIME NOT NULL DEFAULT GETDATE(),
	[FechaModificacion] DATETIME NULL,
	[Notas] NVARCHAR(500) NULL,
	CONSTRAINT [FK_Citas_Usuarios_Cliente] FOREIGN KEY ([ClienteId]) REFERENCES [Usuarios] ([UsuarioId]),
	CONSTRAINT [FK_Citas_Usuarios_PrestadorDeServicio] FOREIGN KEY ([PrestadorDeServicioId]) REFERENCES [Usuarios] ([UsuarioId]),
	CONSTRAINT [FK_Citas_Usuarios_Solicitante] FOREIGN KEY ([SolicitanteId]) REFERENCES [Usuarios] ([UsuarioId]),
	CONSTRAINT [FK_Citas_Usuarios_Aprobador] FOREIGN KEY ([UsuarioAprobacionId]) REFERENCES [Usuarios] ([UsuarioId]),
	CONSTRAINT [FK_Citas_Usuarios_Cancelador] FOREIGN KEY ([UsuarioCancelacionId]) REFERENCES [Usuarios] ([UsuarioId])
)
