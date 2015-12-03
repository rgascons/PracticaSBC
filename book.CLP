
(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot nombreAutor
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot autoresFavoritos
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot compa%C3%B1ia
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot generoExperto
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(multislot catalogo
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot momento
		(type SYMBOL)
		(allowed-values ma%C3%B1ana mediodia tarde noche)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot moda
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot DNI
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot modas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot bestSeller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot presencia
		(type SYMBOL)
		(allowed-values fisica online)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot populares
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot librosLeidos
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(multislot generosRelacionados
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(multislot generosPreferidos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot ejemplaresVendidos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot edad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ISBN
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot escritoPor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot idioma
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot exclusivas
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot PrimeraOntologia_Class0
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombreCompa%C3%B1ia
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot autor
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot librosRepresentativos
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot tiempoDisponible
;+		(comment "Tiempo disponible que tiene el lector al día, en horas")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot puntosDeVenta
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(single-slot lugar
		(type SYMBOL)
		(allowed-values casa transporte trabajo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot estudios
		(type SYMBOL)
		(allowed-values primaria secundaria bachillerato universidad formacionProfesional otros)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot frecuencia
		(type SYMBOL)
		(allowed-values poca media mucha)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot librosEscritos
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot numPaginas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot generos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot nombreEstablecimiento
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot publicoDirigido
		(type SYMBOL)
		(allowed-values Infantil Juvenil Adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fechaPublicacion
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nacionalidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot puntuacion
		(type INTEGER)
		(range 0 5)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Libro
	(is-a USER)
	(role concrete)
	(single-slot titulo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot puntuacion
		(type INTEGER)
		(range 0 5)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ejemplaresVendidos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot bestSeller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot publicoDirigido
		(type SYMBOL)
		(allowed-values Infantil Juvenil Adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ISBN
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fechaPublicacion
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numPaginas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot escritoPor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot idioma
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot generos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write)))

(defclass Persona
	(is-a USER)
	(role concrete)
	(single-slot estudios
		(type SYMBOL)
		(allowed-values primaria secundaria bachillerato universidad formacionProfesional otros)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot edad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nacionalidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot DNI
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Lector
	(is-a Persona)
	(role concrete)
	(single-slot tiempoDisponible
;+		(comment "Tiempo disponible que tiene el lector al día, en horas")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot momento
		(type SYMBOL)
		(allowed-values ma%C3%B1ana mediodia tarde noche)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot autoresFavoritos
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(multislot generosPreferidos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot frecuencia
		(type SYMBOL)
		(allowed-values poca media mucha)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot populares
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Autor
	(is-a Persona)
	(role concrete)
	(single-slot nombreAutor
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot generoExperto
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(multislot librosEscritos
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))

(defclass Genero
	(is-a USER)
	(role concrete)
	(multislot generosRelacionados
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot moda
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot librosRepresentativos
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))
		
(definstances instancias
	([PrimeraOntologia_ACDoyle] of  Autor

	(librosEscritos
		[PrimeraOntologia_SabuesoBaskerville]
		[PrimeraOntologia_CanonHolmesiano])
	(nombreAutor "Arthur Conan Doyle"))

([PrimeraOntologia_AGrandes] of  Autor

	(librosEscritos [PrimeraOntologia_BesosPan])
	(nombreAutor "Almudena Grandes"))

([PrimeraOntologia_AlexGomez] of  Autor

	(librosEscritos [PrimeraOntologia_AntologiaZ])
	(nombreAutor "Alex Gomez"))

([PrimeraOntologia_Alzamiento] of  Libro

	(escritoPor [PrimeraOntologia_BKeene])
	(generos [PrimeraOntologia_Zombis])
	(titulo "El Alzamiento"))

([PrimeraOntologia_AmanteChatterley] of  Libro

	(escritoPor [PrimeraOntologia_DHLawrence])
	(fechaPublicacion "1928")
	(generos [PrimeraOntologia_Erotica])
	(idioma "Castellano")
	(publicoDirigido Adulto)
	(titulo "El amante de Lady Chatterley"))

([PrimeraOntologia_AmericanPsycho] of  Libro

	(bestSeller FALSE)
	(escritoPor [PrimeraOntologia_BEastonEllis])
	(fechaPublicacion "1991")
	(generos [PrimeraOntologia_Horror])
	(idioma "Ingles")
	(ISBN "978-0-679-73577-9")
	(numPaginas 400)
	(publicoDirigido Adulto)
	(titulo "American Psycho"))

([PrimeraOntologia_AMerritt] of  Autor

	(librosEscritos [PrimeraOntologia_ArdeBruja])
	(nombreAutor "Abraham Merritt"))

([PrimeraOntologia_Antirresurreccion] of  Libro

	(escritoPor [PrimeraOntologia_JRBiedma])
	(generos [PrimeraOntologia_Zombis])
	(titulo "Antirresurrección"))

([PrimeraOntologia_AntologiaZ] of  Libro

	(bestSeller TRUE)
	(escritoPor
		[PrimeraOntologia_AlexGomez]
		[PrimeraOntologia_JMRamiro])
	(generos [PrimeraOntologia_Zombis])
	(titulo "Antología Z"))

([PrimeraOntologia_ArdeBruja] of  Libro

	(escritoPor [PrimeraOntologia_AMerritt])
	(generos [PrimeraOntologia_Horror])
	(titulo "¡Arde, bruja, arde!"))

([PrimeraOntologia_Asterius] of  Autor

	(librosEscritos [PrimeraOntologia_KissingWoman])
	(nombreAutor "Asterius Williams"))

([PrimeraOntologia_Aventuras] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_MiguelStrogoff]
		[PrimeraOntologia_Ivanhoe]
		[PrimeraOntologia_Hobbit])
	(nombre "Aventuras"))

([PrimeraOntologia_BEastonEllis] of  Autor

	(librosEscritos [PrimeraOntologia_AmericanPsycho])
	(nombreAutor "Bret Easton Ellis"))

([PrimeraOntologia_BesosPan] of  Libro

	(escritoPor [PrimeraOntologia_AGrandes])
	(generos [PrimeraOntologia_Novela])
	(ISBN "9788490661918")
	(titulo "Los besos en el pan"))

([PrimeraOntologia_BKeene] of  Autor

	(librosEscritos [PrimeraOntologia_Alzamiento])
	(nombreAutor "Brian Keene"))

([PrimeraOntologia_BSanderson] of  Autor

	(librosEscritos [PrimeraOntologia_ImperioFinal])
	(nombreAutor "Brandon Sanderson"))

([PrimeraOntologia_CadaDia] of  Libro

	(escritoPor [PrimeraOntologia_NDragnic])
	(generos [PrimeraOntologia_Romance])
	(titulo "Cada día, cada hora"))

([PrimeraOntologia_CanonHolmesiano] of  Libro

	(escritoPor [PrimeraOntologia_ACDoyle])
	(generos [PrimeraOntologia_Suspense])
	(titulo "Canon Holmesiano"))

([PrimeraOntologia_CasaRiverton] of  Libro

	(escritoPor [PrimeraOntologia_KMorton])
	(fechaPublicacion "2009")
	(generos [PrimeraOntologia_Novela])
	(titulo "La casa de Riverton"))

([PrimeraOntologia_Cenital] of  Libro

	(escritoPor [PrimeraOntologia_EBueso])
	(fechaPublicacion "2012")
	(generos [PrimeraOntologia_CFApocalipsis])
	(idioma "Espanol")
	(numPaginas 288)
	(titulo "Cenital"))

([PrimeraOntologia_CFApocalipsis] of  Genero

	(generosRelacionados [PrimeraOntologia_CFFuturista])
	(nombre "Ciencia Ficcion Apocaliptica"))

([PrimeraOntologia_CFFuturista] of  Genero

	(generosRelacionados [PrimeraOntologia_CFApocalipsis])
	(librosRepresentativos [PrimeraOntologia_ImperioFinal])
	(nombre "Ciencia Ficcion Futurista"))

([PrimeraOntologia_Class24] of  Autor

	(nombreAutor "Elbrecht"))

([PrimeraOntologia_Class34] of  Autor

	(nombreAutor "Larerijar"))

([PrimeraOntologia_CrimenesCalleMorgue] of  Libro

	(escritoPor [PrimeraOntologia_EAPoe])
	(generos [PrimeraOntologia_Policial])
	(idioma "Castellano")
	(titulo "Los crímenes de la calle Morgue"))

([PrimeraOntologia_CryingFairy] of  Libro

	(escritoPor [PrimeraOntologia_MTorchwood])
	(generos [PrimeraOntologia_Aventuras])
	(titulo "The Crying Fairy"))

([PrimeraOntologia_CyborgWife] of  Libro

	(bestSeller TRUE)
	(escritoPor
		[PrimeraOntologia_Tardotram]
		[PrimeraOntologia_Etirekor])
	(generos [PrimeraOntologia_CFFuturista])
	(publicoDirigido Adulto)
	(titulo "The cyborg's wife"))

([PrimeraOntologia_DHammett] of  Autor

	(librosEscritos [PrimeraOntologia_HalconMaltes])
	(nombreAutor "Dashiell Hammett"))

([PrimeraOntologia_DHLawrence] of  Autor

	(librosEscritos [PrimeraOntologia_AmanteChatterley])
	(nombreAutor "David H Lawrence"))

([PrimeraOntologia_EAPoe] of  Autor

	(librosEscritos
		[PrimeraOntologia_CrimenesCalleMorgue]
		[PrimeraOntologia_GatoNegro])
	(nombreAutor "Edgar Allan Poe"))

([PrimeraOntologia_EBueso] of  Autor

	(librosEscritos [PrimeraOntologia_Cenital])
	(nombreAutor "Emilio Bueso"))

([PrimeraOntologia_Erotica] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_AmanteChatterley]
		[PrimeraOntologia_Lolita]
		[PrimeraOntologia_HistoriaOjo])
	(nombre "Erotica"))

([PrimeraOntologia_Etirekor] of  Autor

	(librosEscritos
		[PrimeraOntologia_CyborgWife]
		[PrimeraOntologia_StreamThorn]
		[PrimeraOntologia_Sorcerer])
	(nombreAutor "Etirekor"))

([PrimeraOntologia_FantasiaMagia] of  Genero

	(nombre "Fantasia Magica"))

([PrimeraOntologia_FantasiaMedieval] of  Genero

	(librosRepresentativos [PrimeraOntologia_TormentaEspadas])
	(nombre "Fantasia Medieval"))

([PrimeraOntologia_FantasiaSuperheroes] of  Genero

	(nombre "Fantasia Superheroica"))

([PrimeraOntologia_FinEternidad] of  Libro

	(escritoPor [PrimeraOntologia_IAsimov])
	(generos [PrimeraOntologia_CFFuturista])
	(titulo "El fin de la eternidad"))

([PrimeraOntologia_Francamente] of  Libro

	(escritoPor [PrimeraOntologia_RFord])
	(generos [PrimeraOntologia_Novela])
	(idioma "Castellano")
	(ISBN "9788433979384")
	(numPaginas 232)
	(titulo "Francamente, Frank"))

([PrimeraOntologia_GatoNegro] of  Libro

	(escritoPor [PrimeraOntologia_EAPoe])
	(generos [PrimeraOntologia_Horror])
	(titulo "El gato negro"))

([PrimeraOntologia_GBataille] of  Autor

	(librosEscritos [PrimeraOntologia_HistoriaOjo])
	(nombreAutor "Georges Bataille"))

([PrimeraOntologia_GRRMartin] of  Autor

	(librosEscritos [PrimeraOntologia_ImperioFinal])
	(nombreAutor "George R. R. Martin"))

([PrimeraOntologia_HalconMaltes] of  Libro

	(escritoPor [PrimeraOntologia_DHammett])
	(generos [PrimeraOntologia_Suspense])
	(titulo "El halcon maltes"))

([PrimeraOntologia_HistoriaOjo] of  Libro

	(escritoPor [PrimeraOntologia_GBataille])
	(fechaPublicacion "1928")
	(generos [PrimeraOntologia_Erotica])
	(idioma "Castellano")
	(titulo "Historia de ojo"))

([PrimeraOntologia_Hobbit] of  Libro

	(escritoPor [PrimeraOntologia_JRRTolkien])
	(generos [PrimeraOntologia_Aventuras])
	(titulo "El Hobbit"))

([PrimeraOntologia_HorasDistantes] of  Libro

	(escritoPor [PrimeraOntologia_KMorton])
	(generos [PrimeraOntologia_Romance])
	(titulo "Las horas distantes"))

([PrimeraOntologia_Horror] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_AmericanPsycho]
		[PrimeraOntologia_ArdeBruja]
		[PrimeraOntologia_SalirInfierno]
		[PrimeraOntologia_GatoNegro])
	(nombre "Horror"))

([PrimeraOntologia_IAsimov] of  Autor

	(librosEscritos [PrimeraOntologia_FinEternidad])
	(nombreAutor "Isaac Asimov"))

([PrimeraOntologia_ImperioFinal] of  Libro

	(escritoPor [PrimeraOntologia_BSanderson])
	(fechaPublicacion "2011")
	(generos [PrimeraOntologia_CFFuturista])
	(idioma "Castellano")
	(titulo "El Imperio Final"))

([PrimeraOntologia_IslaMisteriosa] of  Libro

	(escritoPor [PrimeraOntologia_JVerne])
	(fechaPublicacion "1874")
	(generos [PrimeraOntologia_Aventuras])
	(titulo "La isla misteriosa"))

([PrimeraOntologia_Ivanhoe] of  Libro

	(escritoPor [PrimeraOntologia_WScott])
	(generos [PrimeraOntologia_Aventuras])
	(titulo "Ivanhoe"))

([PrimeraOntologia_JardinHechizos] of  Libro

	(escritoPor [PrimeraOntologia_SAAllen])
	(generos [PrimeraOntologia_Romance])
	(titulo "El jardín de los hechizos"))

([PrimeraOntologia_JFBardin] of  Autor

	(librosEscritos [PrimeraOntologia_SalirInfierno])
	(nombreAutor "John Franklin Bardin"))

([PrimeraOntologia_JMRamiro] of  Autor

	(librosEscritos [PrimeraOntologia_AntologiaZ])
	(nombreAutor "José Martín Ramiro"))

([PrimeraOntologia_JRBiedma] of  Autor

	(librosEscritos [PrimeraOntologia_Antirresurreccion])
	(nombreAutor "Juan Ramón Biedma"))

([PrimeraOntologia_JRRTolkien] of  Autor

	(librosEscritos [PrimeraOntologia_Hobbit])
	(nombreAutor "J.R.R. Tolkien"))

([PrimeraOntologia_JVerne] of  Autor

	(librosEscritos
		[PrimeraOntologia_MiguelStrogoff]
		[PrimeraOntologia_IslaMisteriosa])
	(nombreAutor "Julio Verne"))

([PrimeraOntologia_KissingWoman] of  Libro

	(escritoPor [PrimeraOntologia_Asterius])
	(generos
		[PrimeraOntologia_Novela]
		[PrimeraOntologia_Erotica])
	(titulo "Kissing Woman"))

([PrimeraOntologia_KMorton] of  Autor

	(librosEscritos
		[PrimeraOntologia_HorasDistantes]
		[PrimeraOntologia_CasaRiverton])
	(nombreAutor "Kate Morton"))

([PrimeraOntologia_Loikath] of  Autor

	(nombreAutor "Loikath Welter"))

([PrimeraOntologia_Lolita] of  Libro

	(escritoPor [PrimeraOntologia_VNabokov])
	(fechaPublicacion "1955")
	(generos [PrimeraOntologia_Erotica])
	(idioma "Castellano")
	(publicoDirigido Adulto)
	(titulo "Lolita"))

([PrimeraOntologia_LookingInfinity] of  Libro

	(escritoPor [PrimeraOntologia_WGenadi])
	(fechaPublicacion "2014")
	(generos [PrimeraOntologia_CFFuturista])
	(idioma "Ingles")
	(numPaginas 300)
	(publicoDirigido Juvenil)
	(titulo "Looking at infinity"))

([PrimeraOntologia_MAsensi] of  Autor

	(librosEscritos [PrimeraOntologia_RegresoCaton])
	(nombreAutor "Matilde Asensi"))

([PrimeraOntologia_MiguelStrogoff] of  Libro

	(escritoPor [PrimeraOntologia_JVerne])
	(fechaPublicacion "1876")
	(generos [PrimeraOntologia_Aventuras])
	(titulo "Miguel Strogoff"))

([PrimeraOntologia_MTorchwood] of  Autor

	(librosEscritos [PrimeraOntologia_CryingFairy])
	(nombreAutor "Mijan Torchwood"))

([PrimeraOntologia_NDragnic] of  Autor

	(librosEscritos [PrimeraOntologia_CadaDia])
	(nombreAutor "Nataša Dragnic"))

([PrimeraOntologia_NJerouax] of  Autor

	(librosEscritos [PrimeraOntologia_SoulWinter])
	(nombreAutor "Nalien Jerouax"))

([PrimeraOntologia_Novela] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_BesosPan]
		[PrimeraOntologia_RegresoCaton]
		[PrimeraOntologia_Francamente])
	(nombre "Novela"))

([PrimeraOntologia_PercyJackson] of  Libro

	(bestSeller TRUE)
	(escritoPor [PrimeraOntologia_RRiordan])
	(fechaPublicacion "2009")
	(generos [PrimeraOntologia_CFFuturista])
	(idioma "Castellano")
	(ISBN "9788498382068")
	(titulo "LA MALDICION DEL TITAN. Percy Jackson y los dioses del Olimpo III"))

([PrimeraOntologia_PiedraLunar] of  Libro

	(escritoPor [PrimeraOntologia_WilkieCollins])
	(generos [PrimeraOntologia_Policial])
	(titulo "La piedra lunar"))

([PrimeraOntologia_Policial] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_PiedraLunar]
		[PrimeraOntologia_SabuesoBaskerville]
		[PrimeraOntologia_CrimenesCalleMorgue])
	(nombre "Policial"))

([PrimeraOntologia_PresuntoInocente] of  Libro

	(escritoPor [PrimeraOntologia_STurow])
	(generos [PrimeraOntologia_Suspense])
	(titulo "Presunto inocente"))

([PrimeraOntologia_RegresoCaton] of  Libro

	(escritoPor [PrimeraOntologia_MAsensi])
	(generos [PrimeraOntologia_Novela])
	(idioma "Castellano")
	(ISBN "9788408145820")
	(numPaginas 610)
	(titulo "El regreso del Caton"))

([PrimeraOntologia_RFord] of  Autor

	(librosEscritos [PrimeraOntologia_Francamente])
	(nombreAutor "Richard Ford"))

([PrimeraOntologia_Romance] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_JardinHechizos]
		[PrimeraOntologia_HorasDistantes]
		[PrimeraOntologia_CadaDia])
	(nombre "Romantica"))

