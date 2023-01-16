;; start the initial frame maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; start every frame maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; inhibit splash screen
(setq inhibit-splash-screen t)

;; set default font and size
(set-face-attribute 'default nil :font "Hermit-10" )

;; disable menu on startup
(menu-bar-mode -1)

;; disable tools on startup
(tool-bar-mode -1)

;; line numbers
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; packages to install
(setq package-list '(material-theme doom-themes markdown-mode js2-mode emmet-mode olivetti doom-modeline))

;; melpa repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; load-theme
(load-theme 'doom-acario-light t)

;; disable scroll bar on startup
(toggle-scroll-bar -1)

;; doom mode-line
(require 'doom-modeline)
(doom-modeline-mode 1)

;; doom-mode-line settings
(setq doom-modeline-enable-word-count t)
(setq doom-modeline-modal-icon t)
(setq doom-modeline-checker-simple-format t)
(display-time-mode t)

;; duplicate line function
(defun duplicate-line ()
  "duplicate current line"
  (interactive)
  (move-beginning-of-line 1)
  (kill-line 1)
  (yank 1)
  (yank 1)
  (previous-line 1))

(global-set-key "\C-xx" 'duplicate-line)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(doom-themes olivetti material-theme markdown-mode js2-mode emmet-mode doom-modeline)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
