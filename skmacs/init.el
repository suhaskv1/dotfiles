;; Blank startup screen
(setq inhibit-startup-message t)

(scroll-bar-mode -1)	;; Disable visible scrollbar
(tool-bar-mode -1)	;; Disable the toolbar
(tooltip-mode -1)	;; Disable tooltips
(set-fringe-mode 10)	;; Clean
(menu-bar-mode -1)	;; Disable the menu bar

;; Visual bell
(setq visible-bell t)

;; Font
;; (set-face-attribute 'default nil :font "SourceCodePro-Medium" :height 100)

;; Theme
(load-theme 'tango-dark)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

  ;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Ivy

(use-package ivy
  :diminish
  :bind (("C-s" . swiper))
  :config
  (ivy-mode 1))

;; Counsel

(use-package counsel
  :bind (("C-M-j" . 'counsel-switch-buffer))
  :custom
  (counsel-linux-app-format-function #'counsel-linux-app-format-function-name-only)
  :config
  (counsel-mode 1))

;; nerd fonts and icons

(use-package nerd-icons)

;; Doom modeline

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit nerd-fonts doom-modeline use-package counsel)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
