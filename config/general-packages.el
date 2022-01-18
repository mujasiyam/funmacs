 ;;================= GENERAL PACKAGES =================

;; COMPANY MODE ==================
(use-package company
  :straight t
  :after
  lsp-mode
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :bind
  (:map company-active-map
	("<tap>" . company-complete-selection))
  (:map lsp-mode-map
	("<tap>" . company-indent-or-complete-common))
)


;; ENABLE ido MODE ===============
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(ido-mode t)

;; ENABLE PROJECT PACKAGE =======
(require 'project)
(global-set-key (kbd "C-x p f") #'project-find-file )


