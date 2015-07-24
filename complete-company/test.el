(defconst sample-completions
  '(#("alan" 0 1
      (:initials "AMT"
                 :summary (concat "Alan Mathison Turing, OBE, FRS (/?tj??r??/ "
                                  "tewr-ing; 23 June 1912 ? 7 June 1954) was a "
                                  "British mathematician, logician, cryptanalyst, "
                                  "philosopher, pioneering computer scientist, "
                                  "mathematical biologist, and marathon and ultra "
                                  "distance runner.")))
    #("john" 0 1
      (:initials "JVN"
                 :summary (concat "John von Neumann (/v?n ?n??m?n/; December 28, "
                                  "1903 ? February 8, 1957) was a Hungarian and "
                                  "American pure and applied mathematician, physicist, "
                                  "inventor and polymath.")))
    #("ada" 0 1
      (:initials "AAK"
                 :summary (concat "Augusta Ada King, Countess of Lovelace (10 December "
                                  "1815 ? 27 November 1852), born Augusta Ada Byron "
                                  "and now commonly known as Ada Lovelace, was an "
                                  "English mathematician and writer chiefly known for "
                                  "her work on Charles Babbage's early mechanical "
                                  "general-purpose computer, the Analytical Engine.")))
    #("don" 0 1
      (:initials "DEK"
                 :summary (concat "Donald Ervin Knuth (/k??nu??/[1] k?-nooth; born "
                                  "January 10, 1938) is an American computer "
                                  "scientist, mathematician, and Professor Emeritus "
                                  "at Stanford University.")))))

(defun sample-annotation (s)
  (format " [%s]" (get-text-property 0 :initials s)))

(defun sample-meta (s)
  (format " %s " (get-text-property 0 :summary s)))

(defun sample-fuzzy-match (prefix candidate)
  (message "call smaple fuzzy match")
  (cl-subsetp (string-to-list prefix)
                            (string-to-list candidate)))


(defun company-sample-backend (command &optional arg &rest ignored)
  (interactive (list 'interactive))

  (case command
    (interactive (company-begin-backend 'company-sample-backend))
    (prefix (company-grab-symbol))
    (candidates
     (remove-if-not
      (lambda (c) (sample-fuzzy-match arg c))
      sample-completions))
    (annotation (sample-annotation arg))
    (meta (sample-meta arg))
    (no-cache 't)))




(add-to-list 'company-backends 'company-sample-backend)

