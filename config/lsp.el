;;;=================== LSP-MODE ===================
;; Initalization
(use-package lsp-mode
  :straight t
  :init 
  (setq lsp-keymap-prefix "C-c l")
  :config
  (lsp-enable-which-key-integration t)
  :commands
  (lsp lsp-deferred))
  :hook
  ;; LSP LANGUAGES SUPPORT
  (add-hook 'c-mode-hook #'lsp-deferred)      ;; ENABLE C PROGRAMING 
  (add-hook 'c++-mode-hook #'lsp-deferred)    ;; ENABLE C++ PROGRAMING

;; LSP-UI MODULES
(use-package lsp-ui
  :commands lsp-ui-mode)
