; Mon Dec 07 19:53:09 GMT 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")


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
	(multislot generoExperto
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot momento
		(type SYMBOL)
		(allowed-values ma%C3%B1ana mediodia tarde noche)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot catalogo
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
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
	(single-slot edad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ISBN
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot escritoPor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot idioma
		(type SYMBOL)
		(allowed-values Ingles Espanol Catalan Frances Aleman)
;+		(cardinality 0 1)
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
	(single-slot libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numPaginas
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot librosEscritos
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(multislot generos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot nombreEstablecimiento
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot bestseller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot idiomasPreferidos
		(type SYMBOL)
		(allowed-values Espanol Ingles Catalan Frances)
		(create-accessor read-write))
	(single-slot publicoDirigido
		(type SYMBOL)
		(allowed-values Infantil Juvenil Adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot clasicos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot critico
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fechaPublicacion
		(type INTEGER)
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
	(single-slot bestSeller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ISBN
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot publicoDirigido
		(type SYMBOL)
		(allowed-values Infantil Juvenil Adulto)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot fechaPublicacion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numPaginas
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot escritoPor
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(multislot generos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot idioma
		(type SYMBOL)
		(allowed-values Ingles Espanol Catalan Frances Aleman)
;+		(cardinality 0 1)
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
	(single-slot bestseller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
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
	(multislot idiomasPreferidos
		(type SYMBOL)
		(allowed-values Espanol Ingles Catalan Frances)
		(create-accessor read-write))
	(single-slot clasicos
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot critico
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
	(multislot librosEscritos
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(multislot generoExperto
		(type INSTANCE)
;+		(allowed-classes Genero)
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
	; Mon Dec 07 19:53:09 GMT 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")

([Lector1] of  Lector

	(autoresFavoritos [PrimeraOntologia_IAsimov])
	(bestseller TRUE)
	(critico TRUE)
	(DNI "12345")
	(edad 12)
	(estudios primaria)
	(frecuencia media)
	(generosPreferidos
		[PrimeraOntologia_Novela]
		[PrimeraOntologia_CFFuturista])
	(idiomasPreferidos Espanol)
	(momento tarde)
	(nacionalidad "Espanol"))

([Lector2] of  Lector

	(autoresFavoritos
		[PrimeraOntologia_ACDoyle]
		[PrimeraOntologia_EAPoe])
	(clasicos TRUE)
	(DNI "23456")
	(edad 17)
	(estudios secundaria)
	(frecuencia mucha)
	(generosPreferidos [PrimeraOntologia_Policial])
	(momento ma%C3%B1ana)
	(nacionalidad "Ingles"))

([Lector3] of  Lector

	(autoresFavoritos [PrimeraOntologia_JVerne])
	(DNI "13337")
	(edad 25)
	(estudios universidad)
	(frecuencia poca)
	(generosPreferidos
		[PrimeraOntologia_Zombis]
		[PrimeraOntologia_Horror])
	(idiomasPreferidos Ingles Catalan)
	(momento tarde)
	(nacionalidad "Ingles"))

([Lector4] of  Lector

	(autoresFavoritos
		[PrimeraOntologia_SevardoAguilar]
		[PrimeraOntologia_AlexGomez])
	(bestseller TRUE)
	(clasicos FALSE)
	(critico TRUE)
	(DNI "44444")
	(estudios formacionProfesional)
	(frecuencia mucha)
	(generosPreferidos
		[PrimeraOntologia_Horror]
		[PrimeraOntologia_Policial]
		[PrimeraOntologia_Erotica])
	(idiomasPreferidos Ingles)
	(momento mediodia)
	(nacionalidad "Espanol")
	(tiempoDisponible 23))

([Lector5] of  Lector

	(clasicos TRUE)
	(DNI "55555")
	(estudios universidad)
	(frecuencia media)
	(momento mediodia)
	(nacionalidad "Espanol"))

([Lector6] of  Lector

	(autoresFavoritos [PrimeraOntologia_RMarinTrenchera])
	(critico TRUE)
	(DNI "64371")
	(estudios bachillerato)
	(frecuencia mucha)
	(generosPreferidos
		[PrimeraOntologia_Policial]
		[PrimeraOntologia_CFFuturista])
	(idiomasPreferidos Catalan)
	(momento noche)
	(nacionalidad "Gallifrey"))

([PrimeraOntologia_ACDoyle] of  Autor

	(librosEscritos
		[PrimeraOntologia_SabuesoBaskerville]
		[PrimeraOntologia_CanonHolmesiano])
	(nacionalidad "Ingles")
	(nombreAutor "Arthur Conan Doyle"))

([PrimeraOntologia_AGrandes] of  Autor

	(librosEscritos [PrimeraOntologia_BesosPan])
	(nacionalidad "Espanol")
	(nombreAutor "Almudena Grandes"))

([PrimeraOntologia_AlexGomez] of  Autor

	(librosEscritos [PrimeraOntologia_AntologiaZ])
	(nacionalidad "Espanol")
	(nombreAutor "Alex Gomez"))

([PrimeraOntologia_Alzamiento] of  Libro

	(escritoPor [PrimeraOntologia_BKeene])
	(fechaPublicacion 2010)
	(generos [PrimeraOntologia_Zombis])
	(idioma Espanol)
	(numPaginas 280)
	(puntuacion 4)
	(titulo "El alzamiento"))

([PrimeraOntologia_AmanteChatterley] of  Libro

	(bestSeller FALSE)
	(escritoPor [PrimeraOntologia_DHLawrence])
	(fechaPublicacion 2009)
	(generos [PrimeraOntologia_Erotica])
	(idioma Espanol)
	(numPaginas 432)
	(publicoDirigido Adulto)
	(puntuacion 2)
	(titulo "El amante de Lady Chatterley"))

([PrimeraOntologia_AmericanPsycho] of  Libro

	(bestSeller FALSE)
	(escritoPor [PrimeraOntologia_BEastonEllis])
	(fechaPublicacion 1991)
	(generos [PrimeraOntologia_Horror])
	(idioma Ingles)
	(ISBN "978-0-679-73577-9")
	(numPaginas 400)
	(publicoDirigido Adulto)
	(puntuacion 3)
	(titulo "American Psycho"))

([PrimeraOntologia_AMerritt] of  Autor

	(librosEscritos [PrimeraOntologia_ArdeBruja])
	(nacionalidad "Estadounidense")
	(nombreAutor "Abraham Merritt"))

([PrimeraOntologia_Antirresurreccion] of  Libro

	(escritoPor [PrimeraOntologia_JRBiedma])
	(fechaPublicacion 2011)
	(generos [PrimeraOntologia_Zombis])
	(idioma Espanol)
	(numPaginas 320)
	(puntuacion 3)
	(titulo "Antirresurreccion"))

([PrimeraOntologia_AntologiaZ] of  Libro

	(bestSeller TRUE)
	(escritoPor
		[PrimeraOntologia_AlexGomez]
		[PrimeraOntologia_JMRamiro])
	(fechaPublicacion 2010)
	(generos [PrimeraOntologia_Zombis])
	(idioma Espanol)
	(numPaginas 326)
	(publicoDirigido Juvenil)
	(puntuacion 4)
	(titulo "Antologia Z"))

([PrimeraOntologia_ArdeBruja] of  Libro

	(escritoPor [PrimeraOntologia_AMerritt])
	(fechaPublicacion 1994)
	(generos [PrimeraOntologia_Horror])
	(idioma Espanol)
	(numPaginas 224)
	(publicoDirigido Adulto)
	(puntuacion 2)
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

([PrimeraOntologia_AVillaro] of  Autor

	(librosEscritos [PrimeraOntologia_BibliaAndorrana])
	(nacionalidad "Espanol")
	(nombreAutor "Albert Villaro"))

([PrimeraOntologia_BEastonEllis] of  Autor

	(librosEscritos [PrimeraOntologia_AmericanPsycho])
	(nacionalidad "Estadounidense")
	(nombreAutor "Bret Easton Ellis"))

([PrimeraOntologia_BesosPan] of  Libro

	(escritoPor [PrimeraOntologia_AGrandes])
	(fechaPublicacion 2015)
	(generos [PrimeraOntologia_Novela])
	(idioma Espanol)
	(ISBN "9788490661918")
	(numPaginas 336)
	(publicoDirigido Adulto)
	(puntuacion 3)
	(titulo "Los besos en el pan"))

([PrimeraOntologia_BibliaAndorrana] of  Libro

	(bestSeller TRUE)
	(escritoPor [PrimeraOntologia_AVillaro])
	(fechaPublicacion 2015)
	(generos [PrimeraOntologia_Policial])
	(idioma Catalan)
	(numPaginas 304)
	(publicoDirigido Adulto)
	(puntuacion 3)
	(titulo "La Biblia Andorrana"))

([PrimeraOntologia_BKeene] of  Autor

	(librosEscritos
		[PrimeraOntologia_Alzamiento]
		[PrimeraOntologia_MarMuerto])
	(nacionalidad "Estadounidense")
	(nombreAutor "Brian Keene"))

([PrimeraOntologia_BSanderson] of  Autor

	(librosEscritos [PrimeraOntologia_ImperioFinal])
	(nacionalidad "Estadounidense")
	(nombreAutor "Brandon Sanderson"))

([PrimeraOntologia_CadaDia] of  Libro

	(escritoPor [PrimeraOntologia_NDragnic])
	(fechaPublicacion 2012)
	(generos [PrimeraOntologia_Romance])
	(idioma Aleman)
	(numPaginas 288)
	(publicoDirigido Adulto)
	(puntuacion 5)
	(titulo "Cada dia, cada hora"))

([PrimeraOntologia_CanonHolmesiano] of  Libro

	(escritoPor [PrimeraOntologia_ACDoyle])
	(generos [PrimeraOntologia_Suspense])
	(idioma Ingles)
	(publicoDirigido Adulto)
	(puntuacion 4)
	(titulo "Canon Holmesiano"))

([PrimeraOntologia_Carretera] of  Libro

	(escritoPor [PrimeraOntologia_CMcCarthy])
	(fechaPublicacion 2006)
	(generos [PrimeraOntologia_CFApocalipsis])
	(idioma Espanol)
	(numPaginas 216)
	(publicoDirigido Adulto)
	(puntuacion 5)
	(titulo "La carretera"))

([PrimeraOntologia_CasaRiverton] of  Libro

	(escritoPor [PrimeraOntologia_KMorton])
	(generos [PrimeraOntologia_Novela])
	(idioma Espanol)
	(publicoDirigido Adulto)
	(titulo "La casa de Riverton"))

([PrimeraOntologia_Cenital] of  Libro

	(escritoPor [PrimeraOntologia_EBueso])
	(generos [PrimeraOntologia_CFApocalipsis])
	(idioma Espanol)
	(numPaginas 288)
	(publicoDirigido Juvenil)
	(puntuacion 5)
	(titulo "Cenital"))

([PrimeraOntologia_CFApocalipsis] of  Genero

	(generosRelacionados [PrimeraOntologia_CFFuturista])
	(librosRepresentativos
		[PrimeraOntologia_Wool]
		[PrimeraOntologia_Carretera]
		[PrimeraOntologia_JuegosHambre])
	(nombre "Ciencia Ficcion Apocaliptica"))

([PrimeraOntologia_CFFuturista] of  Genero

	(generosRelacionados [PrimeraOntologia_CFApocalipsis])
	(librosRepresentativos
		[PrimeraOntologia_JuegoEnder]
		[PrimeraOntologia_Neuromante])
	(nombre "Ciencia Ficcion Futurista"))

([PrimeraOntologia_CMcCarthy] of  Autor

	(librosEscritos [PrimeraOntologia_Carretera])
	(nacionalidad "Estadounidense")
	(nombreAutor "Cormac McCarthy"))

([PrimeraOntologia_CrimenesCalleMorgue] of  Libro

	(escritoPor [PrimeraOntologia_EAPoe])
	(generos [PrimeraOntologia_Policial])
	(idioma Espanol)
	(titulo "Los crímenes de la calle Morgue"))

([PrimeraOntologia_CryingFairy] of  Libro

	(escritoPor [PrimeraOntologia_MTorchwood])
	(fechaPublicacion 2006)
	(generos [PrimeraOntologia_Aventuras])
	(idioma Ingles)
	(numPaginas 204)
	(publicoDirigido Infantil)
	(puntuacion 1)
	(titulo "The Crying Fairy"))

([PrimeraOntologia_CyborgWife] of  Libro

	(bestSeller TRUE)
	(escritoPor
		[PrimeraOntologia_Tardotram]
		[PrimeraOntologia_Etirekor])
	(generos [PrimeraOntologia_CFFuturista])
	(idioma Ingles)
	(publicoDirigido Adulto)
	(titulo "The cyborg's wife"))

([PrimeraOntologia_DHammett] of  Autor

	(librosEscritos [PrimeraOntologia_HalconMaltes])
	(nacionalidad "Estadounidense")
	(nombreAutor "Dashiell Hammett"))

([PrimeraOntologia_DHLawrence] of  Autor

	(librosEscritos [PrimeraOntologia_AmanteChatterley])
	(nacionalidad "Ingles")
	(nombreAutor "David Herbert Lawrence"))

([PrimeraOntologia_EAPoe] of  Autor

	(librosEscritos
		[PrimeraOntologia_CrimenesCalleMorgue]
		[PrimeraOntologia_GatoNegro])
	(nacionalidad "Estadounidense")
	(nombreAutor "Edgar Allan Poe"))

([PrimeraOntologia_EBueso] of  Autor

	(librosEscritos [PrimeraOntologia_Cenital])
	(nacionalidad "Espanol")
	(nombreAutor "Emilio Bueso"))

([PrimeraOntologia_Einsamkeit] of  Libro

	(bestSeller TRUE)
	(escritoPor [PrimeraOntologia_Elbrecht])
	(fechaPublicacion 2014)
	(generos [PrimeraOntologia_Novela])
	(idioma Aleman)
	(numPaginas 570)
	(publicoDirigido Adulto)
	(puntuacion 5)
	(titulo "Die Einsamkeit"))

([PrimeraOntologia_Elbrecht] of  Autor

	(edad 25)
	(estudios universidad)
	(librosEscritos [PrimeraOntologia_Einsamkeit])
	(nacionalidad "Alemania")
	(nombreAutor "Elbrecht Karel"))

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
	(nacionalidad "Sealandes")
	(nombreAutor "Etirekor"))

([PrimeraOntologia_FantasiaMagia] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_Magicians]
		[PrimeraOntologia_ImperioFinal]
		[PrimeraOntologia_GoldenCompass])
	(nombre "Fantasia Magica"))

([PrimeraOntologia_FantasiaMedieval] of  Genero

	(librosRepresentativos [PrimeraOntologia_TormentaEspadas])
	(nombre "Fantasia Medieval"))

([PrimeraOntologia_FantasiaSuperheroes] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_MundoDioses]
		[PrimeraOntologia_Steelheart])
	(nombre "Fantasia Superheroica"))

([PrimeraOntologia_FinEternidad] of  Libro

	(escritoPor [PrimeraOntologia_IAsimov])
	(generos [PrimeraOntologia_CFFuturista])
	(titulo "El fin de la eternidad"))

([PrimeraOntologia_Francamente] of  Libro

	(escritoPor [PrimeraOntologia_RFord])
	(generos [PrimeraOntologia_Novela])
	(idioma Espanol)
	(ISBN "9788433979384")
	(numPaginas 232)
	(titulo "Francamente, Frank"))

([PrimeraOntologia_Fundacion] of  Libro

	(escritoPor [PrimeraOntologia_IAsimov])
	(fechaPublicacion 1951)
	(generos [PrimeraOntologia_CFFuturista])
	(idioma Espanol)
	(numPaginas 255)
	(publicoDirigido Adulto)
	(puntuacion 5)
	(titulo "Fundacion"))

([PrimeraOntologia_GatoNegro] of  Libro

	(escritoPor [PrimeraOntologia_EAPoe])
	(generos [PrimeraOntologia_Horror])
	(idioma Espanol)
	(publicoDirigido Adulto)
	(titulo "El gato negro"))

([PrimeraOntologia_GBataille] of  Autor

	(librosEscritos [PrimeraOntologia_HistoriaOjo])
	(nacionalidad "Frances")
	(nombreAutor "Georges Bataille"))

([PrimeraOntologia_GoldenCompass] of  Libro

	(escritoPor [PrimeraOntologia_PPullman])
	(fechaPublicacion 1995)
	(generos [PrimeraOntologia_FantasiaMagia])
	(idioma Ingles)
	(numPaginas 399)
	(publicoDirigido Juvenil)
	(puntuacion 4)
	(titulo "The Golden Compass"))

([PrimeraOntologia_GRRMartin] of  Autor

	(librosEscritos [PrimeraOntologia_ImperioFinal])
	(nacionalidad "Estadounidense")
	(nombreAutor "George R. R. Martin"))

([PrimeraOntologia_HalconMaltes] of  Libro

	(escritoPor [PrimeraOntologia_DHammett])
	(generos [PrimeraOntologia_Suspense])
	(idioma Espanol)
	(numPaginas 0)
	(titulo "El halcon maltes"))

([PrimeraOntologia_HHowey] of  Autor

	(librosEscritos [PrimeraOntologia_Wool])
	(nacionalidad "Estadounidense")
	(nombreAutor "Hugh Howey"))

([PrimeraOntologia_HistoriaOjo] of  Libro

	(escritoPor [PrimeraOntologia_GBataille])
	(generos [PrimeraOntologia_Erotica])
	(idioma Espanol)
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

	(librosEscritos
		[PrimeraOntologia_FinEternidad]
		[PrimeraOntologia_IRobot]
		[PrimeraOntologia_Fundacion])
	(nacionalidad "Ruso-estadounidense")
	(nombreAutor "Isaac Asimov"))

([PrimeraOntologia_ImperioFinal] of  Libro

	(escritoPor [PrimeraOntologia_BSanderson])
	(generos [PrimeraOntologia_CFFuturista])
	(idioma Espanol)
	(titulo "El Imperio Final"))

([PrimeraOntologia_IRobot] of  Libro

	(escritoPor [PrimeraOntologia_IAsimov])
	(fechaPublicacion 1950)
	(generos [PrimeraOntologia_CFFuturista])
	(idioma Ingles)
	(numPaginas 250)
	(publicoDirigido Adulto)
	(puntuacion 3)
	(titulo "I, Robot"))

([PrimeraOntologia_IslaMisteriosa] of  Libro

	(escritoPor [PrimeraOntologia_JVerne])
	(generos [PrimeraOntologia_Aventuras])
	(titulo "La isla misteriosa"))

([PrimeraOntologia_Ivanhoe] of  Libro

	(escritoPor [PrimeraOntologia_WScott])
	(fechaPublicacion 1819)
	(generos [PrimeraOntologia_Aventuras])
	(idioma Ingles)
	(numPaginas 346)
	(titulo "Ivanhoe"))

([PrimeraOntologia_JardinHechizos] of  Libro

	(escritoPor [PrimeraOntologia_SAAllen])
	(generos [PrimeraOntologia_Romance])
	(idioma Espanol)
	(publicoDirigido Adulto)
	(titulo "El jardín de los hechizos"))

([PrimeraOntologia_JFBardin] of  Autor

	(librosEscritos [PrimeraOntologia_SalirInfierno])
	(nacionalidad "Estadounidense")
	(nombreAutor "John Franklin Bardin"))

([PrimeraOntologia_JMRamiro] of  Autor

	(librosEscritos [PrimeraOntologia_AntologiaZ])
	(nacionalidad "Espanol")
	(nombreAutor "Jose Martin Ramiro"))

([PrimeraOntologia_JRBiedma] of  Autor

	(librosEscritos [PrimeraOntologia_Antirresurreccion])
	(nacionalidad "Espanol")
	(nombreAutor "Juan Ramon Biedma"))

([PrimeraOntologia_JRRTolkien] of  Autor

	(librosEscritos [PrimeraOntologia_Hobbit])
	(nacionalidad "Ingles")
	(nombreAutor "J.R.R. Tolkien"))

([PrimeraOntologia_JuegoEnder] of  Libro

	(escritoPor [PrimeraOntologia_OSCard])
	(fechaPublicacion 1985)
	(generos [PrimeraOntologia_CFFuturista])
	(idioma Espanol)
	(numPaginas 368)
	(publicoDirigido Juvenil)
	(puntuacion 4)
	(titulo "El juego de Ender"))

([PrimeraOntologia_JuegosHambre] of  Libro

	(bestSeller TRUE)
	(escritoPor [PrimeraOntologia_SCollins])
	(fechaPublicacion 2009)
	(generos [PrimeraOntologia_CFApocalipsis])
	(idioma Espanol)
	(numPaginas 400)
	(publicoDirigido Juvenil)
	(puntuacion 4)
	(titulo "Los juegos del hambre"))

([PrimeraOntologia_JVerne] of  Autor

	(librosEscritos
		[PrimeraOntologia_MiguelStrogoff]
		[PrimeraOntologia_IslaMisteriosa])
	(nacionalidad "Frances")
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

([PrimeraOntologia_Larelijar] of  Autor

	(nombreAutor "Larerijar"))

([PrimeraOntologia_LGrossman] of  Autor

	(librosEscritos [PrimeraOntologia_Magicians])
	(nombreAutor "Lev Grossman"))

([PrimeraOntologia_Loikath] of  Autor

	(nombreAutor "Loikath Welter"))

([PrimeraOntologia_Lolita] of  Libro

	(escritoPor [PrimeraOntologia_VNabokov])
	(generos [PrimeraOntologia_Erotica])
	(idioma Espanol)
	(publicoDirigido Adulto)
	(titulo "Lolita"))

([PrimeraOntologia_LookingInfinity] of  Libro

	(escritoPor [PrimeraOntologia_WGenadi])
	(generos [PrimeraOntologia_CFFuturista])
	(idioma Ingles)
	(numPaginas 300)
	(publicoDirigido Juvenil)
	(titulo "Looking at infinity"))

([PrimeraOntologia_Magicians] of  Libro

	(escritoPor [PrimeraOntologia_LGrossman])
	(fechaPublicacion 2009)
	(generos [PrimeraOntologia_FantasiaSuperheroes])
	(idioma Ingles)
	(numPaginas 402)
	(publicoDirigido Juvenil)
	(puntuacion 4)
	(titulo "The magicians"))

([PrimeraOntologia_MarMuerto] of  Libro

	(bestSeller FALSE)
	(escritoPor [PrimeraOntologia_BKeene])
	(fechaPublicacion 2010)
	(generos [PrimeraOntologia_Zombis])
	(idioma Espanol)
	(numPaginas 0)
	(puntuacion 3)
	(titulo "Mar muerto"))

([PrimeraOntologia_MAsensi] of  Autor

	(librosEscritos [PrimeraOntologia_RegresoCaton])
	(nombreAutor "Matilde Asensi"))

([PrimeraOntologia_MiguelStrogoff] of  Libro

	(escritoPor [PrimeraOntologia_JVerne])
	(generos [PrimeraOntologia_Aventuras])
	(idioma Espanol)
	(publicoDirigido Adulto)
	(titulo "Miguel Strogoff"))

([PrimeraOntologia_MTorchwood] of  Autor

	(librosEscritos [PrimeraOntologia_CryingFairy])
	(nombreAutor "Mijan Torchwood"))

([PrimeraOntologia_MundoDioses] of  Libro

	(escritoPor [PrimeraOntologia_RMarinTrenchera])
	(fechaPublicacion 1997)
	(generos [PrimeraOntologia_FantasiaSuperheroes])
	(idioma Espanol)
	(numPaginas 353)
	(publicoDirigido Juvenil)
	(puntuacion 4)
	(titulo "Mundo de dioses"))

([PrimeraOntologia_NDragnic] of  Autor

	(librosEscritos [PrimeraOntologia_CadaDia])
	(nombreAutor "Nataša Dragnic"))

([PrimeraOntologia_Neuromante] of  Libro

	(escritoPor [PrimeraOntologia_WGibson])
	(fechaPublicacion 1984)
	(generos [PrimeraOntologia_CFFuturista])
	(idioma Espanol)
	(numPaginas 320)
	(publicoDirigido Juvenil)
	(puntuacion 5)
	(titulo "Neuromante"))

([PrimeraOntologia_NJerouax] of  Autor

	(librosEscritos [PrimeraOntologia_SoulWinter])
	(nombreAutor "Nalien Jerouax"))

([PrimeraOntologia_Novela] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_BesosPan]
		[PrimeraOntologia_RegresoCaton]
		[PrimeraOntologia_Francamente])
	(nombre "Novela"))

([PrimeraOntologia_OSCard] of  Autor

	(librosEscritos [PrimeraOntologia_JuegoEnder])
	(nombreAutor "Orson Scott Card"))

([PrimeraOntologia_PercyJackson] of  Libro

	(bestSeller TRUE)
	(escritoPor [PrimeraOntologia_RRiordan])
	(generos [PrimeraOntologia_CFFuturista])
	(idioma Espanol)
	(ISBN "9788498382068")
	(publicoDirigido Juvenil)
	(titulo "LA MALDICION DEL TITAN. Percy Jackson y los dioses del Olimpo III"))

([PrimeraOntologia_PiedraLunar] of  Libro

	(escritoPor [PrimeraOntologia_WilkieCollins])
	(generos [PrimeraOntologia_Policial])
	(idioma Espanol)
	(titulo "La piedra lunar"))

([PrimeraOntologia_Policial] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_PiedraLunar]
		[PrimeraOntologia_SabuesoBaskerville]
		[PrimeraOntologia_CrimenesCalleMorgue])
	(nombre "Policial"))

([PrimeraOntologia_PPullman] of  Autor

	(librosEscritos [PrimeraOntologia_GoldenCompass])
	(nombreAutor "Phillip Pullman"))

([PrimeraOntologia_PresuntoInocente] of  Libro

	(escritoPor [PrimeraOntologia_STurow])
	(generos [PrimeraOntologia_Suspense])
	(titulo "Presunto inocente"))

([PrimeraOntologia_RegresoCaton] of  Libro

	(escritoPor [PrimeraOntologia_MAsensi])
	(generos [PrimeraOntologia_Novela])
	(idioma Espanol)
	(ISBN "9788408145820")
	(numPaginas 610)
	(titulo "El regreso del Caton"))

([PrimeraOntologia_RFord] of  Autor

	(librosEscritos [PrimeraOntologia_Francamente])
	(nombreAutor "Richard Ford"))

([PrimeraOntologia_RMarinTrenchera] of  Autor

	(librosEscritos [PrimeraOntologia_MundoDioses])
	(nombreAutor "Rafael Marin Trenchera"))

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

([PrimeraOntologia_SCollins] of  Autor

	(librosEscritos [PrimeraOntologia_JuegosHambre])
	(nombreAutor "Suzanne Collins"))

([PrimeraOntologia_SevardoAguilar] of  Autor

	(librosEscritos [PrimeraOntologia_SoulDoor])
	(nombreAutor "Sevardo Aguilar"))

([PrimeraOntologia_Slaves] of  Libro

	(bestSeller TRUE)
	(escritoPor [PrimeraOntologia_WGenadi])
	(generos [PrimeraOntologia_Erotica])
	(idioma Ingles)
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
	(idioma Ingles)
	(titulo "The Soul of the Door"))

([PrimeraOntologia_SoulWinter] of  Libro

	(escritoPor [PrimeraOntologia_NJerouax])
	(generos
		[PrimeraOntologia_Aventuras]
		[PrimeraOntologia_Suspense])
	(idioma Ingles)
	(titulo "The Souls's Winter"))

([PrimeraOntologia_Steelheart] of  Libro

	(escritoPor [PrimeraOntologia_BSanderson])
	(fechaPublicacion 2013)
	(generos [PrimeraOntologia_FantasiaSuperheroes])
	(idioma Ingles)
	(numPaginas 386)
	(publicoDirigido Juvenil)
	(puntuacion 5)
	(titulo "Steelheart"))

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
	(generos [PrimeraOntologia_FantasiaMedieval])
	(idioma Espanol)
	(ISBN "9788496208391")
	(titulo "Tormenta de espadas"))

([PrimeraOntologia_VacantMale] of  Libro

	(bestSeller TRUE)
	(escritoPor [PrimeraOntologia_Tardotram])
	(generos [PrimeraOntologia_CFFuturista])
	(idioma Ingles)
	(publicoDirigido Juvenil)
	(titulo "The Vacant Male"))

([PrimeraOntologia_VNabokov] of  Autor

	(librosEscritos [PrimeraOntologia_Lolita])
	(nacionalidad "Ruso")
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

([PrimeraOntologia_WGibson] of  Autor

	(librosEscritos [PrimeraOntologia_Neuromante])
	(nacionalidad "Estadounidense-canadiense")
	(nombreAutor "William Gibson"))

([PrimeraOntologia_Wicemar] of  Autor

	(nombreAutor "Wicemar Darunt"))

([PrimeraOntologia_WilkieCollins] of  Autor

	(librosEscritos [PrimeraOntologia_PiedraLunar])
	(nombreAutor "Wilkie Collins"))

([PrimeraOntologia_Wool] of  Libro

	(escritoPor [PrimeraOntologia_HHowey])
	(fechaPublicacion 2011)
	(idioma Ingles)
	(numPaginas 580)
	(publicoDirigido Juvenil)
	(puntuacion 4)
	(titulo "Wool"))

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
	(format t "Fecha: %d" ?self:fechaPublicacion)
	(printout t crlf)
	(printout t "Autor/es: ")
	(progn$ (?curr-aut (send ?self get-escritoPor))
		(format t "%s " (send ?curr-aut get-nombreAutor))
	)
	(printout t crlf)
)

(defmessage-handler Recomendacion imprimir (?max)
	(printout t "-----------------------------------" crlf)
	(printout t (send ?self:libro imprimir))
	(printout t crlf)
	;Max puntuacion = 550
	(format t "Nivel de recomendacion: %d %% %n" (/ (* ?self:puntuacion 100) ?max))
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
		(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi) 
		(bind ?respuesta (read)) 
	) 
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta booleana
(deffunction pregunta-booleana (?pregunta)
	(format t "%s (s/n) " ?pregunta)
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
	(loop-for-count (?i 1 (length$ ?res)) do 
		(if (not(member (nth$ ?i ?res) ?valores_posibles)) then
			(printout t "El valor " (nth$ ?i ?res) " no es un valido" crlf)
			(bind ?valor (pregunta-numerica "Introduce un nuevo valor " 1 (- (length$ ?valores_posibles) 1)))
			(bind $?res (delete$ ?res ?i ?i))
			(bind $?res (insert$ ?res ?i ?valor))
		)
	)
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
	(bind ?i 1)
	(bind ?b FALSE)
	(while (and (not ?b) (<= ?i (length$ ?list)))
		(if (eq (str-cat ?gen) (send (nth$ ?i ?list) get-nombre)) then
			(bind ?b TRUE)
		else (bind ?i (+ ?i 1))
		)
	)
	?b
)

(deffunction author_in_book ""
	(?aut ?book)
	(bind ?list (send ?book get-escritoPor))
	(bind ?i 1)
	(bind ?b FALSE)
	(while (and (not ?b) (<= ?i (length$ ?list)))
		(if (eq (str-cat ?aut) (send (nth$ ?i ?list) get-nombreAutor)) then
			(bind ?b TRUE)
		else (bind ?i (+ ?i 1))
		)
	)
	?b
)

(deffunction pages_in_book ""
        (?frec ?book)
        (bind ?pagsLibro (send ?book get-numPaginas))
        (if (and (eq ?frec poca) (< ?pagsLibro 199)) then TRUE else FALSE)
        (if (and (eq ?frec media) (< ?pagsLibro 399)) then TRUE else FALSE)
        (if (eq ?frec mucha) then TRUE)
)

(deffunction directed_public ""
        (?est ?book)
        (bind ?publicoDirigido (send ?book get-publicoDirigido))
        (if (and (eq ?est primaria) (eq ?publicoDirigido infantil)) then TRUE else FALSE)
        (if (and (eq ?est secundaria) (or (eq ?publicoDirigido infantil) (eq ?publicoDirigido juvenil))) then TRUE else FALSE)
        (if (and (eq ?est bachillerato) (or (eq ?publicoDirigido juvenil) (eq ?publicoDirigido adulto))) then TRUE else FALSE)
        (if (and (eq ?est universidad) (or (eq ?publicoDirigido juvenil) (eq ?publicoDirigido adulto))) then TRUE else FALSE)
        (if (and (eq ?est formacionProfesional) (or (eq ?publicoDirigido juvenil) (eq ?publicoDirigido adulto))) then TRUE else FALSE)
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
	(if (any-instancep ((?p Lector)) (eq (send ?p get-DNI) (str-cat ?dni)) )
	then 
	(bind ?d (str-cat ?dni))
	(assert (usuario-lector ?d))
	else 
	(bind ?lector (make-instance lectorN of Lector))
	(send ?lector put-DNI ?dni)
	(assert(nuevo-lector))
	)
	(assert(Maximo 625))
)

;;; Pregunta para conocer la edad
(defrule pregunta-edad ""
	(nuevo-lector)
	(not (perfil ?))
	=>
	(bind ?ed (pregunta-numerica "Que edad tienes?" 0 150))
	;(send [lectorN] put-edad ?ed)
	(if (< ?ed 12) then (assert (perfil Infantil)))
	(if (and (>= ?ed 12)(<= ?ed 24)) then (assert (perfil Juvenil)))
	(if (> ?ed 24) then (assert(perfil Adulto)))
	(if (< ?ed 18) then (assert (menor_de_edad)) )
)

(defrule pregunta-estudios "Pregunta para saber los estudios"
	(nuevo-lector)
	(not (Estudios $))
	=>
	(printout t "Cual es tu maximo nivel de estudios?" crlf)
	(bind ?lista (slot-allowed-values Lector estudios))
	(loop-for-count (?i 1 (length$ ?lista)) do
		(printout t ?i ". " (nth$ ?i ?lista) crlf)
	)
	(bind ?resp (pregunta-numerica "Escribe el identificador de tu estudio maximo: " 1 (length$ ?lista)))
	(assert (Estudios (nth$ ?resp ?lista)))
)

(defrule pregunta-nacionalidad "Pregunta para saber la nacionalidad"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-general "Cual es tu nacionalidad? "))
	(assert (Nacionalidad ?resp))
)

(defrule pregunta-idioma "Pregunta para saber el idioma preferido"
	(nuevo-lector)
	?m<-(Maximo ?max)
	(not (Idioma ?))
	=>
	(printout t "Escoje tus idiomas favoritos para los libros: " crlf)
	(printout t "0. Indefinido" crlf)
	(bind ?lista (slot-allowed-values Libro idioma))
	(bind $?valores_permitidos (create$ 0))
	(loop-for-count (?i 1 (length$ ?lista)) do
		(printout t ?i ". " (nth$ ?i ?lista) crlf)
		(bind $?valores_permitidos (insert$ ?valores_permitidos (+ (length$ ?valores_permitidos) 1) ?i))
	)
	(bind ?resp (pregunta-lista "Escribe los identificadores separados por espacios: " $?valores_permitidos))
	(if (not (member 0 ?resp))
		then
		(progn$ (?it ?resp)
			(assert (Idioma (nth$ ?it ?lista)))
		)
		else 
			(retract ?m)
			(assert (Maximo (- ?max 100)))
			(assert (Idioma indef))
	)
)

(defrule pregunta-momento "Pregunta para momento de lectura del día"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-numerica "Mas o menos a que hora comienzas a leer? " 0 24))
	(if (and (>= ?resp 0) (<= ?resp 6)) then (assert (Momento madrugada)) 
	else (if (and (> ?resp 6) (<= ?resp 12)) then (assert (Momento mañana))
	else (if (and (> ?resp 12) (<= ?resp 18)) then (assert (Momento tarde)) 
	else (assert (Momento noche)))))
)

