;; inhibit splash screen
(setq inhibit-splash-screen t)

;; set default font and size
(set-face-attribute 'default nil :font "Cousine-11" )

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
