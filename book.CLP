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

(deffunction pregunta-booleana (?pregunta)
	(format t "%s (s/n)" ?pregunta)
	(bind ?resp (read))
	(while (not (or (eq ?resp s)(eq ?resp n))) do
		(format t "%s (s/n)" ?pregunta)
		(bind ?resp (read))
	)
	(if (eq ?resp s)
		then TRUE
		else FALSE
	)
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
	(if (pregunta-booleana "¿Eres ya usuario del sistema?")
		then (assert(usuario-lector))
		else (assert(nuevo-lector))
	)
)

;;; Pregunta para conocer la edad
(defrule pregunta-edad ""
	(nuevo-lector)
	=>
	(bind ?ed (pregunta-numerica "¿Cuantos años tienes?" 0 150))
	(if (< ?ed 12) then (assert (infantil)))
	(if (and (>= ?ed 12)(<= ?ed 24)) then (assert (juvenil)))
	(if (> ?ed 24) then (assert(adulto)))
)

(defrule pregunta-horas " Pregunta para horas de lectura "
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-numerica "¿Cuántas horas dedicas a leer al 	día? " 0 24))
	(assert (HorasDia ?resp))
)

(defrule pregunta-momento "Pregunta para momento de lectura del día
"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-numerica "¿Más o menos a qué hora 	comienzas a 	leer? " 0 24))
	(if (and (>= ?resp 0) (<= ?resp 6)) then (assert (Momento 	madrugada)) 
	else (if (and (> ?resp 6) (<= ?resp 12)) then (assert (Momento 	mañana))
	else (if (and (> ?resp 12) (<= ?resp 18)) then (assert (Momento 	tarde)) 
	else (assert (Momento noche)))))
)

(defrule pregunta-frecuencia "Pregunta para frecuencia de lectura"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-numerica "¿En un mes cuantos dias sueles 	leer? " 0 24))
	(if (and (>= ?resp 0) (<= ?resp 6)) then (assert (Frecuencia 	muyPoca))
	else (if (and (> ?resp 6) (<= ?resp 12)) then (assert (Frecuencia 	poca 	mañana))
	else (if (and (> ?resp 12) (<= ?resp 18)) then (assert (Frecuencia 	normal)) 
	else (if (and (> ?resp 18) (<= ?resp 24)) then (assert (Frecuencia 	mucha)) 	else (assert (Frecuencia muchisima))))))
)

(defrule pregunta-lugar "Pregunta para horas de lectura"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-general "¿En qué sitio sueles leer 	normalmente? Ni -> No importa "))
	(if (eq (str-compare ?resp "Ni") 0) then (assert (Lugar indef))
	else (assert (Lugar ?resp)))
)

(defrule pregunta-modas "Pregunta para saber si sigue modas"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-booleana "Para escoger un libro, ¿sigues las 	tendencias del momento en lectura? "))
	(assert (SigueModas ?resp))
)

(defrule pregunta-best-sellers "Pregunta para si le gusta best-sellers"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-booleana "¿Te gustan los best-sellers? "))
	(assert (BestSellers ?resp))
)

(defrule pregunta-fia-expertos "Pregunta para saber si se fia de los expertos"
	(nuevo-lector)
	=>
	(bind ?resp (pregunta-booleana "¿Te fias de las opiniones de los críticos de libros? "))
	(assert (SeFia ?resp))
)





