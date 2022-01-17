;;;=================== LSP-MODE ===================
;; Initalization
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (lsp-enable-which-key-integration t)
  :commands
  (lsp lsp-deferred))