([PrimeraOntologia_RRiordan] of  Autor

	(librosEscritos [PrimeraOntologia_PercyJackson])
	(nombreAutor "Rick Riordan"))

([PrimeraOntologia_SAAllen] of  Autor

	(librosEscritos [PrimeraOntologia_JardinHechizos])
	(nombreAutor "Sarah Addison Allen"))

([PrimeraOntologia_SabuesoBaskerville] of  Libro

	(escritoPor [PrimeraOntologia_ACDoyle])
	(generos [PrimeraOntologia_Policial])
	(titulo "El sabueso de Baskerville"))

([PrimeraOntologia_SalirInfierno] of  Libro

	(escritoPor [PrimeraOntologia_JFBardin])
	(generos [PrimeraOntologia_Horror])
	(titulo "Al salir del infierno"))

([PrimeraOntologia_SevardoAguilar] of  Autor

	(librosEscritos [PrimeraOntologia_SoulDoor])
	(nombreAutor "Sevardo Aguilar"))

([PrimeraOntologia_Slaves] of  Libro

	(bestSeller TRUE)
	(escritoPor [PrimeraOntologia_WGenadi])
	(fechaPublicacion "2015")
	(generos [PrimeraOntologia_Erotica])
	(idioma "Inglés")
	(numPaginas 250)
	(publicoDirigido Juvenil)
	(titulo "Slaves"))

