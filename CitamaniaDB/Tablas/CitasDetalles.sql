CREATE TABLE [dbo].[CitasDetalles]
(
	[CitaId] INT NOT NULL,
	[ServicioId] INT NOT NULL,
	[Cantidad] INT NOT NULL DEFAULT 1,
	[Precio] MONEY NOT NULL,
	CONSTRAINT [PK_CitasDetalles] PRIMARY KEY ([CitaId], [ServicioId]),
	CONSTRAINT [FK_CitasDetalles_Citas] FOREIGN KEY ([CitaId]) REFERENCES [Citas] ([CitaId]),
	CONSTRAINT [FK_CitasDetalles_ServiciosPorUsuario] FOREIGN KEY ([ServicioId]) REFERENCES [ServiciosPorUsuario] ([ServicioId])
)
