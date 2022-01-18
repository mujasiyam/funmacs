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
  ;; LSP LANGUAGES SUPPORT
  :hook
  (add-hook 'c-mode-hook #'lsp-deferred)      ;; ENABLE C PROGRAMING 
  (add-hook 'c++-mode-hook #'lsp-deferred)    ;; ENABLE C++ PROGRAMING






