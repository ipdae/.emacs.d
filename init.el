
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/init-loader/")

(when (memq window-system `(mac ns))
  (exec-path-from-shell-initialize)
  (let ((fontset "fontset-default"))
    (set-fontset-font fontset 'hangul
                      '("NanumGothicCoding 14" . "unicode-bmp"))
    )
  )
(exec-path-from-shell-copy-env "PATH")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elm-format-on-save t)
 '(fci-rule-color "#373b41")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(hl-sexp-background-color "#1c1f26")
 '(package-selected-packages
   (quote
    (dash elpy find-file-in-project flycheck ghub git-commit ivy pythonic yasnippet auto-virtualenv auto-virtualenvwrapper helm-projectile projectile use-package docker-compose-mode pyenv-mode-auto docker company company-racer cargo rust-mode tide color-theme-sanityinc-tomorrow haskell-mode yaml-mode dockerfile-mode highlight-indentation ag diff-hl nord-theme web-mode virtualenvwrapper undo-tree swiper qml-mode python-mode pymacs pallet nyan-mode nsis-mode material-theme markdown-mode magit jinja2-mode jedi init-loader ido-vertical-mode flycheck-pyflakes flatui-theme exec-path-from-shell dired+ csharp-mode color-theme-solarized)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#cc6666")
     (40 . "#de935f")
     (60 . "#f0c674")
     (80 . "#b5bd68")
     (100 . "#8abeb7")
     (120 . "#81a2be")
     (140 . "#b294bb")
     (160 . "#cc6666")
     (180 . "#de935f")
     (200 . "#f0c674")
     (220 . "#b5bd68")
     (240 . "#8abeb7")
     (260 . "#81a2be")
     (280 . "#b294bb")
     (300 . "#cc6666")
     (320 . "#de935f")
     (340 . "#f0c674")
     (360 . "#b5bd68"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)


(if (eq system-type 'darwin)
    (defun new-emacs ()
      (interactive)
      (shell-command "open -n -a /Applications/Emacs.app")))

;; (setq mac-command-modifier 'meta)
