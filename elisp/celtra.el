(defvar username "akotnik@celtra.com")
(defvar password "tj5641raj")

(setq a '((user . "Aleš Kotnik")
	    (email . "akotnik@celtra.com")
	    (email . "ales.kotnik@gmail.com")))

(assoc 'email a)
(require 'url)
(setq m (url-retrieve-synchronously

(defun url-retrieve-with-auth (url)
  (let ((url-request-extra-headers 
	 `(("Authorization" . ,(concat "Basic "
			      (base64-encode-string (concat username ":" password)))))
	 ))
    (switch-to-buffer (url-retrieve-synchronously url))
))

(defun get-creative (creative-id)
  (with-current-buffer 
    (url-retrieve-with-auth (format "https://cs.celtra.com/api/creatives/%s" creative-id))
    (goto-char (+ 1 url-http-end-of-headers))
    (json-read-object)
))

(format "https://cs.celtra.com/api/creatives/%s" "be0a0beb")

(defvar test-creative (get-creative "be0b0aeb"))
(pp test-creative)	  
    
(url-retrieve-with-auth "https://cs.celtra.com/api/creatives/be0b0aeb" "akotnik@celtra.com" "tj5641raj")

(concat "Basic " (base64-encode-string (concat "aaa" ":" "asasfaslfkasfl")))
(defvar *world* "only once")
(defvar *world* "second time")
(defvar
(pp *world*)