([PrimeraOntologia_Sorcerer] of  Libro

	(escritoPor [PrimeraOntologia_Etirekor])
	(generos [PrimeraOntologia_Novela])
	(titulo "The sorcerer"))

([PrimeraOntologia_SoulDoor] of  Libro

	(escritoPor [PrimeraOntologia_SevardoAguilar])
	(generos [PrimeraOntologia_Suspense])
	(idioma "Ingles")
	(titulo "The Soul of the Door"))

([PrimeraOntologia_SoulWinter] of  Libro

	(escritoPor [PrimeraOntologia_NJerouax])
	(generos
		[PrimeraOntologia_Aventuras]
		[PrimeraOntologia_Suspense])
	(idioma "Ingles")
	(titulo "The Souls's Winter"))

([PrimeraOntologia_StreamThorn] of  Libro

	(bestSeller TRUE)
	(escritoPor
		[PrimeraOntologia_ZannLatimhoff]
		[PrimeraOntologia_Etirekor])
	(generos [PrimeraOntologia_Romance])
	(titulo "The Stream of the Thorn"))

([PrimeraOntologia_STurow] of  Autor

	(librosEscritos [PrimeraOntologia_PresuntoInocente])
	(nombreAutor "Scott Turow"))

([PrimeraOntologia_Suspense] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_PresuntoInocente]
		[PrimeraOntologia_HalconMaltes]
		[PrimeraOntologia_CanonHolmesiano])
	(nombre "Suspense"))

