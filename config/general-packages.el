;;================= GENERAL PACKAGES =================

;; COMPANY MODE ==================
(use-package company
	     :straight t
	     :init
	     (add-hook 'after-init-hook 'global-company-mode))

;; ENABLE ido MODE ===============
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(ido-mode t)

;; BUILD-IN PROJECT PACKAGE =======
(require 'project)
(global-set-key (kbd "C-x p f") #'project-find-file )
