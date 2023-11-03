;; enable ido mode
(ido-mode)

;; make M-x use ido mode
(use-package smex
  :config
  (global-set-key (kbd "M-x") 'smex))
