(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/init-loader/")

(when (memq window-system `(mac ns))
  (exec-path-from-shell-initialize)
  (let ((fontset "fontset-default"))
    (set-fontset-font fontset 'hangul
                      '("NanumGothicCoding" . "unicode-bmp"))
    )
  )
(exec-path-from-shell-copy-env "PATH")