([PrimeraOntologia_Tardotram] of  Autor

	(librosEscritos
		[PrimeraOntologia_VacantMale]
		[PrimeraOntologia_CyborgWife])
	(nombreAutor "Tardotram Agosti"))

([PrimeraOntologia_TormentaEspadas] of  Libro

	(escritoPor [PrimeraOntologia_GRRMartin])
	(fechaPublicacion "2006")
	(generos [PrimeraOntologia_FantasiaMedieval])
	(idioma "Castellano")
	(ISBN "9788496208391")
	(titulo "Tormenta de espadas"))

([PrimeraOntologia_VacantMale] of  Libro

	(escritoPor [PrimeraOntologia_Tardotram])
	(generos [PrimeraOntologia_CFFuturista])
	(idioma "Ingles")
	(titulo "The Vacant Male"))

([PrimeraOntologia_VNabokov] of  Autor

	(librosEscritos [PrimeraOntologia_Lolita])
	(nombreAutor "Vladimir Nabokov"))

([PrimeraOntologia_VoyagersWife] of  Libro

	(escritoPor [PrimeraOntologia_ZannLatimhoff])
	(generos [PrimeraOntologia_Horror])
	(titulo "Voyagers in the Wife"))

([PrimeraOntologia_WGenadi] of  Autor

	(librosEscritos
		[PrimeraOntologia_LookingInfinity]
		[PrimeraOntologia_Slaves])
	(nombreAutor "Wicea Genadi"))

