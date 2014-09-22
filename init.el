(require 'cask "~/.cask/cask.el")
(cask-initialize)

(init-loader-load "~/.emacs.d/init-loader/")

(when (memq window-system `(mac ns))
  (exec-path-from-shell-initialize))
(exec-path-from-shell-copy-env "PATH")
