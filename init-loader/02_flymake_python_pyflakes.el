(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(setq flymake-python-pyflakes-executable "flake8")
(setq flymake-cursor-mode 't)
(add-hook 'flymake-mode-hook
		  '(lambda ()
			 (local-set-key (kbd "C-c n")
							'flymake-goto-next-error)))
(add-hook 'flymake-mode-hook
		  '(lambda ()
			 (local-set-key (kbd "C-c p")
							'flymake-goto-prev-error)))
(setq flymake-python-pyflakes-extra-arugments '("--ignore=W806"))