(defrule pregunta-frecuencia "Pregunta para frecuencia de lectura"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-numerica "En un mes cuantos dias sueles leer? " 0 30))
	(if (and (>= ?resp 0) (<= ?resp 12)) then (assert (Frecuencia poca))
	else (if (and (> ?resp 12) (<= ?resp 18)) then (assert (Frecuencia normal))  	
	else (assert (Frecuencia muchisima))))
)

(defrule pregunta-lugar "Pregunta para saber el lugar de lectura"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-general "En que sitio sueles leer normalmente? Ni -> No importa "))
	(if (eq (str-compare ?resp "Ni") 0) then (assert (Lugar indef))
	else (assert (Lugar ?resp)))
)

(defrule pregunta-bestseller ""
	(nuevo-lector)
	?m<- (Maximo ?max)
	(not (bestseller ?))
	=>
	(bind ?resp (pregunta-booleana "Te interesan los libros mas vendidos?"))
	(assert (bestseller ?resp))
	(if (eq ?resp FALSE) then 
		(retract ?m)
		(assert (Maximo(- ?max 50)))
	)
)

(defrule pregunta-clasicos ""
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-booleana "Te gustan los libros clasicos (hasta 1960)?"))
	(assert (Clasicos ?resp))
)

(defrule pregunta-criticos "Pregunta para saber si se valora la puntuación de un libro"
	(nuevo-lector)
	?m<- (Maximo ?max)
	(not (Critica ?))
	=>
	(bind ?resp (pregunta-booleana "Le das importancia a las criticas de un libro?"))
	(if (eq ?resp FALSE) then 
		(retract ?m)
		(assert (Maximo(- ?max 100)))
	)
	(assert (Critica ?resp))
)

