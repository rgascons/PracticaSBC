;;;*********
;;;*STARTUP*
;;;*********

(deffunction ask-question (?question $?allowed-values)
	(printout t ?question)
	(bind ?answer (read))
	(if (lexemep ?answer)
		then (bind ?answer (lowcase ?answer)))
	(while (not (member ?answer ?allowed-values)) do
		(printout t ?question)
		(bind ?answer (read))
		(if (lexemep ?answer)
			then (bind ?answer (lowcase ?answer))))
	?answer)
	
(deffunction yes-or-no-p (? question)
	(bind ?response (ask-question ?question yes no y n))
	(if (or (eq ?response yes) (eq ?response y))
		then TRUE
		else FALSE))

(defrule system-banner ""
	(declare (salience 10))
	=>
	(printout t crlf crlf)
	(printout t "Book Recomendation System")
	(printout t crlf crlf))
	
(defrule determine-genre ""
	(not (book1 ?))
	=>
	(yes-or-no-p "Does this print something? ")
	)