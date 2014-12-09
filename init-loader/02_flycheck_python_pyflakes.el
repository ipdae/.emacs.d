(add-hook 'python-mode-hook 'flycheck-mode)
(setq flycheck-python-pyflakes-executable "flake8")
(setq flycheck-cursor-mode 't)
(add-hook 'flycheck-mode-hook
		  '(lambda ()
			 (local-set-key (kbd "C-c n")
							'flycheck-next-error)))
(add-hook 'flycheck-mode-hook
		  '(lambda ()
			 (local-set-key (kbd "C-c p")
							'flycheck-previous-error)))
