;; initial frame size
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 130))

;; inhibit splash screen
(setq inhibit-splash-screen t)

;; set default font and size
;; (set-face-attribute 'default nil :font "Hermit-11" )

;; disable menu on startup
(menu-bar-mode -1)

;; disable tools on startup
(tool-bar-mode -1)

;; line numbers
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; auto-closing pairs
(electric-pair-mode 1)
