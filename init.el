(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)

(menu-bar-mode -1)

(load-theme 'doom-dracula t)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(set-face-attribute 'default nil :font "Cousine-11" )

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#ffffff" "#c82829" "#718c00" "#eab700" "#4271ae" "#c678dd" "#8abeb7" "#4d4d4c"])
 '(custom-safe-themes
   '("613aedadd3b9e2554f39afe760708fc3285bf594f6447822dd29f947f0775d6c" "fe2539ccf78f28c519541e37dc77115c6c7c2efcec18b970b16e4a4d2cd9891d" default))
 '(exwm-floating-border-color "#d6d4d4")
 '(fci-rule-color "#a3a1a1")
 '(highlight-tail-colors
   ((("#f0f3e5" "#669900" "green")
     . 0)
    (("#f3f8f7" "#8abeb7" "cyan")
     . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#f2f2f2" "#4271ae"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#f2f2f2" "#718c00"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#f2f2f2" "#8e908c"))
 '(objed-cursor-color "#c82829")
 '(package-selected-packages
   '(blacken flycheck elpy auto-complete js2-mode doom-themes key-chord emmet-mode php-mode web-mode evil-visual-mark-mode use-package))
 '(pdf-view-midnight-colors (cons "#4d4d4c" "#ffffff"))
 '(rustic-ansi-faces
   ["#ffffff" "#c82829" "#718c00" "#eab700" "#4271ae" "#c678dd" "#8abeb7" "#4d4d4c"])
 '(vc-annotate-background "#ffffff")
 '(vc-annotate-color-map
   (list
    (cons 20 "#718c00")
    (cons 40 "#999a00")
    (cons 60 "#c1a800")
    (cons 80 "#eab700")
    (cons 100 "#eda70a")
    (cons 120 "#f19714")
    (cons 140 "#f5871f")
    (cons 160 "#e5825e")
    (cons 180 "#d57d9d")
    (cons 200 "#c678dd")
    (cons 220 "#c65da1")
    (cons 240 "#c74265")
    (cons 260 "#c82829")
    (cons 280 "#b94141")
    (cons 300 "#ab5c5a")
    (cons 320 "#9c7673")
    (cons 340 "#a3a1a1")
    (cons 360 "#a3a1a1")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(ac-config-default)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;;Exit insert mode by pressing j and then j quickly
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

;; ====================================
;; Python Development Setup
;; ====================================
;; Enable elpy
(elpy-enable)

;; Enable Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Enable line numbers
;; set type of line numbering (global variable)
(setq display-line-numbers-type 'relative) 

;; activate line numbering in all buffers/modes
(global-display-line-numbers-mode) 
