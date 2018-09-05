(set-default 'ac-sources
             '(ac-source-abbrev
               ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers))
(ac-config-default)
(global-auto-complete-mode t)
(defadvice auto-complete-mode (around disable-auto-complete-for-python)
  (unless (eq major-mode 'python-mode) ad-do-it))

(ad-activate 'auto-complete-mode)
