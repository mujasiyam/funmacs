;;================= GENERAL PACKAGES =================

;; COMPANY ========
(use-package company
	     :straight t
	     :init
	     (add-hook 'after-init-hook 'global-company-mode))
