(require 'package)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#ffffff" "#183691" "#969896" "#a71d5d" "#969896" "#969896" "#795da3" "#969896"])
 '(custom-safe-themes
   (quote
    ("748d024b0d016cc0e7a4326577ce12c6bc918b273acecd355548d7477ad2fc5c" "0c860c4fe9df8cff6484c54d2ae263f19d935e4ff57019999edbda9c7eda50b8" "583148e87f779040b5349db48b6fcad6fe9a873c6ada20487e9a1ec40d845505" "e9d47d6d41e42a8313c81995a60b2af6588e9f01a1cf19ca42669a7ffd5c2fde" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "80d5a22931c15756b00fb258b80c93b8bc5096bb698dadfb6155ef3550e1c8fb" "7922b14d8971cce37ddb5e487dbc18da5444c47f766178e5a4e72f90437c0711" "5bd2bb66f19c5c4be8e989d289612a537e5ecef248c722497e5424c2bb3e71c4" "c1284dd4c650d6d74cfaf0106b8ae42270cab6c58f78efc5b7c825b6a4580417" "02591317120fb1d02f8eb4ad48831823a7926113fa9ecfb5a59742420de206e0" "5e5771e6ea0c9500aa87e987ace1d9f401585e22a976777b6090a1554f3771c6" default)))
 '(fci-rule-color "#969896")
 '(global-display-line-numbers-mode t)
 '(hl-sexp-background-color "#1c1f26")
 '(nrepl-message-colors
   (quote
    ("#183691" "#969896" "#a71d5d" "#969896" "#0086b3" "#795da3" "#a71d5d" "#969896")))
 '(package-selected-packages (quote (abyss-theme ## emmet-mode php-mode)))
 '(pdf-view-midnight-colors (quote ("#969896" . "#f8eec7")))
 '(tool-bar-mode nil)
 '(vc-annotate-background "#b0cde7")
 '(vc-annotate-color-map
   (quote
    ((20 . "#969896")
     (40 . "#183691")
     (60 . "#969896")
     (80 . "#969896")
     (100 . "#969896")
     (120 . "#a71d5d")
     (140 . "#969896")
     (160 . "#969896")
     (180 . "#969896")
     (200 . "#969896")
     (220 . "#63a35c")
     (240 . "#0086b3")
     (260 . "#795da3")
     (280 . "#969896")
     (300 . "#0086b3")
     (320 . "#969896")
     (340 . "#a71d5d")
     (360 . "#969896"))))
 '(vc-annotate-very-old-color "#969896"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inhibit-splash-screen t)

;; set default font and size
(set-default-font "DejaVu Sans Mono 11")

;; maximize screen on startup
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; disable menu on startup
(menu-bar-mode -1)

;; disable tools on startup
(tool-bar-mode -1)

;; disable scroll bar on startup
(toggle-scroll-bar -1)

;; change theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'idea-darkula t)

;; set line numbers
(global-display-line-numbers-mode)
