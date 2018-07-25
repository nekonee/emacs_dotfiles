(add-hook 'prog-mode-hook (lambda()
			    (rainbow-delimiters-mode 1)
			    (show-paren-mode 1)
			    (setq indent-tabs-mode nil)
			    (setq tab-width 2)
			    )
	  )

(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
(add-hook 'focus-out-hook #'garbage-collect)

(add-hook 'web-mode-hook (lambda ()
			   (setq web-mode-markup-indent-offset 2)
			   (setq web-mode-attr-indent-offset 2)
			   (setq web-mode-css-indent-offset 2)
			   (setq web-mode-code-indent-offset 2)
			   (setq css-indent-offset 2)
			   (rainbow-mode t)
			   (set-face-background 'web-mode-current-element-highlight-face "khaki1")
			   )
	  )


(defun js-modes-hook ()
  (emmet-mode t)
  (smartparens-mode t)
  (auto-complete-mode t)
  (rainbow-mode t)
  (add-to-list 'ac-sources 'ac-source-filename)
  )

(add-hook 'rjsx-mode-hook 'js-modes-hook)
(add-hook 'js2-mode-hook 'js-modes-hook)

(add-hook 'python-mode-hook (lambda()
			      (anaconda-mode t)
			      )
	  )

(add-hook 'lua-mode-hook (lambda()
			   (setq lua-indent-level 2)
			   )
	  )

(provide 'hooks)