([PrimeraOntologia_Wicemar] of  Autor

	(nombreAutor "Wicemar Darunt"))

([PrimeraOntologia_WilkieCollins] of  Autor

	(librosEscritos [PrimeraOntologia_PiedraLunar])
	(nombreAutor "Wilkie Collins"))

([PrimeraOntologia_WScott] of  Autor

	(librosEscritos [PrimeraOntologia_Ivanhoe])
	(nombreAutor "Walter Scott"))

([PrimeraOntologia_ZannLatimhoff] of  Autor

	(librosEscritos
		[PrimeraOntologia_StreamThorn]
		[PrimeraOntologia_VoyagersWife])
	(nombreAutor "Zann Latimhoff"))

([PrimeraOntologia_Zombis] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_AntologiaZ]
		[PrimeraOntologia_Alzamiento]
		[PrimeraOntologia_Antirresurreccion])
	(moda TRUE)
	(nombre "Zombis"))
)

;;;**************
;;;Codigo CLIPS
;;;**************

;;; Se crea una clase para las recomendaciones para poder hacer listas de recomendaciones y tratarlas mejor
(defclass Recomendacion 
	(is-a USER)
	(role concrete)
	(slot libro
		(type INSTANCE)
		(create-accessor read-write))
	(slot puntuacion
		(type INTEGER)
		(create-accessor read-write))
	(multislot justificaciones
		(type STRING)
		(create-accessor read-write))
)

