;; this is a file for mods which can be enabled at startup

(use-package company
  :config
  (global-company-mode))

(use-package yasnippet
  :config
  (yas-global-mode)
  (define-key yas-minor-mode-map (kbd "TAB") yas-maybe-expand))

(use-package which-key
  :config
  (which-key-mode))