(defrule pregunta-generos "Pregunta para saber generos preferidos"
	(nuevo-lector)
	?m<- (Maximo ?max)
	(not (pregunta-generos))
	=>
	(printout t "Cuales de los siguientes generos te gustan?" crlf)
	(bind ?lista (find-all-instances ((?p Genero)) TRUE))
	(bind $?valores_permitidos (create$ 0))
	(loop-for-count (?i 1 (length$ ?lista)) do
		(printout t ?i ". " (send (nth$ ?i ?lista) get-nombre) crlf)
		(bind $?valores_permitidos (insert$ ?valores_permitidos (+ (length$ ?valores_permitidos) 1) ?i))
	)
	(bind ?resp (pregunta-lista "Escribe los identificadores separados por espacios: " $?valores_permitidos))
	(if (not (member 0 ?resp))
		then
		(progn$ (?it ?resp)
			(assert (genero (send (nth$ ?it ?lista) get-nombre)))
			(bind $?alter (send (nth$ ?it ?lista) get-generosRelacionados))
			(progn$ (?i $?alter)
				(assert (Alter (send ?i get-nombre)))
			)
		)
		else
			(retract ?m)
			(assert (Maximo (- ?max 125)))
	)
	(assert (pregunta-generos))
)

(defrule pregunta-libros "Pregunta para saber los libros que le gustan"
	(pregunta-generos)
	(genero ?gen)
	?g <-(object (is-a Genero) (nombre ?gen) (librosRepresentativos $?lista))
	(test (> (length$ ?lista) 0))
	=>
	(printout t "Obteniendo lista del genero " ?gen crlf)
	(printout t "De los siguientes libros, cuales te has leido?" crlf)
	(bind $?valores_permitidos (create$ 0))
	(loop-for-count (?i 1 (length$ ?lista)) do
		(printout t ?i ". " (send (nth$ ?i ?lista) get-titulo) crlf)
		(bind $?valores_permitidos (insert$ ?valores_permitidos (+ (length$ ?valores_permitidos) 1) ?i))
	)
	(bind ?resp (pregunta-lista "Escribe los identificadores separados por espacios: 0->Ninguno " $?valores_permitidos))
	(if (not (member 0 ?resp))
		then
		(progn$ (?it ?resp)
			(assert (LibroLeido (send (nth$ ?it ?lista) get-titulo)))
			(bind $?list_aut (send (nth$ ?it ?lista) get-escritoPor))
			(progn$ (?it $?list_aut)
				(bind ?aname (send ?it get-nombreAutor))
				(assert (Autor ?aname))
			)
		)
	)
)

