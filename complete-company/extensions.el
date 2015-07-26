;;; extensions.el --- complete-company Layer extensions File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq complete-company-pre-extensions
      '(
        ;; pre extension names go here
        ))

(setq complete-company-post-extensions
      '(
        ;; post extension names go here
        ))
(defvar auto-completion-enable-snippets-in-popup nil
  "If non nil show snippets in the auto-completion popup.")
(defvar company-mode-completion-cancel-keywords
  '("do"
    "then"
    "begin"
    "case")
  "Keywords on which to cancel completion so that you can use RET
to complet without blocking common line endings.")



;; For each extension, define a function complete-company/init-<extension-name>
;;
;; (defun complete-company/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
