(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (magit gradle-mode eclim))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-preview ((t (:background "black" :foreground "red"))))
 '(company-preview-common ((t (:foreground "red"))))
 '(company-preview-search ((t (:inherit company-preview))))
 '(company-scrollbar-bg ((t (:background "brightwhite"))))
 '(company-scrollbar-fg ((t (:background "red"))))
 '(company-template-field ((t (:background "magenta" :foreground "black"))))
 '(company-tooltip ((t (:background "brightwhite" :foreground "black"))))
 '(company-tooltip-annotation ((t (:background "brightwhite" :foreground "black"))))
 '(company-tooltip-annotation-selection ((t (:background "color-253"))))
 '(company-tooltip-common ((t (:background "brightwhite" :foreground "red"))))
 '(company-tooltip-common-selection ((t (:background "color-253" :foreground "red"))))
 '(company-tooltip-mouse ((t (:foreground "black"))))
 '(company-tooltip-search ((t (:background "brightwhite" :foreground "black"))))
 '(company-tooltip-selection ((t (:background "color-253" :foreground "black")))))

(menu-bar-mode -1)

(if (functionp 'tool-bar-mode) (tool-bar-mode 0))

(if (functionp 'toggle-scroll-bar ) (toggle-scroll-bar 0))

(setq inhibit-startup-screen t)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(require 'eclim)
(add-hook 'java-mode-hook 'eclim-mode)
(require 'eclimd)

(require 'gradle-mode)
(add-hook 'java-mode-hook '(lambda() (gradle-mode 1)))

(defun build-and-run ()
	(interactive)
	(gradle-run "build run"))

(define-key gradle-mode-map (kbd "C-c C-r") 'build-and-run)

 (require 'company)
(global-company-mode t)


  (require 'company-emacs-eclim)
(company-emacs-eclim-setup)


(global-set-key (kbd "C-x g") 'magit-status)

(setq backup-directory-alist `(("." . "~/.emacsSaves")))

(setq backup-by-copying t)
