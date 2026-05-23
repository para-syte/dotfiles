(add-hook 'window-setup-hook 'toggle-frame-fullscreen t)
; (add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(background-color . "#000000"))
(add-to-list 'default-frame-alist '(foreground-color . "#FFFFFF"))

; (defun compileandrun ()
;  (interactive)
;  (save-buffer)
;  (let* ((src (file-name-nondirectory (buffer-file-name)))
;         (exe (file-name-sans-extension src)))
;    (compile (concat "g++ -g " src " -o " exe " && ./" exe))))
;(global-set-key (kbd "<f8>") 'compileandrun)

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
		    :box '(:line-width 3 :color "grey"))

(add-hook 'c++-mode-hook 'eglot-ensure) ; automatically connects to eglot for cpp projects
(add-hook 'prog-mode-hook #'whitespace-mode)
(setq whitespace-line-column 80)
(setq whitespace-style '(face lines-tail))
(setq inhibit-startup-message t)     ; disable startup message
; (setq display-line-numbers-type 'relative)
(setq visible-bell t)                ; set up visible bell
(global-display-line-numbers-mode 1) ; enable column numbers
(display-time-mode 1)                ; adds clock in mode line
(scroll-bar-mode -1)                 ; disable visible scrollbar
(tool-bar-mode -1)                   ; disable toolbar
(tooltip-mode -1)                    ; disable tooltips
(set-fringe-mode 10)                 ; give some breathing room
(menu-bar-mode -1)                   ; disable menu bar
; (load-theme 'whiteboard t)         ; loads a theme
(pdf-tools-install)
(with-eval-after-load 'tex
  ;; 1. Teach AUCTeX what pdf-tools is
  (add-to-list 'TeX-view-program-list '("pdf-tools" "TeX-pdf-tools-sync-view"))
  
  ;; 2. Set it as the default viewer for PDFs
  (add-to-list 'TeX-view-program-selection '(output-pdf "pdf-tools"))
  
  ;; 3. Auto-refresh the PDF after compiling
  (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer))
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
 '(package-selected-packages '(auctex pdf-tools)))
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
