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
(setq package-list '(zenburn-theme olivetti))

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

;; org mode export options
(setq org-html-doctype "html5")
(setq org-html-preamble 'nil)
(setq org-html-postamble 'nil)
(setq org-html-head-include-default-style 'nil)

;; olivetti
(require 'olivetti)
