;; use-package setup
(require 'package)
(setq package-enable-at-startup nil) ; dont do it immediately
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
             ("gnu"       . "http://elpa.gnu.org/packages/")
             ("melpa"     . "https://melpa.org/packages/")))
(package-initialize)

;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents) ; update archives
  (package-install 'use-package)) ; grab the newest use-package

;; Define packages
(require 'use-package)

;; Always download if not available
(setq use-package-always-ensure t)

;; Pull in ./lisp/*
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;(require 'init-ivy)


(require 'ido-vertical-mode)
(ido-mode 1)

(setq ido-use-faces t)
(set-face-attribute 'ido-vertical-first-match-face nil
                    :background nil
                    :foreground "orange")
(set-face-attribute 'ido-vertical-only-match-face nil
                    :background nil
                    :foreground nil)
(set-face-attribute 'ido-vertical-match-face nil
                    :foreground nil)


(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

(global-set-key (kbd "C-s") 'swiper)

(global-set-key (kbd "M-x") 'counsel-M-x)
;;(global-set-key (kbd "C-x C-f") 'counsel-find-file)


(require 'init-flycheck)

(require 'init-company)

(require 'init-which-key)

(require 'init-smartparens)

(require 'init-neotree)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (ido-vertical-mode async bind-key company counsel dash epl flycheck git-commit lv neotree pkg-info smartparens swiper transient use-package which-key with-editor ivy smex magit))))

(setq delete-old-versions -1 ) ; delete excess backups silently
(setq version-control t )
(setq vc-make-backup-files t )
(setq vc-follow-symlinks t )
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")) )
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)) )
(setq inhibit-startup-screen t )
(setq ring-bell-function 'ignore ) ; silent bell on mistakes
(setq coding-system-for-read 'utf-8 )
(setq coding-system-for-write 'utf-8)
(setq sentence-end-double-space nil)
(setq-default fill-column 80) ; toggle wrapping text at this column
(setq initial-scratch-message "EEEEEEEEEEEmacs...macs...(macs)... Hi Mukesh." ) ; You should probably change this
(global-display-line-numbers-mode t )
(menu-bar-mode -1) ; no need for the menu bars - we've got key combos for that!

(if (functionp 'tool-bar-mode) (tool-bar-mode 0))

(if (functionp 'toggle-scroll-bar ) (toggle-scroll-bar 0))

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(global-set-key (kbd "C-x g") 'magit-status)


(setq backup-by-copying t)
(set-cursor-color "#ff7f50")
;; this is a test commit
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
