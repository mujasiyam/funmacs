
;;=============================== PACKAGES MANAGEMENT =========================
;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)
 
;; STREAIGHT.el PACKAGE MANAGER
(defvar bootstrap-version)
(let ((bootstrap-file
        (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
       (bootstrap-version 5))
   (unless (file-exists-p bootstrap-file)
     (with-current-buffer
         (url-retrieve-synchronously
          "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
          'silent 'inhibit-cookies)
       (goto-char (point-max))
       (eval-print-last-sexp)))
   (load bootstrap-file nil 'nomessage))

;; INITIALIZED USE-PACKAGES
(straight-use-package 'use-package)
(setq use-package-always-ensure t)
;; Configure use-package to use straight.el by default
(use-package straight
  :custom (straight-use-package-by-default t))


