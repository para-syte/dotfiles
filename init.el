(add-to-list 'initial-frame-alist '(fullscreen . fullboth))
(add-to-list 'default-frame-alist '(fullscreen . fullboth))
; (add-hook 'window-setup-hook 'toggle-frame-fullscreen t)
; (add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(background-color . "#000000"))
(add-to-list 'default-frame-alist '(foreground-color . "#FFFFFF"))

(global-set-key (kbd "C-=") 'forward-page)
(global-set-key (kbd "C--") 'backward-page)

(set-face-attribute 'default nil
		    :font "Iosevka Nerd Font"
                    :height 150
                    :weight 'Light)
(set-face-attribute 'region nil :background "#2456a6")
(set-face-attribute 'mode-line nil
		    :background "white"
		    :foreground "black"
		    :box '(:line-width 3 :color "grey")
		    :height 1.2)
(set-face-attribute 'mode-line-inactive nil
		    :height 1.2)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'c++-mode-hook 'eglot-ensure) ; automatically connects to eglot for cpp projects
(setq inhibit-startup-message t)     ; disable startup message
(setq visible-bell t)                ; set up visible bell
; (setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1) ; enable column numbers
(display-time-mode 1)                ; adds clock in mode line
(scroll-bar-mode -1)                 ; disable visible scrollbar
(tool-bar-mode -1)                   ; disable toolbar
(tooltip-mode -1)                    ; disable tooltips
(set-fringe-mode 10)                 ; give some breathing room
(menu-bar-mode -1)                   ; disable menu bar

(add-to-list 'auto-mode-alist '("\\.pdf\\'" . pdf-view-mode))
(with-eval-after-load 'pdf-tools
  (pdf-tools-install))
(with-eval-after-load 'tex
  (add-to-list 'TeX-view-program-list '("pdf-tools" "TeX-pdf-tools-sync-view"))
  (add-to-list 'TeX-view-program-selection '(output-pdf "pdf-tools"))
  (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer))

(setq-default bidi-display-reordering nil)
(setq scroll-conservatively 101)
(setq fast-but-imprecise-scrolling t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-builtin-face ((t (:foreground "Blue"))))
 '(font-lock-comment-face ((t (:foreground "#9b9b9b"))))
 '(font-lock-function-name-face ((t (:foreground "Purple"))))
 '(font-lock-preprocessor-face ((t (:foreground "Orange"))))
 '(font-lock-string-face ((t (:foreground "Yellow"))))
 '(font-lock-type-face ((t (:foreground "Green"))))
 '(font-lock-variable-name-face ((t (:foreground "Red")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(auctex company pdf-tools)))
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
