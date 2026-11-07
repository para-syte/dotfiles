;;; -*- lexical-binding: t; -*-

(add-to-list 'initial-frame-alist '(fullscreen . fullboth))
(add-to-list 'default-frame-alist '(fullscreen . fullboth))
					; (add-hook 'window-setup-hook 'toggle-frame-fullscreen t)
					; (add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-font-lock-mode 1)
(global-set-key (kbd "C-=") 'forward-page)
(global-set-key (kbd "C--") 'backward-page)

; know which function i'm in when scrolling
(semantic-mode 1)
(global-semantic-stickyfunc-mode 1)

(set-face-attribute 'default nil
		    :font "Iosevka Nerd Font"
                    :height 150
                    :weight 'Regular)
(set-face-attribute 'mode-line nil
		    :background "white"
		    :foreground "black"
		    :box '(:line-width 3 :color "grey")
		    :height 1.2)
(set-face-attribute 'mode-line-inactive nil
		                :height 1.2)
(set-face-foreground 'font-lock-comment-face "#999999")

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js-ts-mode))
(add-to-list 'auto-mode-alist '("Makefile.*" . makefile-mode))

(setq treesit-language-source-alist
      '((typescript "https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.3" "typescript/src")
        (tsx "https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.3" "tsx/src")))
(setq treesit-language-source-alist
      '((javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")))
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))

; set 2-space indentation for JS/TS modes
(setq-default tab-width 2)
(setq-default js-indent-level 2)
(setq-default typescript-indent-level 2)
(setq-default css-indent-offset 2)

; reindent buffer automatically on save or via command
(setq-default indent-tabs-mode nil) ; Use spaces instead of tabs

; used for auto completion for c and c++
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org") t)
(package-initialize)
(unless (package-installed-p 'company)
  (package-refresh-contents)
  (package-install 'company))
(use-package company
  :ensure t
  :init
  (global-company-mode 1)
  :config
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 1
        company-selection-wrap-around t))
(use-package eglot
  :ensure t
  :hook
  ((c-mode . eglot-ensure)
   (c++-mode . eglot-ensure)))
(use-package kkp
  :ensure t
  :config
  (global-kkp-mode 1))
  
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

;; (add-to-list 'auto-mode-alist '("\\.pdf\\'" . doc-view-mode))
(with-eval-after-load 'tex
  (add-to-list 'TeX-view-program-list '("pdf-tools" "TeX-pdf-tools-sync-view"))
  (add-to-list 'TeX-view-program-selection '(output-pdf "pdf-tools"))
  (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer))

(setq-default bidi-display-reordering nil)
(setq scroll-conservatively 101)
(setq fast-but-imprecise-scrolling t)

(if(display-graphic-p)
    ()
  (load-theme 'modus-vivendi t))

'(package-selected-packages '(auctex company pdf-tools))
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("be0d9f0e72a4ebc4a59c382168921b082b4dc15844bdaf1353c08157806b3321"
     "e622620e5f31216fd71e492fc1476e1fe7c21b8dc5811bf9e640c4b1fd6cfac1"
     "0d2c5679b6d087686dcfd4d7e57ed8e8aedcccc7f1a478cd69704c02e4ee36fe"
     "e14289199861a5db890065fdc5f3d3c22c5bac607e0dbce7f35ce60e6b55fc52"
     "f4d1b183465f2d29b7a2e9dbe87ccc20598e79738e5d29fc52ec8fb8c576fcfd"
     "5c8a1b64431e03387348270f50470f64e28dfae0084d33108c33a81c1e126ad6"
     "df6dfd55673f40364b1970440f0b0cb8ba7149282cf415b81aaad2d98b0f0290"
     "a9eeab09d61fef94084a95f82557e147d9630fbbb82a837f971f83e66e21e5ad"
     "1f292969fc19ba45fbc6542ed54e58ab5ad3dbe41b70d8cb2d1f85c22d07e518"
     "b754d3a03c34cfba9ad7991380d26984ebd0761925773530e24d8dd8b6894738"
     "13096a9a6e75c7330c1bc500f30a8f4407bd618431c94aeab55c9855731a95e1"
     "b99ff6bfa13f0273ff8d0d0fd17cc44fab71dfdc293c7a8528280e690f084ef0"
     "e8bd9bbf6506afca133125b0be48b1f033b1c8647c628652ab7a2fe065c10ef0"
     "f253a920e076213277eb4cbbdf3ef2062e018016018a941df6931b995c6ff6f6"
     "87fa3605a6501f9b90d337ed4d832213155e3a2e36a512984f83e847102a42f4"
     "f6ea954a9544b0174a876d195387f444da441535ee88c7fb0fc346af08b0d228"
     "f1e8339b04aef8f145dd4782d03499d9d716fdc0361319411ac2efc603249326"
     "c3c135e69890de6a85ebf791017d458d3deb3954f81dcb7ac8c430e1620bb0f1"
     "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8"
     "720838034f1dd3b3da66f6bd4d053ee67c93a747b219d1c546c41c4e425daf93"
     "3061706fa92759264751c64950df09b285e3a2d3a9db771e99bcbb2f9b470037"
     "5c7720c63b729140ed88cf35413f36c728ab7c70f8cd8422d9ee1cedeb618de5"
     "c9d837f562685309358d8dc7fccb371ed507c0ae19cf3c9ae67875db0c038632"
     "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9"
     "166a2faa9dc5b5b3359f7a31a09127ebf7a7926562710367086fcc8fc72145da"
     "19d62171e83f2d4d6f7c31fc0a6f437e8cec4543234f0548bad5d49be8e344cd"
     "70c88c01b0b5fde9ecf3bb23d542acba45bb4c5ae0c1330b965def2b6ce6fac3"
     "088cd6f894494ac3d4ff67b794467c2aa1e3713453805b93a8bcb2d72a0d1b53"
     "b7a09eb77a1e9b98cafba8ef1bd58871f91958538f6671b22976ea38c2580755"
     "4b88b7ca61eb48bb22e2a4b589be66ba31ba805860db9ed51b4c484f3ef612a7"
     "5244ba0273a952a536e07abaad1fdf7c90d7ebb3647f36269c23bfd1cf20b0b8"
     "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19"
     "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a"
     "bc877ca134b38b7445bbab8526b97bfb7538ba082dd18cf5911f4fe634d21c63"
     "93011fe35859772a6766df8a4be817add8bfe105246173206478a0706f88b33d"
     "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33"
     "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0"
     default))
 '(package-selected-packages
   '(auctex cmake-mode company dap-mode doom-themes flycheck helm-lsp
            helm-xref kkp pdf-tools projectile typescript-mode
            yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
