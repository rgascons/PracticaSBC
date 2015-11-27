; Wed Nov 25 10:38:56 CET 2015
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot lugar
		(type SYMBOL)
		(allowed-values casa transporte trabajo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Titulo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot estudios
		(type SYMBOL)
		(allowed-values primaria secundaria bachillerato universidad formacionProfesional otros)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ISBN
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot FechaPublicacion
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ejemplaresVendidos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot puntosDeVenta
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(multislot catalogo
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot exclusivas
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot puntuacion
		(type INTEGER)
		(range 0 5)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot librosLeidos
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(multislot librosEscritos
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot nombreEstablecimiento
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot DNI
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numPaginas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot frecuencia
		(type SYMBOL)
		(allowed-values poca media mucha)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot momento
		(type SYMBOL)
		(allowed-values ma%C3%B1ana mediodia tarde noche)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot compa%C3%B1ia
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombreCompa%C3%B1ia
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot populares%3F
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot autor
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot escritoPor
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot generoExperto
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot bestSeller%3F
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot modas%3F
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot generosRelacionados
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot nombreAutor
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot autoresFavoritos
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(multislot generos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(multislot generosPreferidos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot nacionalidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot presencia
		(type SYMBOL)
		(allowed-values fisica online)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tiempoDisponible
;+		(comment "Tiempo disponible que tiene el lector al día, en horas")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot edad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Libro
	(is-a USER)
	(role concrete)
	(single-slot FechaPublicacion
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ejemplaresVendidos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numPaginas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot generos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot puntuacion
		(type INTEGER)
		(range 0 5)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Titulo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ISBN
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot bestSeller%3F
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot escritoPor
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 0 1)
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
		(create-accessor read-write)))

(defclass Persona
	(is-a USER)
	(role concrete)
	(single-slot nacionalidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot DNI
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot edad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot estudios
		(type SYMBOL)
		(allowed-values primaria secundaria bachillerato universidad formacionProfesional otros)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Lector
	(is-a Persona)
	(role concrete)
	(multislot librosLeidos
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot modas%3F
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
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
	(single-slot populares%3F
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot autoresFavoritos
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot frecuencia
		(type SYMBOL)
		(allowed-values poca media mucha)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot generosPreferidos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write)))

(defclass Autor
	(is-a Persona)
	(role concrete)
	(multislot generoExperto
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(multislot librosEscritos
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot nombreAutor
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
)
		
; Wed Nov 25 10:38:56 CET 2015
; 
;+ (version "3.5")
;+ (build "Build 663")

(definstances instancias 
([PrimeraOntologia_Class10] of  Genero

	(nombre "Erotica"))

([PrimeraOntologia_Class11] of  Libro

	(generos [PrimeraOntologia_Class10])
	(Titulo "Cracked Slaves"))

([PrimeraOntologia_Class12] of  Genero
)

([PrimeraOntologia_Class14] of  Libro

	(generos
		[PrimeraOntologia_Class12]
		[PrimeraOntologia_Class7])
	(Titulo "The Vacant Male"))

([PrimeraOntologia_Class15] of  Libro

	(generos [PrimeraOntologia_Class7])
	(Titulo "Wife of Male"))

([PrimeraOntologia_Class16] of  Libro

	(generos [PrimeraOntologia_Class3])
	(Titulo "The Crying's Fairy"))

([PrimeraOntologia_Class17] of  Libro

	(generos [PrimeraOntologia_Class2])
	(Titulo "Voyagers in the Wife"))

([PrimeraOntologia_Class18] of  Libro

	(generos [PrimeraOntologia_Class6])
	(Titulo "The Stream of the Thorn"))

([PrimeraOntologia_Class19] of  Libro

	(generos
		[PrimeraOntologia_Class3]
		[PrimeraOntologia_Class9])
	(Titulo "The Souls's Winter"))

([PrimeraOntologia_Class2] of  Genero

	(nombre "Horror"))

([PrimeraOntologia_Class20] of  Libro

	(generos [PrimeraOntologia_Class4])
	(Titulo "Snake of Sorcerer"))

([PrimeraOntologia_Class21] of  Libro

	(generos [PrimeraOntologia_Class9])
	(Titulo "The Soul of the Door"))

([PrimeraOntologia_Class22] of  Libro

	(generos
		[PrimeraOntologia_Class12]
		[PrimeraOntologia_Class4]
		[PrimeraOntologia_Class7])
	(Titulo "Kissing Woman"))

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

	(nombre "Ciencia Ficcion"))

([PrimeraOntologia_Class8] of  Genero

	(nombre "Infantil"))

([PrimeraOntologia_Class9] of  Genero

	(nombre "Suspense")))



;;;*********
;;;*START*
;;;*********

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

;;; Banner de inicio
(defrule banner ""
	(initial-fact)
	=>
	(printout t crlf crlf)
	(printout t "Book Recomendation System")
	(printout t crlf crlf)
	(assert (start))
)

(defrule preguntar-existencia "" 
	(start)
	=>
	(bind ?dni (pregunta-general "Cual es tu DNI?"))
	(if (any-instancep ((?p Lector)) (eq (str-compare ?p:DNI ?dni) 0))
	then (assert (usuario-lector))
	else 
	(bind ?lector (make-instance lectorN of Lector))
	(send ?lector put-DNI ?dni)
	(assert(nuevo-lector ?dni))
	)
	;(bind ?dniL (send ?lector get-DNI))
	;(printout t ?dni crlf)
	;(printout t ?dniL crlf)
)

;;; Pregunta para conocer la edad
(defrule pregunta-edad ""
	(nuevo-lector ?dni)
	?lector<-(object (is-a Lector)(DNI ?dni))
	=>
	(bind ?ed (pregunta-numerica "Cuantos anyos tienes?" 0 150))
	(if (< ?ed 12) then (assert (infantil)))
	(if (and (>= ?ed 12)(<= ?ed 24)) then (assert (juvenil)))
	(if (> ?ed 24) then (assert(adulto)))
	(send ?lector put-edad ?ed)
)

(defrule pregunta-horas " Pregunta para horas de lectura "
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-numerica "Cuantas horas dedicas a leer al dia? " 0 24))
	(assert (HorasDia ?resp))
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
	(bind ?resp (pregunta-numerica "En un mes cuantos dias sueles leer? " 0 24))
	(if (and (>= ?resp 0) (<= ?resp 6)) then (assert (Frecuencia muyPoca))
	else (if (and (> ?resp 6) (<= ?resp 12)) then (assert (Frecuencia poca))
	else (if (and (> ?resp 12) (<= ?resp 18)) then (assert (Frecuencia normal)) 
	else (if (and (> ?resp 18) (<= ?resp 24)) then (assert (Frecuencia mucha)) 	
	else (assert (Frecuencia muchisima))))))
)

(defrule pregunta-lugar "Pregunta para horas de lectura"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-general "En que sitio sueles leer normalmente? Ni -> No importa "))
	(if (eq (str-compare ?resp "Ni") 0) then (assert (Lugar indef))
	else (assert (Lugar ?resp)))
)

(defrule pregunta-modas "Pregunta para saber si sigue modas"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-booleana "Para escoger un libro, sigues las tendencias del momento en lectura? "))
	(assert (SigueModas ?resp))
)

(defrule pregunta-best-sellers "Pregunta para si le gusta best-sellers"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-booleana "Te gustan los best-sellers? "))
	(assert (BestSellers ?resp))
)

(defrule pregunta-fia-expertos "Pregunta para saber si se fia de los expertos"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-booleana "Te fias de las opiniones de los criticos de libros? "))
	(assert (SeFia ?resp))
)

(defrule pregunta-generos "Pregunta para saber generos preferidos"
	(nuevo-lector)
	=>
	(printout t "Cuales son tus generos preferidos?")
	(printout t "0. Indiferente")
	(printout t "1. Infantil")
	(printout t "2. Suspense")
	(printout t "3. Ciencia Ficcion")
	(printout t "4. Erotico")
	(printout t "5. Aventuras")
	(bind ?resp (pregunta-lista "Escribe los identificadores separados por espacios: "))
	;(if (not (member 0 ?resp))
	;	then
	;	(progn ?it ?resp
	;		(switch ?it
	;			(case 1 then (assert(Indiferencia)))
	;			(case 2 then (assert(Infan)))
	;			(case 3 then (assert(Suspense)))
	;		)
	;	)
	;)
	
)



;;;**************
;;;Filtrado
;;;**************
