;; using some packages by magnars (Magnar Sveen)
;; that i found by watching emacs rocks

(use-package multiple-cursors
  :config
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this))

(use-package expand-region
  :config
  (global-set-key (kbd "M-@") 'er/expand-region))
