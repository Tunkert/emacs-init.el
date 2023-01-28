;; start the initial frame maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; start every frame maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(setq inhibit-startup-screen t)

(add-to-list 'default-frame-alist '(font . "Hermit-10" ))

;; packages to install
(setq package-list '(zenburn-theme))

;; melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; activate all packages
(package-initialize)

;; fetch list of available packages
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; load-theme
(load-theme 'zenburn t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(zenburn-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