;;; Template para una lista de recomendaciones sin orden
(deftemplate lista-rec-desordenada
	(multislot recomendaciones (type INSTANCE))
)

;;; Template para una lista de recomendaciones con orden
(deftemplate lista-rec-ordenada
	(multislot recomendaciones (type INSTANCE))
	)

;; Imprime los datos de un contenido
(defmessage-handler Libro imprimir primary ()
	(format t "Titulo: %s %n" ?self:titulo)
	
	(format t "Genero/s: ")
	(progn$ (?curr-gen (send ?self get-generos))
		(format t "%s " (send ?curr-gen get-nombre))
	)
	(printout t crlf)
	(format t "Fecha: %s" ?self:fechaPublicacion)
	(printout t crlf)
	(printout t "Autor/es: ")
	(progn$ (?curr-aut (send ?self get-escritoPor))
		(format t "%s " (send ?curr-aut get-nombreAutor))
	)
	(printout t crlf)
)

(defmessage-handler Recomendacion imprimir ()
	(printout t "-----------------------------------" crlf)
	(printout t (send ?self:libro imprimir))
	(printout t crlf)
	;Max puntuacion = 200
	(format t "Nivel de recomendacion: %d %% %n" (/ (* ?self:puntuacion 100) 200))
	(printout t crlf)
	(printout t "-----------------------------------" crlf)
)

;;; Funcion para hacer una pregunta general 
(deffunction pregunta-general (?pregunta) 
	(format t "%s" ?pregunta) 
	(bind ?respuesta (read)) 
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi) 
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi) 
	(bind ?respuesta (read)) 
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do 
		(format t "¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi) 
		(bind ?respuesta (read)) 
	) 
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta booleana
(deffunction pregunta-booleana (?pregunta)
	(format t "%s (s/n)" ?pregunta)
	(bind ?resp (read))
	(while (not (or (eq ?resp s)(eq ?resp n)(eq ?resp si)(eq ?resp no))) do
		(format t "%s (s/n)" ?pregunta)
		(bind ?resp (read))
	)
	(if (or (eq ?resp s) (eq ?resp si))
		then TRUE
		else FALSE
	)
)

;;; Funcion para hacer una pregunta con un conjunto definido de valores de repuesta    
(deffunction pregunta-lista (?pregunta $?valores_posibles) 
	(format t "%s" ?pregunta)  
	(bind ?resposta (readline))  
	(bind ?res (str-explode ?resposta))
	?res
)

;;; Funcion que retorna el elemento con puntuacion maxima
(deffunction maximo-puntuacion ($?lista)
	(bind ?maximo -1)
	(bind ?elemento nil)
	(progn$ (?curr-rec $?lista)
		;(bind ?curr-cont (send ?curr-rec get-contenido))
		(bind ?curr-punt (send ?curr-rec get-puntuacion))
		(if (> ?curr-punt ?maximo)
			then 
			(bind ?maximo ?curr-punt)
			(bind ?elemento ?curr-rec)
		)
	)
	?elemento
)

(deffunction genre_in_book ""
	(?gen ?book)
	(bind ?list (send ?book get-generos))
	(progn$ (?it ?list)
		(if (eq (str-cat ?gen) (send ?it get-nombre) ) then TRUE else FALSE)
	)
)

(deffunction author_in_book ""
	(?aut ?book)
	(bind ?list (send ?book get-escritoPor))
	(progn$ (?it ?list)
		(if (eq (str-cat ?aut) (send ?it get-nombreAutor)) then TRUE else FALSE)
	)
)

;;;**********************
;;;MAIN
;;;**********************
(defmodule MAIN (export ?ALL))

;;; Banner de inicio
(defrule banner ""
	(declare (salience 100))
	=>
	(printout t crlf crlf)
	(printout t "Book Recomendation System")
	(printout t crlf crlf)
	(assert (start))
)
;;;-------------------------------------------------------------------
;;;------------------------------Preguntas----------------------------
;;;-------------------------------------------------------------------

(defrule preguntar-existencia "" 
	(start)
	=>
	(bind ?dni (pregunta-general "Cual es tu DNI? "))
	(if (any-instancep ((?p Lector)) (eq (str-compare ?p:DNI ?dni) 0))
	then (assert (usuario-lector))
	else 
	(bind ?lector (make-instance lectorN of Lector))
	(send ?lector put-DNI ?dni)
	(assert(nuevo-lector ?dni))
	)
)

;;; Pregunta para conocer la edad
(defrule pregunta-edad ""
	(nuevo-lector ?dni)
	=>
	(bind ?ed (pregunta-numerica "Que edad tienes?" 0 150))
	(if (< ?ed 12) then (assert (perfil infantil)))
	(if (and (>= ?ed 12)(<= ?ed 24)) then (assert (perfil juvenil)))
	(if (> ?ed 24) then (assert(perfil adulto)))
	(if (< ?ed 18) then (assert (menor_de_edad)) )
)

