;; ##################
;; packages
;; ##################
;; vim keybindings
(use-package evil
  :straight t
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1)
  (evil-set-undo-system 'undo-redo))

(use-package evil-collection
  :straight t
  :after evil
  :init
  (evil-collection-init))

(use-package evil-commentary
  :straight t
  :config
  (evil-commentary-mode))

(use-package evil-mc
  :straight t
  :config
  (evil-mc-mode 1))

;; git
(use-package magit
  :straight t)

(use-package diff-hl
  :straight t
  :demand t
  :init
  (global-diff-hl-mode)
  :hook
  (magit-post-refresh-hook . diff-hl-magit-post-refresh))

(use-package blamer
  :straight t
  :bind (("C-c i" . blamer-show-commit-info))
  :defer 20
  :custom
  (blame-idle-time 0.1)
  (blame-min-offset 70)
  :config
  (global-blamer-mode 1))

;; autocompletion 
(use-package ivy
  :straight t
  :demand t
  :config
  (ivy-mode 1))

;; project exploreer
(use-package treemacs
  :straight t
  :defer t
  :init
  (with-eval-after-load `winum
    (define-key winum-keymap(kbd "M-0") #'treemacs-select-window))
  :config
  (progn
    (setq treemacs-follow-after-init t
	  treemacs-width 35
	  treemacs-show-hidden-files t)
    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    ))

(use-package treemacs-evil
  :after (treemacs evil)
  :straight t)

(use-package treemacs-magit
  :after (treemacs magit)
  :straight t)

;; window management
(use-package winum
  :straight t
  :config
  (winum-mode 1))

;;terminal
(use-package vterm
  :straight t)

;; lsp
;; (straight-use-package 'project)
;; (straight-use-package 'flymake)

(use-package eglot
  :straight (:type built-in)
  :hook ((python-mode . eglot-ensure)
	 (rust-mode . eglot-ensure)
	 (markdown-mode . eglot-ensure)))

(use-package corfu
  :straight t
  :init
  (global-corfu-mode))

;; themes
(use-package kaolin-themes
  :config
  (load-theme `kaolin-dark t)
  (kaolin-treemacs-theme))

(use-package all-the-icons
  :straight t
  :if (display-graphic-p))

(use-package doom-modeline
  :straight t
  :init
  (doom-modeline-mode 1))


;; TODO
;; Workspaces
;; (use-package persp-mode
;;   :straight t)
;; treemacs-persp

;; project management
;; (use-package projectile
;;   :straight t)
;; treemacs-projectile


;; other
(use-package dashboard
  :straight t
  :config
  (dashboard-setup-startup-hook))
