;;; packages.el --- org-pages Layer packages File for Spacemacs
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

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq org-pages-packages
    '(
      ;; package names go here
      org-page
      ))

;; List of packages to exclude.
;; (setq org-pages-excluded-packages '())

;; For each package, define a function org-pages/init-<package-name>
;;
(defun org-pages/init-org-page()
  "Initialize my package"
  (use-package org-page
    :init
    (progn
      (setq op/repository-directory "~/blogs")
      (setq op/site-domain "http://106.186.28.71/")
      ;;; for commenting, you can choose either disqus or duoshuo
      ;; (setq op/personal-disqus-shortname "your_disqus_shortname")
      ;; (setq op/personal-duoshuo-shortname "your_duoshuo_shortname")
      ;;; the configuration below are optional
      ;; (setq op/personal-google-analytics-id "your_google_analytics_id")))
      )
    ))

;; test
;; (op/do-publiction) 

;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
