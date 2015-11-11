;;;*********
;;;*STARTUP*
;;;*********

(defrule system-banner ""
	(declare (salience 10))
	=>
	(printout t crlf crlf)
	(printout t "Book Recomendation System")
	(printout t crlf crlf))