(defrule pregunta-idioma "Pregunta para saber el idioma preferido"
	(nuevo-lector ?)
	=>
	(bind ?resp (pregunta-general "En que idioma prefieres leer? Ni->No importa "))
	(if (eq (str-compare ?resp "Ni") 0) then (assert (Idioma indef))
	else (assert (Idioma ?resp)))
)

(defrule pregunta-horas " Pregunta para horas de lectura "
	(nuevo-lector ?)
	=>
	(bind ?resp (pregunta-numerica "Cuantas horas dedicas a leer al dia? " 0 24))
	(assert (HorasDia ?resp))
)

(defrule pregunta-momento "Pregunta para momento de lectura del día"
	(nuevo-lector ?)
	=>
	(bind ?resp (pregunta-numerica "Mas o menos a que hora comienzas a leer? " 0 24))
	(if (and (>= ?resp 0) (<= ?resp 6)) then (assert (Momento madrugada)) 
	else (if (and (> ?resp 6) (<= ?resp 12)) then (assert (Momento mañana))
	else (if (and (> ?resp 12) (<= ?resp 18)) then (assert (Momento tarde)) 
	else (assert (Momento noche)))))
)

(defrule pregunta-frecuencia "Pregunta para frecuencia de lectura"
	(nuevo-lector ?)
	=>
	(bind ?resp (pregunta-numerica "En un mes cuantos dias sueles leer? " 0 24))
	(if (and (>= ?resp 0) (<= ?resp 6)) then (assert (Frecuencia muyPoca))
	else (if (and (> ?resp 6) (<= ?resp 12)) then (assert (Frecuencia poca))
	else (if (and (> ?resp 12) (<= ?resp 18)) then (assert (Frecuencia normal)) 
	else (if (and (> ?resp 18) (<= ?resp 24)) then (assert (Frecuencia mucha)) 	
	else (assert (Frecuencia muchisima))))))
)

(defrule pregunta-lugar "Pregunta para horas de lectura"
	(nuevo-lector ?)
	=>
	(bind ?resp (pregunta-general "En que sitio sueles leer normalmente? Ni -> No importa "))
	(if (eq (str-compare ?resp "Ni") 0) then (assert (Lugar indef))
	else (assert (Lugar ?resp)))
)

(defrule pregunta-bestseller ""
	(nuevo-lector ?)
	=>
	(bind ?resp (pregunta-booleana "Te interesan los libros mas vendidos?"))
	(assert (bestseller ?resp))
)

(defrule pregunta-modas ""
	(nuevo-lector ?)
	=>
	(bind ?resp (pregunta-booleana "Quieres ver los libros que estan de moda?"))
	(assert (modas ?resp))
)

(defrule pregunta-generos "Pregunta para saber generos preferidos"
	(nuevo-lector ?)
	=>
	(printout t "Cuales de los siguientes generos te gustan?" crlf)
	(bind ?lista (find-all-instances ((?p Genero)) TRUE))
	(loop-for-count (?i 1 (length$ ?lista)) do
		(printout t ?i ". " (send (nth$ ?i ?lista) get-nombre) crlf)
	)
	(bind ?resp (pregunta-lista "Escribe los identificadores separados por espacios: "))
	(if (not (member 0 ?resp))
		then
		(progn$ (?it ?resp)
			(assert (genero (send (nth$ ?it ?lista) get-nombre)))
		)
	)
	(assert (pregunta-generos))
)

(defrule pregunta-libros "Pregunta para saber los libros que le gustan"
	(pregunta-generos)
	(genero ?gen)
	?g<-(object (is-a Genero) (nombre ?gen) (librosRepresentativos $?lista))
	(test (> (length$ ?lista) 0))
	=>
	(printout t "Obteniendo lista del genero " ?gen crlf)
	(loop-for-count (?i 1 (length$ ?lista)) do
		(printout t ?i ". " (send (nth$ ?i ?lista) get-titulo) crlf)
	)
	(bind ?resp (pregunta-lista "Escribe los identificadores separados por espacios: 0->Ninguno "))
	(if (not (member 0 ?resp))
		then
		(progn$ (?it ?resp)
			(assert (LibroLeido (send (nth$ ?it ?lista) get-titulo)))
		)
	)
)

(defrule autores-libros "Define con un hecho los autores de libros que le gustan"
	(LibroLeido ?bname)
	?book <- (object (is-a Libro) (titulo ?bname) (escritoPor $?list_aut))
	=>
	(printout t "El libro " ?bname " ha sido escrito por:")
	(progn$ (?it $?list_aut)
		(bind ?aname (send ?it get-nombreAutor))
		(printout t " " ?aname )
		(assert (autor ?aname))
	)
	(printout t crlf)
)

(defrule focusFiltrado
	(pregunta-generos)
	=>
	(focus filtrado)
)
;;;*********
;;;Filtrado
;;;*********
(defmodule filtrado
	(import MAIN ?ALL)
	(export ?ALL)
)

