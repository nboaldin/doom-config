;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name ""
      user-mail-address "")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Fira Code" :size 13)
      doom-variable-pitch-font (font-spec :family "Fira Code" :size 12))
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-sourcerer)
;;(setq doom-theme 'doom-nord)
;; (setq doom-theme 'doom-fairy-floss)
;; (setq doom-theme 'doom-laserwave)
;;(setq doom-theme 'doom-dracula)
(setq doom-theme 'doom-wilmersdorf)
;; (setq doom-theme 'doom-acario-light)


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;; (setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Get projectile to recognize go projects
;; (projectile-register-project-type 'go '("go.mod")
;;                                   :project-file "go.mod"
;; 				  :run "go run main.go")

(require 'key-chord)
(key-chord-mode t)
(key-chord-define-global "kj" 'evil-normal-state)
(key-chord-define-global "KJ" 'evil-normal-state)

(setq doom-themes-treemacs-theme "all-the-icons")
(require 'treemacs)
(treemacs-resize-icons '17)

(projectile-register-project-type 'go '("main.go")
                                  :project-file "main.go"
				  :compile "go build"
				  :test "go test"
				  :run "go run main.go")
