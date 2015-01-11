;; Pattern matching inside tree structure

(require 'json)
(require 'pcase)

;; reda about json parsing in at emacs http://edward.oconnor.cx/2006/03/json.el



;; read json tree to string
;; use string-edit-at-point to avoid escaping hell
(setq example-json-string "{ \"fruits\" : \n  \t   {\n\t\t\"domestic\" : [\"apple\", \"peach\", \"plumb\"],\n    \t\t\"exotic\" : [\"banana\", \"orange\", \"pine-apple\"]\n   \t   }\n}\n  ")

(setq tree (json-read-from-string example-json-string))
;; use pattern matchin to extrac exotic fruit
;; http://stackoverflow.com/questions/13166488/how-can-i-use-destructuring-bind-to-turn-xml-into-a-specific-s-expression-tree

(defun extract (tree)
  (pcase tree

   ;; s-exp pattern from where exotic-fruits are extracted 
   (`((fruits (exotic . ,exotic-fruits) ,rest))
    exotic-fruits)
   
  (_ nil)))

(mapcar 'upcase (extract tree))
 
