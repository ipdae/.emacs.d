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

(color-theme-initialize)
(color-theme-solarized-light)
