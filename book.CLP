
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
	(single-slot edad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ejemplaresVendidos
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
	(single-slot numPaginas
		(type INTEGER)
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
	(multislot generos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot idioma
		(type STRING)
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

([PrimeraOntologia_Class10] of  Genero

	(librosRepresentativos
		[PrimeraOntologia_Class10001]
		[PrimeraOntologia_Class10004])
	(nombre "Erotica"))

([PrimeraOntologia_Class10000] of  Autor

	(librosEscritos [PrimeraOntologia_Class10001])
	(nombreAutor "David H Lawrence"))

([PrimeraOntologia_Class10001] of  Libro

	(escritoPor [PrimeraOntologia_Class10000])
	(fechaPublicacion "1928")
	(generos [PrimeraOntologia_Class10])
	(idioma "Castellano")
	(publicoDirigido Adulto)
	(titulo "El amante de Lady Chatterley"))

([PrimeraOntologia_Class10002] of  Libro

	(escritoPor [PrimeraOntologia_Class10003])
	(fechaPublicacion "1928")
	(generos [PrimeraOntologia_Class10])
	(idioma "Castellano")
	(titulo "Historia de ojo"))

([PrimeraOntologia_Class10003] of  Autor

	(librosEscritos [PrimeraOntologia_Class10002])
	(nombreAutor "Georges Bataille"))

([PrimeraOntologia_Class10004] of  Libro

	(escritoPor [PrimeraOntologia_Class10005])
	(fechaPublicacion "1955")
	(generos [PrimeraOntologia_Class10])
	(idioma "Castellano")
	(publicoDirigido Adulto)
	(titulo "Lolita"))

([PrimeraOntologia_Class10005] of  Autor

	(librosEscritos [PrimeraOntologia_Class10004])
	(nombreAutor "Vladimir Nabokov"))

([PrimeraOntologia_Class10006] of  Libro

	(escritoPor [PrimeraOntologia_Class10007])
	(generos [PrimeraOntologia_Class2])
	(titulo "¡Arde, bruja, arde!"))

([PrimeraOntologia_Class10007] of  Autor

	(librosEscritos [PrimeraOntologia_Class10006])
	(nombreAutor "Abraham Merritt"))

([PrimeraOntologia_Class10008] of  Libro

	(escritoPor [PrimeraOntologia_Class10009])
	(generos [PrimeraOntologia_Class2])
	(titulo "Al salir del infierno"))

([PrimeraOntologia_Class10009] of  Autor

	(librosEscritos [PrimeraOntologia_Class10008])
	(nombreAutor "John Franklin Bardin"))

([PrimeraOntologia_Class10010] of  Libro

	(bestSeller FALSE)
	(escritoPor [PrimeraOntologia_Class10011])
	(fechaPublicacion "1991")
	(generos [PrimeraOntologia_Class2])
	(idioma "Ingles")
	(ISBN "978-0-679-73577-9")
	(numPaginas 400)
	(publicoDirigido Adulto)
	(titulo "American Psycho"))

([PrimeraOntologia_Class10011] of  Autor

	(librosEscritos [PrimeraOntologia_Class10010])
	(nombreAutor "Bret Easton Ellis"))

([PrimeraOntologia_Class10012] of  Libro

	(escritoPor [PrimeraOntologia_Class10013])
	(fechaPublicacion "1876")
	(generos [PrimeraOntologia_Class3])
	(titulo "Miguel Strogoff"))

([PrimeraOntologia_Class10013] of  Autor

	(librosEscritos [PrimeraOntologia_Class10012])
	(nombreAutor "Julio Verne"))

([PrimeraOntologia_Class10014] of  Libro

	(escritoPor [PrimeraOntologia_Class10015])
	(generos [PrimeraOntologia_Class3])
	(titulo "El Hobbit"))

([PrimeraOntologia_Class10015] of  Autor

	(librosEscritos [PrimeraOntologia_Class10014])
	(nombreAutor "J.R.R. Tolkien"))

([PrimeraOntologia_Class10016] of  Libro

	(escritoPor [PrimeraOntologia_Class10017])
	(generos [PrimeraOntologia_Class3])
	(titulo "Ivanhoe"))

([PrimeraOntologia_Class10017] of  Autor

	(librosEscritos [PrimeraOntologia_Class10016])
	(nombreAutor "Walter Scott"))

([PrimeraOntologia_Class10020] of  Libro

	(escritoPor [PrimeraOntologia_Class10021])
	(generos [PrimeraOntologia_Class4])
	(idioma "Castellano")
	(ISBN "9788433979384")
	(numPaginas 232)
	(titulo "Francamente , Frank"))

([PrimeraOntologia_Class10021] of  Autor

	(librosEscritos [PrimeraOntologia_Class10020])
	(nombreAutor "Richard Ford"))

([PrimeraOntologia_Class10022] of  Libro

	(escritoPor [PrimeraOntologia_Class10023])
	(generos [PrimeraOntologia_Class4])
	(idioma "Castellano")
	(ISBN "9788408145820")
	(numPaginas 610)
	(titulo "El regreso del Catón"))

([PrimeraOntologia_Class10023] of  Autor

	(librosEscritos [PrimeraOntologia_Class10022])
	(nombreAutor "Matilde Asensi"))

([PrimeraOntologia_Class10025] of  Libro

	(escritoPor [PrimeraOntologia_Class10026])
	(generos [PrimeraOntologia_Class4])
	(ISBN "9788490661918")
	(titulo "Los besos en el pan"))

([PrimeraOntologia_Class10026] of  Autor

	(librosEscritos [PrimeraOntologia_Class10025])
	(nombreAutor "Almudena Grandes"))

([PrimeraOntologia_Class10027] of  Libro

	(escritoPor [PrimeraOntologia_Class10028])
	(generos [PrimeraOntologia_Class5])
	(idioma "Castellano")
	(titulo "Los crímenes de la calle Morgue"))

([PrimeraOntologia_Class10028] of  Autor

	(librosEscritos [PrimeraOntologia_Class10027])
	(nombreAutor "Edgar Allan Poe"))

([PrimeraOntologia_Class10029] of  Libro

	(escritoPor [PrimeraOntologia_Class10030])
	(generos [PrimeraOntologia_Class5])
	(titulo "La piedra lunar"))

([PrimeraOntologia_Class10030] of  Autor

	(librosEscritos [PrimeraOntologia_Class10029])
	(nombreAutor "Wilkie Collins"))

([PrimeraOntologia_Class10031] of  Libro

	(escritoPor [PrimeraOntologia_Class10032])
	(generos [PrimeraOntologia_Class5])
	(titulo "El sabueso de Baskerville"))

([PrimeraOntologia_Class10032] of  Autor

	(librosEscritos [PrimeraOntologia_Class10031])
	(nombreAutor "Arthur Conan Doyle"))

([PrimeraOntologia_Class10033] of  Libro

	(escritoPor [PrimeraOntologia_Class10034])
	(generos [PrimeraOntologia_Class6])
	(titulo "Cada día, cada hora"))

([PrimeraOntologia_Class10034] of  Autor

	(librosEscritos [PrimeraOntologia_Class10033])
	(nombreAutor "Nataša Dragnic"))

([PrimeraOntologia_Class10035] of  Libro

	(escritoPor [PrimeraOntologia_Class10036])
	(generos [PrimeraOntologia_Class6])
	(titulo "Las horas distantes"))

([PrimeraOntologia_Class10036] of  Autor

	(librosEscritos [PrimeraOntologia_Class10035])
	(nombreAutor "Kate Morton"))

([PrimeraOntologia_Class10037] of  Libro

	(escritoPor [PrimeraOntologia_Class10038])
	(generos [PrimeraOntologia_Class6])
	(titulo "El jardín de los hechizos"))

([PrimeraOntologia_Class10038] of  Autor

	(librosEscritos [PrimeraOntologia_Class10037])
	(nombreAutor "Sarah Addison Allen"))

([PrimeraOntologia_Class10039] of  Libro

	(escritoPor [PrimeraOntologia_Class10040])
	(fechaPublicacion "2006")
	(generos [PrimeraOntologia_Class7])
	(idioma "Castellano")
	(ISBN "9788496208391")
	(titulo "TORMENTA DE ESPADAS"))

([PrimeraOntologia_Class10040] of  Autor

	(librosEscritos [PrimeraOntologia_Class10041])
	(nombreAutor "MARTIN, GEORGE R.R."))

([PrimeraOntologia_Class10041] of  Libro

	(escritoPor [PrimeraOntologia_Class10042])
	(fechaPublicacion "2011")
	(generos [PrimeraOntologia_Class7])
	(idioma "Castellano")
	(titulo "EL IMPERIO FINAL"))

([PrimeraOntologia_Class10042] of  Autor

	(librosEscritos [PrimeraOntologia_Class10041])
	(nombreAutor "SANDERSON, BRANDON"))

([PrimeraOntologia_Class10043] of  Libro

	(bestSeller TRUE)
	(escritoPor [PrimeraOntologia_Class10044])
	(fechaPublicacion "2009")
	(generos [PrimeraOntologia_Class7])
	(idioma "Castellano")
	(ISBN "9788498382068")
	(titulo "LA MALDICIÓN DEL TITÁN. Percy Jackson y los dioses del Olimpo III"))

([PrimeraOntologia_Class10044] of  Autor

	(librosEscritos [PrimeraOntologia_Class10043])
	(nombreAutor "RIORDAN, RICK"))

([PrimeraOntologia_Class10045] of  Libro

	(escritoPor [PrimeraOntologia_Class10046])
	(generos [PrimeraOntologia_Class8])
	(titulo "El Alzamiento"))

([PrimeraOntologia_Class10046] of  Autor

	(librosEscritos [PrimeraOntologia_Class10045])
	(nombreAutor "Brian Keene"))

([PrimeraOntologia_Class10047] of  Libro

	(escritoPor [PrimeraOntologia_Class10048])
	(generos [PrimeraOntologia_Class8])
	(titulo "Antirresurrección"))

([PrimeraOntologia_Class10048] of  Autor

	(librosEscritos [PrimeraOntologia_Class10047])
	(nombreAutor "Juan Ramón Biedma"))

([PrimeraOntologia_Class10049] of  Libro

	(bestSeller TRUE)
	(escritoPor [PrimeraOntologia_Class10050])
	(generos [PrimeraOntologia_Class8])
	(titulo "Antología Z"))

([PrimeraOntologia_Class10050] of  Autor

	(librosEscritos [PrimeraOntologia_Class10049])
	(nombreAutor "VV.AA."))

([PrimeraOntologia_Class10051] of  Libro

	(escritoPor [PrimeraOntologia_Class10052])
	(generos [PrimeraOntologia_Class9])
	(titulo "Canon Holmesiano"))

([PrimeraOntologia_Class10052] of  Autor

	(librosEscritos [PrimeraOntologia_Class10051])
	(nombreAutor "Arthur Conan Doyle"))

([PrimeraOntologia_Class10054] of  Libro

	(escritoPor [PrimeraOntologia_Class10055])
	(generos [PrimeraOntologia_Class9])
	(titulo "El halcón maltés"))

([PrimeraOntologia_Class10055] of  Autor

	(librosEscritos [PrimeraOntologia_Class10054])
	(nombreAutor "Dashiell Hammett"))

([PrimeraOntologia_Class10056] of  Libro

	(escritoPor [PrimeraOntologia_Class10057])
	(generos [PrimeraOntologia_Class9])
	(titulo "Presunto inocente"))

([PrimeraOntologia_Class10057] of  Autor

	(librosEscritos [PrimeraOntologia_Class10056])
	(nombreAutor "Scott Turow"))

([PrimeraOntologia_Class11] of  Libro

	(bestSeller TRUE)
	(escritoPor [PrimeraOntologia_Class23])
	(fechaPublicacion "2015")
	(generos [PrimeraOntologia_Class10])
	(idioma "Inglés")
	(numPaginas 250)
	(publicoDirigido Juvenil)
	(titulo "Cracked Slaves"))

([PrimeraOntologia_Class14] of  Libro

	(escritoPor [PrimeraOntologia_Class33])
	(generos [PrimeraOntologia_Class7])
	(titulo "The Vacant Male"))

([PrimeraOntologia_Class15] of  Libro

	(bestSeller TRUE)
	(escritoPor
		[PrimeraOntologia_Class33]
		[PrimeraOntologia_Class30])
	(generos [PrimeraOntologia_Class7])
	(titulo "Wife of Male"))

([PrimeraOntologia_Class16] of  Libro

	(escritoPor [PrimeraOntologia_Class32])
	(generos [PrimeraOntologia_Class3])
	(titulo "The Crying's Fairy"))

([PrimeraOntologia_Class17] of  Libro

	(escritoPor [PrimeraOntologia_Class28])
	(generos [PrimeraOntologia_Class2])
	(titulo "Voyagers in the Wife"))

([PrimeraOntologia_Class18] of  Libro

	(bestSeller TRUE)
	(escritoPor
		[PrimeraOntologia_Class28]
		[PrimeraOntologia_Class30])
	(generos [PrimeraOntologia_Class6])
	(titulo "The Stream of the Thorn"))

([PrimeraOntologia_Class19] of  Libro

	(escritoPor [PrimeraOntologia_Class27])
	(generos
		[PrimeraOntologia_Class3]
		[PrimeraOntologia_Class9])
	(titulo "The Souls's Winter"))

([PrimeraOntologia_Class2] of  Genero

	(librosRepresentativos [PrimeraOntologia_Class10010])
	(nombre "Horror"))

([PrimeraOntologia_Class20] of  Libro

	(escritoPor [PrimeraOntologia_Class30])
	(generos [PrimeraOntologia_Class4])
	(titulo "Snake of Sorcerer"))

([PrimeraOntologia_Class21] of  Libro

	(escritoPor [PrimeraOntologia_Class29])
	(generos [PrimeraOntologia_Class9])
	(titulo "The Soul of the Door"))

([PrimeraOntologia_Class22] of  Libro

	(escritoPor [PrimeraOntologia_Class26])
	(generos
		[PrimeraOntologia_Class4]
		[PrimeraOntologia_Class7])
	(titulo "Kissing Woman"))

([PrimeraOntologia_Class23] of  Autor

	(nombreAutor "Wicea"))

([PrimeraOntologia_Class24] of  Autor

	(nombreAutor "Elbrecht"))

([PrimeraOntologia_Class25] of  Autor

	(nombreAutor "Wicemar"))

([PrimeraOntologia_Class26] of  Autor

	(nombreAutor "Asterius"))

([PrimeraOntologia_Class27] of  Autor

	(nombreAutor "Nalien"))

([PrimeraOntologia_Class28] of  Autor

	(nombreAutor "Zann"))

([PrimeraOntologia_Class29] of  Autor

	(nombreAutor "Sevardo"))

([PrimeraOntologia_Class3] of  Genero

	(librosRepresentativos [PrimeraOntologia_Class10012])
	(nombre "Aventuras"))

([PrimeraOntologia_Class30] of  Autor

	(nombreAutor "Etirekor"))

([PrimeraOntologia_Class31] of  Autor

	(nombreAutor "Loikath"))

([PrimeraOntologia_Class32] of  Autor

	(nombreAutor "Mijan"))

([PrimeraOntologia_Class33] of  Autor

	(nombreAutor "Tardotram"))

([PrimeraOntologia_Class34] of  Autor

	(nombreAutor "Larerijar"))

([PrimeraOntologia_Class4] of  Genero

	(nombre "Novela"))

([PrimeraOntologia_Class5] of  Genero

	(nombre "Policial"))

([PrimeraOntologia_Class6] of  Genero

	(nombre "Romantica"))

([PrimeraOntologia_Class7] of  Genero

	(nombre "Ciencia Ficcion Futurista"))

([PrimeraOntologia_Class8] of  Genero

	(moda TRUE)
	(nombre "Zombis"))

([PrimeraOntologia_Class9] of  Genero

	(nombre "Suspense"))

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
