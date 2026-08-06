;; ############################
;; Package Management 
;; ############################

;; bootstrap straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
;; set use-package to invoke from straight.el
(setq straight-use-package-by-default t)
(straight-use-package  'use-package)


(load (expand-file-name "packages.el" user-emacs-directory))

(setq package-quickstart t)

;; ############################
;; Configuration 
;; ############################

(setq ring-bell-function 'ignore)

(global-display-line-numbers-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :height 150)

(which-key-mode 1)

(setq dired-dwim-target t)