(defrule eliminar-max-libros ""
	(not (LibroLeido ?))
	?m<-(Maximo ?max)
	(not (elim))
	=>
	(retract ?m)
	(assert (Maximo (- ?max 100)))
	(assert (elim))
)

(defrule pregunta-modas ""
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-booleana "Quieres ver los libros de generos que estan de moda?"))
	(assert (modas ?resp))
	(assert(fin-preguntas))
	
)


(defrule suposiciones
	(usuario-lector ?dni)
	?lect <- (object (is-a Lector)
		(DNI ?dni)
		(edad ?edad)
		(frecuencia ?freq)
		(autoresFavoritos $?list-aut)
		(generosPreferidos $?list-gen)
		(idiomasPreferidos $?list-idi)
		(bestseller ?bs)
		(clasicos ?cla)
		(nacionalidad ?nac)
		(critico ?cri)
	)
	=>
	(bind ?max 625)
	(if (< ?edad 12) then (assert (perfil Infantil)))
	(if (and (>= ?edad 12)(<= ?edad 24)) then (assert (perfil Juvenil)))
	(if (> ?edad 24) then (assert(perfil Adulto)))
	
	(if (< ?edad 18) then (assert (menor_de_edad)))
	
	(if (eq ?freq poca) then (assert (Frecuencia poca))
	else (if (eq ?freq media) then (assert (Frecuencia normal))
	else (assert (Frecuencia muchisima)))
	)
	
	(progn$ (?it $?list-aut)
		(assert (Autor (send ?it get-nombreAutor)))
	)
	(if (eq (length$ ?list-aut) 0) then (bind ?max (- ?max 50)))
	
	(progn$ (?it $?list-gen)
		(assert (genero (send ?it get-nombre)))
		(progn$ (?it2 (send ?it get-generosRelacionados))
			(assert (Alter (send ?it2 get-nombre)))
		)
	)
	
	(if (eq (length$ ?list-gen) 0) then (bind ?max (- ?max 125)))
	
	(progn$ (?it $?list-idi)
		(assert (Idioma ?it ))
	)
	(if (eq (length$ ?list-idi) 0) then (bind ?max (- ?max 100)))
	
	(assert (bestseller ?bs))
	(if (eq ?bs FALSE) then (bind ?max (- ?max 50)))
	(assert (Clasicos ?cla))
	(assert (Nacionalidad ?nac))
	(assert (Critica ?cri))
	(if (eq ?cri FALSE) then (bind ?max (- ?max 100)))
	(assert (Maximo ?max))
	(assert(fin-preguntas))
)

