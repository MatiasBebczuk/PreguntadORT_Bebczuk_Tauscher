USE [PreguntadOrt]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 22/9/2024 19:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Foto] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dificultades]    Script Date: 22/9/2024 19:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dificultades](
	[IdDificultad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dificultades] PRIMARY KEY CLUSTERED 
(
	[IdDificultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 22/9/2024 19:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[IdPregunta] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdDificultad] [int] NOT NULL,
	[Enunciado] [varchar](150) NOT NULL,
	[Foto] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 22/9/2024 19:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [varchar](50) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Respuestas] PRIMARY KEY CLUSTERED 
(
	[IdRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (1, N'Ciencia', N'Categoria1.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (2, N'Geografía', N'Categoria2.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (3, N'Historia', N'Categoria3.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (4, N'Matemática', N'Categoria4.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (5, N'Salud', N'Categoria5.jpg')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Dificultades] ON 

INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (1, N'Fácil')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (2, N'Intermedio')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (3, N'Difícil')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (4, N'Muy Difícil')
SET IDENTITY_INSERT [dbo].[Dificultades] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas] ON 

INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, 1, N'¿Cuál es el planeta más cercano al Sol?', N'planeta_cercano.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 1, 1, N'¿Qué gas es necesario para la respiración humana?', N'respiracion.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, 1, N'¿Qué tipo de animal es una ballena?', N'ballena.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, 1, N'¿Cuál es el metal más liviano?', N'metal_liviano.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, 1, N'¿Qué tipo de sangre es donante universal?', N'donante_universal.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, 2, N'¿Qué órgano humano es responsable de bombear sangre?', N'corazon.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (7, 1, 2, N'¿Qué elemento tiene el símbolo químico "O"?', N'elemento_o.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (8, 1, 2, N'¿Cómo se llama la fuerza que nos mantiene en la Tierra?', N'gravedad.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (9, 1, 2, N'¿Qué planeta es conocido como el "Planeta Rojo"?', N'planeta_rojo.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (10, 1, 2, N'¿Qué energía es obtenida a partir de la luz solar?', N'energia_solar.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (11, 1, 3, N'¿Cuál es el elemento más abundante en el universo?', N'elemento_abundante.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (12, 1, 3, N'¿Qué tipo de energía se obtiene del viento?', N'energia_eolica.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (13, 1, 3, N'¿Cuántos huesos tiene un adulto?', N'huesos_adulto.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (14, 1, 3, N'¿Qué continente es el más grande del mundo?', N'continente_grande.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (15, 1, 3, N'¿Qué es la fotosíntesis?', N'fotosintesis.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (16, 1, 4, N'¿Cuál es la fórmula química del agua?', N'formula_agua.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (17, 1, 4, N'¿Qué teoría explica el origen del universo?', N'teoria_origen_universo.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (18, 1, 4, N'¿Qué es la relatividad en física?', N'relatividad.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (19, 1, 4, N'¿Cuáles son las leyes de la termodinámica?', N'leyes_termodinamica.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (20, 1, 4, N'¿Qué es la teoría de cuerdas?', N'teoria_cuerdas.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (21, 2, 1, N'¿Cuál es la capital de Francia?', N'capital_francia.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (22, 2, 1, N'¿Cuál es el océano más grande del mundo?', N'oceano_grande.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (23, 2, 1, N'¿Cuántos continentes hay en el mundo?', N'continentes.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (24, 2, 1, N'¿Cuál es el continente donde se encuentra Egipto?', N'egipto.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (25, 2, 1, N'¿Qué país tiene forma de bota?', N'italia.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (26, 2, 2, N'¿Cuál es la capital de Japón?', N'capital_japon.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (27, 2, 2, N'¿Qué río es el más largo del mundo?', N'rio_largo.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (28, 2, 2, N'¿Qué país es conocido como la tierra de los canguros?', N'australia.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (29, 2, 2, N'¿Cuál es el desierto más grande del mundo?', N'desierto_grande.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (30, 2, 2, N'¿Qué montaña es la más alta del mundo?', N'montana_alta.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (31, 2, 3, N'¿Cuál es la capital de Egipto?', N'capital_egipto.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (32, 2, 3, N'¿Qué océano se encuentra entre América y Europa?', N'oceano_atlantico.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (33, 2, 3, N'¿En qué país se encuentra la Torre Eiffel?', N'torre_eiffel.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (34, 2, 3, N'¿Cuál es el país más pequeño del mundo?', N'pais_pequeño.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (35, 2, 3, N'¿Qué continente es conocido como el continente negro?', N'africa.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (36, 2, 4, N'¿Cuál es el país más poblado del mundo?', N'pais_poblado.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (37, 2, 4, N'¿Qué río pasa por Egipto?', N'rio_nilo.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (38, 2, 4, N'¿En qué continente se encuentra el Himalaya?', N'himalaya.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (39, 2, 4, N'¿Cuál es la ciudad más grande del mundo?', N'ciudad_grande.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (40, 2, 4, N'¿Qué país es conocido por sus tulipanes?', N'pais_tulipanes.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (50, 3, 1, N'¿Qué es la fotosíntesis?', N'fotosintesis.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (51, 3, 1, N'¿Cuál es la capa más externa de la Tierra?', N'capa_externa.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (52, 3, 1, N'¿Qué tipo de organismos son los productores?', N'productores.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (53, 3, 1, N'¿Qué gas producen las plantas durante la fotosíntesis?', N'gas_fotosintesis.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (54, 3, 1, N'¿Cuál es el proceso de formación de rocas?', N'formacion_rocas.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (55, 3, 1, N'¿Qué tipo de animal es un mamífero?', N'mamiferos.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (56, 3, 2, N'¿Cuál es el ciclo del agua?', N'ciclo_agua.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (57, 3, 2, N'¿Qué es la contaminación?', N'contaminacion.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (58, 3, 2, N'¿Qué es un hábitat?', N'habitat.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (59, 3, 2, N'¿Qué es un ecosistema?', N'ecosistema.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (60, 3, 2, N'¿Qué son los residuos sólidos?', N'residuos_solidos.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (61, 3, 2, N'¿Qué provoca el efecto invernadero?', N'efecto_invernadero.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (62, 3, 3, N'¿Qué son los ecosistemas?', N'ecosistemas.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (63, 3, 3, N'¿Qué es la biodiversidad?', N'biodiversidad.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (64, 3, 3, N'¿Qué es la cadena alimentaria?', N'cadena_alimentaria.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (65, 3, 3, N'¿Qué impacto tiene el cambio climático?', N'impacto_cambio_climatico.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (66, 3, 3, N'¿Qué son los recursos renovables?', N'recursos_renovables.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (67, 3, 3, N'¿Qué es la conservación de especies?', N'conservacion_especies.jpg')
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 

INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1, 1, 1, N'Marte', 0, N'marte.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (2, 1, 2, N'Venus', 0, N'venus.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (3, 1, 3, N'Mercurio', 1, N'mercurio.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (4, 1, 4, N'Júpiter', 0, N'jupiter.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (5, 2, 1, N'Nitrógeno', 0, N'nitrogeno.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (6, 2, 2, N'Dióxido de carbono', 0, N'dioxido_carbono.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (7, 2, 3, N'Oxígeno', 1, N'oxigeno.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (8, 2, 4, N'Helio', 0, N'helio.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (9, 3, 1, N'Reptil', 0, N'reptil.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (10, 3, 2, N'Mamífero', 1, N'mamifero.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (11, 3, 3, N'Ave', 0, N'ave.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (12, 3, 4, N'Pez', 0, N'pez.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (13, 4, 1, N'Cobre', 0, N'cobre.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (14, 4, 2, N'Hierro', 0, N'hierro.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (15, 4, 3, N'Oro', 0, N'oro.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (16, 4, 4, N'Litio', 1, N'litio.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (17, 5, 1, N'Tipo A', 0, N'tipo_a.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (18, 5, 2, N'Tipo B', 0, N'tipo_b.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (19, 5, 3, N'Tipo O-', 1, N'tipo_o-.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (20, 5, 4, N'Tipo AB+', 0, N'tipo_ab+.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (21, 6, 1, N'Hígado', 0, N'higado.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (22, 6, 2, N'Riñón', 0, N'rinon.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (23, 6, 3, N'Corazón', 1, N'corazon.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (24, 6, 4, N'Estómago', 0, N'estomago.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (25, 7, 1, N'Hidrógeno', 0, N'hidrogeno.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (26, 7, 2, N'Carbono', 0, N'carbono.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (27, 7, 3, N'Oxígeno', 1, N'oxigeno.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (28, 7, 4, N'Nitrógeno', 0, N'nitrogeno.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (29, 8, 1, N'Gravitación', 1, N'gravitacion.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (30, 8, 2, N'Magnetismo', 0, N'magnetismo.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (31, 8, 3, N'Electrostática', 0, N'electrostatica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (32, 8, 4, N'Ninguna de las anteriores', 0, N'ninguna.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (33, 9, 1, N'Marte', 1, N'marte.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (34, 9, 2, N'Venus', 0, N'venus.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (35, 9, 3, N'Mercurio', 0, N'mercurio.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (36, 9, 4, N'Júpiter', 0, N'jupiter.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (37, 10, 1, N'Energía eólica', 0, N'energia_eolica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (38, 10, 2, N'Energía solar', 1, N'energia_solar.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (39, 10, 3, N'Energía hidráulica', 0, N'energia_hidraulica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (40, 10, 4, N'Energía geotérmica', 0, N'energia_geotermica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (41, 11, 1, N'Hidrógeno', 1, N'hidrogeno.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (42, 11, 2, N'Hélio', 0, N'helio.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (43, 11, 3, N'Carbono', 0, N'carbono.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (44, 11, 4, N'Oxígeno', 0, N'oxigeno.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (45, 12, 1, N'Energía solar', 0, N'energia_solar.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (46, 12, 2, N'Energía eólica', 1, N'energia_eolica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (47, 12, 3, N'Energía hidráulica', 0, N'energia_hidraulica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (48, 12, 4, N'Energía geotérmica', 0, N'energia_geotermica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (49, 13, 1, N'206', 1, N'huesos_adulto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (50, 13, 2, N'215', 0, N'huesos_215.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (51, 13, 3, N'300', 0, N'huesos_300.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (52, 13, 4, N'120', 0, N'huesos_120.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (53, 14, 1, N'África', 0, N'africa.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (54, 14, 2, N'Asia', 1, N'asia.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (55, 14, 3, N'América', 0, N'america.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (56, 14, 4, N'Oceanía', 0, N'oceania.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (57, 15, 1, N'Proceso de conversión de luz en energía', 1, N'fotosintesis.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (58, 15, 2, N'Producción de carbono', 0, N'produccion_carbono.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (59, 15, 3, N'Respiración', 0, N'respiracion.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (60, 15, 4, N'Digestión', 0, N'digestion.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (61, 16, 1, N'H2O', 1, N'formula_agua.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (62, 16, 2, N'CO2', 0, N'co2.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (63, 16, 3, N'O2', 0, N'o2.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (64, 16, 4, N'N2', 0, N'n2.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (65, 17, 1, N'Teoría de la evolución', 0, N'evolucion.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (66, 17, 2, N'Teoría del Big Bang', 1, N'big_bang.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (67, 17, 3, N'Teoría de la relatividad', 0, N'relatividad.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (68, 17, 4, N'Teoría cuántica', 0, N'quantum_theory.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (69, 18, 1, N'Un principio de física', 0, N'principio_fisica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (70, 18, 2, N'Una teoría de mecánica cuántica', 0, N'mecanica_cuantica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (71, 18, 3, N'Una teoría sobre la gravedad', 1, N'teoria_gravedad.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (72, 18, 4, N'Una fórmula matemática', 0, N'formula_matematica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (73, 19, 1, N'Cuatro leyes', 0, N'cuatro_leyes.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (74, 19, 2, N'Tres leyes', 1, N'tres_leyes.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (75, 19, 3, N'Dos leyes', 0, N'dos_leyes.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (76, 19, 4, N'Siete leyes', 0, N'siete_leyes.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (77, 20, 1, N'Una teoría de física', 0, N'teoria_fisica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (78, 20, 2, N'Una teoría de cuerdas y dimensiones', 1, N'cuerdas_dimensiones.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (79, 20, 3, N'Una fórmula matemática', 0, N'formula_teorica.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (80, 20, 4, N'Una teoría de la relatividad', 0, N'relatividad.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (146, 37, 2, N'Río Danubio', 1, N'danubio.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (200, 50, 1, N'Plantas', 1, N'plantas.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (201, 50, 2, N'Animales', 0, N'animales.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (202, 50, 3, N'Hongos', 0, N'hongos.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (203, 50, 4, N'Bacterias', 0, N'bacterias.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (204, 51, 1, N'Corteza', 1, N'corteza.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (205, 51, 2, N'Manto', 0, N'manto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (206, 51, 3, N'Núcleo', 0, N'nucleo.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (207, 51, 4, N'Atmósfera', 0, N'atmosfera.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (208, 52, 1, N'Plantas', 1, N'plantas_productores.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (209, 52, 2, N'Hongos', 0, N'hongos_productores.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (210, 52, 3, N'Animales', 0, N'animales_productores.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (211, 52, 4, N'Bacterias', 0, N'bacterias_productores.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (212, 53, 1, N'Oxígeno', 1, N'oxigeno.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (213, 53, 2, N'Dióxido de carbono', 0, N'dioxido_carbono.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (214, 53, 3, N'Nitrógeno', 0, N'nitrogeno.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (215, 53, 4, N'Metano', 0, N'metano.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (216, 54, 1, N'Erosión', 1, N'erosion.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (217, 54, 2, N'Solidificación', 0, N'solidificacion.jpg')
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (218, 54, 3, N'Evaporación', 0, N'evaporacion.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (219, 54, 4, N'Condensación', 0, N'condensacion.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (220, 55, 1, N'Mamífero', 1, N'mamifero.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (221, 55, 2, N'Reptil', 0, N'reptil.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (222, 55, 3, N'Ave', 0, N'ave.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (223, 55, 4, N'Pez', 0, N'pez.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (224, 56, 1, N'Evaporación, condensación, precipitación', 1, N'ciclo_correcto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (225, 56, 2, N'Solo evaporación', 0, N'solo_evaporacion.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (226, 56, 3, N'Condensación solamente', 0, N'solo_condensacion.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (227, 56, 4, N'Transpiración', 0, N'transpiracion.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (228, 57, 1, N'Contaminación del aire y agua', 1, N'contaminacion_aire.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (229, 57, 2, N'Desperdicio de recursos', 0, N'desperdicio.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (230, 57, 3, N'Cambio climático', 0, N'cambio_climatico.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (231, 57, 4, N'Desigualdad social', 0, N'desigualdad.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (232, 58, 1, N'Lugar donde vive una especie', 1, N'habitat_correcto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (233, 58, 2, N'Cualquier lugar', 0, N'cualquier_lugar.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (234, 58, 3, N'Donde hay agua', 0, N'donde_hay_agua.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (235, 58, 4, N'Bosques solamente', 0, N'bosques_solo.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (236, 59, 1, N'Conjunto de seres vivos y su entorno', 1, N'ecosistema_correcto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (237, 59, 2, N'Solo seres vivos', 0, N'solo_seres_vivos.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (238, 59, 3, N'Solo el entorno', 0, N'solo_entorno.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (239, 59, 4, N'Cualquiera', 0, N'cualquiera.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (240, 60, 1, N'Residuos que no se descomponen fácilmente', 1, N'residuos_correctos.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (241, 60, 2, N'Residuos orgánicos', 0, N'residuos_organicos.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (242, 60, 3, N'Residuos líquidos', 0, N'residuos_liquidos.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (243, 60, 4, N'Residuos peligrosos', 0, N'residuos_peligrosos.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (244, 61, 1, N'Aumento de temperatura global', 1, N'aumento_temperatura.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (245, 61, 2, N'Destrucción de la capa de ozono', 0, N'destruccion_capa.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (246, 61, 3, N'Extinción de especies', 0, N'extincion_especies.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (247, 61, 4, N'Contaminación del agua', 0, N'contaminacion_agua.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (248, 62, 1, N'Conjunto de seres vivos y su entorno', 1, N'ecosistema_correcto.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (249, 62, 2, N'Solo seres vivos', 0, N'solo_vivos.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (250, 62, 3, N'Solo el entorno', 0, N'solo_entorno.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (251, 62, 4, N'Cualquiera', 0, N'cualquiera.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (252, 63, 1, N'Variedad de especies en un ecosistema', 1, N'biodiversidad_correcta.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (253, 63, 2, N'Cantidad de organismos', 0, N'cantidad_organismos.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (254, 63, 3, N'Ecosistemas', 0, N'ecosistemas_biodiversidad.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (255, 63, 4, N'Sólo plantas', 0, N'solo_plantas.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (256, 64, 1, N'Secuencia de quién se come a quién', 1, N'cadena_correcta.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (257, 64, 2, N'Distribución de recursos', 0, N'distribucion_recursos.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (258, 64, 3, N'Red de especies', 0, N'red_especies.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (259, 64, 4, N'Ecosistemas', 0, N'ecosistemas_cadena.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (260, 65, 1, N'Recursos que se pueden regenerar', 1, N'recursos_regenerar.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (261, 65, 2, N'Recursos no renovables', 0, N'no_renovables.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (262, 65, 3, N'Recursos peligrosos', 0, N'peligrosos.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (263, 65, 4, N'Cualquiera', 0, N'cualquiera.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (264, 66, 1, N'Protección de especies en peligro', 1, N'proteccion_especies.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (265, 66, 2, N'Extinción de especies', 0, N'extincion_especies.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (266, 66, 3, N'Cualquiera', 0, N'cualquiera.jpg')
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (267, 66, 4, N'Destrucción de ecosistemas', 0, N'destruccion_ecosistemas.jpg')
SET IDENTITY_INSERT [dbo].[Respuestas] OFF
GO