(defrule obtenerLibros "Obtener todos los libros"
	?v <- (start)
	=>
	(bind $?lista (find-all-instances((?inst Libro)) TRUE))
	(printout t "Obteniendo libros..." crlf)
	(loop-for-count (?i 1 (length$ ?lista)) do
		(bind ?book (nth$ ?i ?lista)) 
		(bind ?nR (sym-cat R**(send ?book get-titulo)))	 
		(bind ?inst (make-instance ?nR of Recomendacion (libro ?book) (puntuacion 0) ))
	)
	(retract ?v)
	(assert(libros-obtenidos))
)

(defrule descartarBestSellers ""
	(libros-obtenidos)
	(bestseller FALSE)
	?recm <- (object (is-a Recomendacion) (libro ?book))
	(test (send ?book get-bestSeller))
	=>
	(printout t "Eliminado por ser un bestseller: " (instance-name ?recm) crlf)	
	(send ?recm delete)
)

(defrule descartarMenorErotico "Borra libros eróticos si el lector es un niño"
	(libros-obtenidos)
	(menor_de_edad)
	?recm <- (object (is-a Recomendacion) (libro ?book) )
	(test (genre_in_book Erotica ?book))
	=>
	(printout t "Eliminado por ser inadecuado para niños: " (instance-name ?recm) crlf)
	(send ?recm delete)
)


(defrule descartarModas ""
	(libros-obtenidos)
	(modas FALSE)
	?genre <- (object (is-a Genero) (nombre ?gname) (moda TRUE))
	?recm <- (object (is-a Recomendacion) (libro ?book))
	(test (genre_in_book ?gname ?book))
	=>
	(printout t "Eliminado por pertenecer a un genero de moda: " (instance-name ?recm) crlf)
	(send ?recm delete)
)

;(defrule descartarLibrosCortos "Descarta los libros más cortos para aquellos que leen con mucha frecuencia"
;	(libros-obtenidos)
;	(Frecuencia muchisima)
;	?book <- (object (is-a Libro) (numPaginas ? np))
;	?recm <- (object (is-a Recomendacion) (libro ?book))
;)


(defrule descartarIdiomas ""
	(libros-obtenidos)
	(idioma ?idi)
	?recm <- (object (is-a Recomendacion) (libro ?book))
	(test (not (eq ?idi (send ?book get-idioma) ) ) )
	=>
	(printout t "Eliminado por ser de un idioma diferente: " (instance-name ?recm) crlf)
	(send ?recm delete)
)

;;;**********
;;;Valoración
;;;**********

(defrule plusGenero
	(genero ?resp)
	?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
	(test (genre_in_book ?resp ?book))
	(not (valorGenero ?recm))
	=>
	(printout t "Pertenece a genero favorito (" ?resp ") : " (instance-name ?recm) crlf)
	(send ?recm put-puntuacion (+ ?pt 100))
	(assert (valorGenero ?recm))
)

(defrule plusPublico
	(perfil ?perf)
	?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
	(test (eq ?perf (send ?book get-publicoDirigido)))
	(not (valorPublico ?recm))
	=>
	(printout t "Pertenece al perfil del lector (" ?perf ") : " (instance-name ?recm) crlf)
	(send ?recm put-puntuacion (+ ?pt 50))
	(assert (valorPublico ?recm))
)

(defrule plusAutor
	(autor ?autr)
	?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
	(test (author_in_book ?autr ?book))
	(not (valorAutor ?recm))
	=>
	(printout t "El autor (" ?autr ") al conjunto de autores favoritos del lector : " (instance-name ?recm) crlf)
	(send ?recm put-puntuacion (+ ?pt 50))
	(assert (valorAutor ?recm))
)

;;;************
;;;Presentación
;;;************

(defrule lista-desordenada "Si no existe la lista desordenada, se crea una"
	(not (lista-rec-desordenada))
	=>
	(assert (lista-rec-desordenada))
)

(defrule insertar-recomendacion "Inserta una recomendacion a la lista de recomendaciones"
	(declare (salience 10))
	?rec <- (object (is-a Recomendacion))
	?hecho <- (lista-rec-desordenada (recomendaciones $?lista))
	(test (not (member$ ?rec $?lista)))
	=>
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) ?rec))
	(modify ?hecho (recomendaciones $?lista))
)

(defrule crea-lista-ordenada "Se crea una lista ordenada de contenido"
	(not (lista-rec-ordenada))
	(lista-rec-desordenada (recomendaciones $?lista))
	=>
	;;; Hacemos una ordenacion buscando maximo a cada paso (lento per simple de implementar)
	(bind $?resultado (create$ ))
	(while (and (not (eq (length$ $?lista) 0)) (< (length$ $?resultado) 3))  do
		(bind ?curr-rec (maximo-puntuacion $?lista))
		(bind $?lista (delete-member$ $?lista ?curr-rec))
		(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado) 1) ?curr-rec))
	)
	(assert (lista-rec-ordenada (recomendaciones $?resultado)))
)

(defrule presentar ""
	(lista-rec-ordenada (recomendaciones $?lista))
	=>
	(progn$ (?it ?lista)
		(send ?it imprimir)
		(printout t crlf)
	)
)