(defrule focusFiltrado
	(fin-preguntas)
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
	(printout t "Eliminado por ser inadecuado para menores de edad: " (instance-name ?recm) crlf)
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

(defrule descartarLibrosLeidos ""
	(libros-obtenidos)
	(LibroLeido ?rbook)
	?recm <- (object (is-a Recomendacion) (libro ?book))
	(test (eq ?rbook (send ?book get-titulo)))
	=>
	(printout t "Eliminado por ser haber sido leido por el usuario: " (instance-name ?book) crlf)
	(send ?recm delete)
)

;;;**********
;;;Valoración
;;;**********

(defrule plusIdioma "Valorar más si el libro está en un idioma preferido"
	(Idioma ?idi)
	(test (not (eq ?idi indef)))
	?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
	(test (eq (send ?book get-idioma) ?idi))
	(not (valorIdioma ?recm))
	=>
	(printout t "El libro " (instance-name ?recm) " esta escrito en " ?idi crlf)
	(send ?recm put-puntuacion (+ ?pt 100))
	(assert (valorIdioma ?recm))
)

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

(defrule plusAlter
	(Alter ?alt)
	?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
	(test (genre_in_book ?alt ?book))
	(not (valorAlter ?recm))
	=>
	(printout t "Pertenece a generos similares a los elegidos: " (instance-name ?recm) crlf)
	(send ?recm put-puntuacion (+ ?pt 25))
	(assert (valorAlter ?recm))
)

(defrule plusPublico
	(perfil ?perf)
	?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
	(test (eq ?perf (send ?book get-publicoDirigido)))
	(not (valorPublico ?recm))
	=>
	(printout t "Pertenece al perfil del lector (" ?perf ") : " (instance-name ?recm) crlf)
	(send ?recm put-puntuacion (+ ?pt 25))
	(assert (valorPublico ?recm))
)

(defrule plusAutor
	(Autor ?autr)
	?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
	(test (author_in_book ?autr ?book))
	(not (valorAutor ?recm))
	=>
	(printout t "El autor (" ?autr ") pertenece al conjunto de autores favoritos del lector : " (instance-name ?recm) crlf)
	(send ?recm put-puntuacion (+ ?pt 50))
	(assert (valorAutor ?recm))
)

(defrule plusBestSeller
        (bestseller TRUE)
        ?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
        (test (eq TRUE (send ?book get-bestSeller)))
        (not (valorBS ?recm))
        =>
        (printout t "El lector prefiere el conjunto de libros Best Seller : " (instance-name ?recm) crlf)
        (send ?recm put-puntuacion (+ ?pt 50))
        (assert (valorBS ?recm))
)

(defrule plusFreqNumPag
	(Frecuencia ?frec)
	?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
	(test (pages_in_book ?frec ?book))
	(not (valorPaginas ?recm))
	=>
	(printout t "El lector con frecuencia (" ?frec ") tiene preferencia por el conjunto de libros : " (instance-name ?recm) crlf)
	(send ?recm put-puntuacion (+ ?pt 50))
	(assert (valorPaginas ?recm))
)

(defrule plusClasicos
	(Clasicos TRUE)
	?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
	(test (< (send ?book get-fechaPublicacion) 1960))
	(not (valorClasico ?recm))
	=>
	(printout t "Al lector le gustan los libros clasicos (< 1960) : " (instance-name ?recm) crlf)
	(send ?recm put-puntuacion (+ ?pt 50))
	(assert (valorClasico ?recm))
)

(defrule plusModernos
	(Clasicos FALSE)
	?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
	(test (>= (send ?book get-fechaPublicacion) 1960))
	(not (valorModerno ?recm))
	=>
	(printout t "Al lector le gustan los libros modernos (< 1960) : " (instance-name ?recm) crlf)
	(send ?recm put-puntuacion (+ ?pt 50))
	(assert (valorModerno ?recm))
)

(defrule plusEstudiosLector
        (Estudios ?est)
        ?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
        (test (directed_public ?est ?book))
        (not (valorEstudios ?recm))
        =>
        (printout t "El lector con estudios (" ?est ") tiene preferencia por el conjunto de libros : " (instance-name ?recm) crlf)
        (send ?recm put-puntuacion (+ ?pt 25))
        (assert (valorEstudios ?recm))
)

(defrule plusLectorAutorMismaNacionalidad
        (Nacionalidad ?nac)
        ?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
		?autor<-(object (is-a Autor) (nombreAutor ?nombre) (nacionalidad ?nac))
		(test (author_in_book ?nombre ?book))
        (not (valorNac ?recm))
        =>
        (printout t "El lector con nacionalidad " ?nac " tiene preferencia por el conjunto de libros : " (instance-name ?recm) crlf)
        (send ?recm put-puntuacion (+ ?pt 50))
        (assert (valorNac ?recm))
)

(defrule plusCritico
	(Critica TRUE)
	?recm <- (object (is-a Recomendacion) (libro ?book) (puntuacion ?pt))
	(not (valorCritico ?recm))
	=>
	(bind ?star (send ?book get-puntuacion))
	(printout t "El libro " (send ?book get-titulo) " tiene una puntuacion de " ?star "." crlf)
	(send ?recm put-puntuacion (+ ?pt (* ?star 20)))
	(assert (valorCritico ?recm))
)

(defrule focusPresentacion
	(declare (salience -10))
	=>
	(focus presentacion)
)

;;;************
;;;Presentación
;;;************

(defmodule presentacion
	(import MAIN ?ALL)
	(export ?ALL)
)

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
	(Maximo ?max)
	=>
	(progn$ (?it ?lista)
		(send ?it imprimir ?max)
		(printout t crlf)
	)
)
