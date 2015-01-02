(set-language-environment "UTF-8")
(set-terminal-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(iswitchb-mode t)
(global-linum-mode 1)
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq auto-save-default nil)

(color-theme-initialize)
(color-theme-solarized-light)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 4)

(setq web-mode-indent-style 1)
(setq web-mode-comment-style 2)

(setq web-mode-engines-alist
      '(("jinja" . "\\.html\\'")))

(setq default-directory "~/")
(setq command-line-default-directory "~/")

(setq ring-bell-function #'ignore)

(toggle-diredp-find-file-reuse-dir 1)

(global-undo-tree-mode t)
