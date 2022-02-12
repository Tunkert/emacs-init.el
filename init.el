;; inhibit splash screen
(setq inhibit-splash-screen t)

;; set default font and size
(set-face-attribute 'default nil :font "Inconsolata-11" )

;; maximize screen on startup
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; disable menu on startup
(menu-bar-mode -1)

;; disable tools on startup
(tool-bar-mode -1)

;; disable scroll bar on startup
(toggle-scroll-bar -1)

;; line numbers
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; auto-closing pairs
(electric-pair-mode 1)

;; no backup files
(setq make-backup-files nil)

;; set indent for html to 4 spaces
(setq sgml-basic-offset 4)

;; hide status bar
(setq-default mode-line-format nil)
