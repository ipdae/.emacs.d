
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
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#c5c8c6" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#8abeb7" "#373b41"))
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default)))
 '(elm-format-on-save t)
 '(fci-rule-color "#373b41")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(hl-sexp-background-color "#1c1f26")
 '(package-selected-packages
   (quote
    (docker company company-racer cargo rust-mode tide color-theme-sanityinc-tomorrow haskell-mode yaml-mode dockerfile-mode highlight-indentation ag diff-hl nord-theme web-mode virtualenvwrapper undo-tree swiper qml-mode python-mode pymacs pallet nyan-mode nsis-mode material-theme markdown-mode magit jinja2-mode jedi init-loader ido-vertical-mode flycheck-pyflakes flatui-theme exec-path-from-shell dired+ csharp-mode color-theme-solarized)))
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
