(set-language-environment "UTF-8")
(set-terminal-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(iswitchb-mode t)
(icomplete-mode 99)
(global-linum-mode 1)
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq auto-save-default nil)

(color-theme-initialize)
(load-theme 'material t)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.?css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
(setq web-mode-markup-indent-offset 4)
(setq web-mode-css-indent-offset 4)
(setq web-mode-code-indent-offset 4)

(setq web-mode-indent-style 1)
(setq web-mode-comment-style 2)

(setq web-mode-engines-alist
      '(("jinja" . "\\.html\\'")))

(setq default-directory "~/")
(setq command-line-default-directory "~/")

(setq ring-bell-function #'ignore)

(global-undo-tree-mode t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(nyan-mode 1)

(global-set-key (kbd "C-x g") 'magit-status)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

(diff-hl-flydiff-mode)
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")


(global-set-key (kbd "<s-left>") 'windmove-left)
(global-set-key (kbd "<s-right>") 'windmove-right)
(global-set-key (kbd "<s-up>") 'windmove-up)
(global-set-key (kbd "<s-down>") 'windmove-down)


(setq python-shell-completion-native-enable nil)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1)
  (local-set-key (kbd "C-.") 'tide-jump-to-definition)
  (local-set-key (kbd "C-,") 'tide-jump-back)
  (setq typescript-indent-level 2))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

(require 'flycheck)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "ts" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; enable typescript-tslint checker
(flycheck-add-mode 'typescript-tslint 'web-mode)

(add-hook 'after-init-hook 'global-company-mode)

;; (require 'rust-mode)
;; (autoload 'rust-mode "rust-mode" nil t)
;; (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'racer-mode-hook #'company-mode)
;; (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
;; (setq company-tooltip-align-annotations t)

(if (eq system-type 'darwin)
    (defun new-emacs ()
      (interactive)
      (shell-command "open -n -a /Applications/Emacs.app")))

(require 'pyenv-mode)
(defun projectile-pyenv-mode-set ()
  "Set pyenv version matching project name."
  (let ((project (projectile-project-name)))
    (if (member project (pyenv-mode-versions))
        (pyenv-mode-set project)
      (pyenv-mode-unset))))

(add-hook 'projectile-after-switch-project-hook 'projectile-pyenv-mode-set)

(require 'pyenv-mode-auto)

(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(use-package elpy
   :config
   (package-initialize)
   (elpy-enable)
   (setenv "WORKON_HOME" "~/.pyenv/versions/")
   (setq elpy-rpc-backend "jedi")
   (setq python-shell-interpreter "~/.pyenv/shims/python3")
 )

(define-key elpy-mode-map (kbd "C-.") 'elpy-goto-assignment-other-window)
(define-key global-map (kbd "C-,") 'pop-tag-mark)

(require 'helm-projectile)
(global-set-key (kbd "C-x p") 'helm-projectile)

(require 'auto-virtualenv)
(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)
