(setq gc-cons-threshold 100000000)

;; Improve performance with language servers.
(setq read-process-output-max (* 1024 1024)) ;; 1 MB

;; Disable "file-name-handler-alist" than enable it later for speed.
(defvar startup/file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq file-name-handler-alist startup/file-name-handler-alist)
            (makunbound 'startup/file-name-handler-alist)))

;; speed up package loading
(setq package-quickstart t)

;; hide bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
 
