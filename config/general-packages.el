;;================= GENERAL PACKAGES =================

;; COMPANY MODE ==================
(use-package company
  :straight t
  :after
  lsp-mode
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  ; Show suggestions after entering one character.
  (setq company-minimum-prefix-length 1)
  ; No delay in showing suggestions.
  (setq company-idle-delay 0)
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

;; ENABLE PROJECT PACKAGE ========
(require 'project)
(global-set-key (kbd "C-x p f") #'project-find-file )

;; YASNIPPET =====================
(use-package yasnippet
  :straight t
  :config
  (yas-global-mode 1)) ;; activate yaggsnippet
;; YASNIPPET-SNIPPETS ============
(use-package yasnippet-snippets
  :straight t)

;; FORMAT-ALL-BUFFER
(use-package format-all
  :straight t
  :config
  (add-hook 'prog-mode-hook 'format-all-mode)
  (add-hook 'format-all-mode-hook 'format-all-ensure-formatter)
  )
