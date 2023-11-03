;; bootstrap straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; setup use-package
(setq straight-use-package-by-default t)

;; load all plugins
(defun list-dir (x)
    (split-string (shell-command-to-string (concat "ls -A " x))))

(let (l)
  (setq l (list-dir (concat user-emacs-directory "plugs/")))
  (dolist (n l)
    (load-file (concat user-emacs-directory "plugs/" n))))
