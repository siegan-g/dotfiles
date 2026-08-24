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
  (evil-collection-init)
  :custom
  (evil-collection-setup-minibuffer t))

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
  :init
  (with-eval-after-load 'winum
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

;; lsp-mode and extensions
(use-package lsp-mode
  :straight t
  :init
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-modeline-code-action-fallback-icon "")
  :hook(
  (python-mode . lsp-deferred)
  (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :straight t
  :commands lsp-ui-mode)

(use-package lsp-ivy
  :straight t
  :commands lsp-ivy-workspace-symbol)

(use-package lsp-treemacs
  :straight t
  :after (lsp-mode treemacs)
  :commands lsp-treemacs-errors-list)

(use-package dap-mode
  :straight t
  :after lsp-mode
  :config
  (dap-auto-configure-mode +1)
  (require 'dap-python))

(use-package company
  :straight t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-minimum-prefix-length 2
	company-idle-delay 0.0))

;; themes

(use-package nerd-icons
  :straight t
  :custom
  (nerd-icon-font-family "RobotoMono Nerd Font Mono"))

(use-package doom-themes
  :straight t
  :after nerd-icons
  :custom
  (doom-themes-enable-bold t)
  (doom-themes-enable-italics t)
  (doom-themes-treemacs-theme "doom-atom")
  :config
  (load-theme 'doom-one t)
  (doom-themes-visual-bell-config)
  (doom-themes-treemacs-config)
  (doom-themes-org-config))
  
(use-package doom-modeline
  :straight t
  :init
  (doom-modeline-mode 1)
  :config
  (setq doom-modeline-modal-modern-icon nil))

;; windows
(use-package olivetti
  :straight t)

(use-package spacious-padding 
  :straight t
  :init
  (spacious-padding-mode))

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
  :custom
  (dashboard-vertically-center-content t)
  (dashboard-center-content t)
  (dashboard-startup-banner (expand-file-name "misc/philanthropy.png" user-emacs-directory))
  (dashboard-banner-logo-title "TO LET THE WORLD BE")
  (dashboard-items '((recents . 5)
		     (bookmarks . 5)
		     (projects . 5)
		     (agenda . 5)))
  (dashboard-startupify-list '(dashboard-insert-banner
			       dashboard-insert-newline
			       dashboard-insert-banner-title
			       dashboard-insert-newline
			       dashboard-insert-init-info
			       dashboard-insert-newline
			       dashboard-insert-navigator
			       dashboard-insert-newline
			       dashboard-insert-items
			       ))
  :hook
  (dashboard-mode-hook .(lambda () (display-line-numbers-mode -1)))
  :config
  (dashboard-setup-startup-hook))

(use-package super-save
  :straight t
  :config
  (super-save-mode +1))
