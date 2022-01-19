;;;=================== LSP-MODE ===================
;; Initalization
(use-package lsp-mode
  :straight t
  :init 
  (setq lsp-keymap-prefix "C-c l")
  :config
  (lsp-enable-which-key-integration t)
  :commands
  (lsp lsp-deferred)
  :hook
  ;; LSP LANGUAGES SUPPORT
  (c-mode . lsp-deferred)             ;; ENABLE C PROGRAMING 
  (c++-mode . lsp-deferred)           ;; ENABLE C++ PROGRAMING
  (rustic-mode . lsp-deferred)        ;; ENABLE RUST PROGRAMING
  (lua-mode . lsp-deferred)           ;; ENABLE LUA PROGRAMING
  )

;; LSP-UI MODULES
(use-package lsp-ui
  :commands lsp-ui-mode)

;; RUST LANGUAGE SUPPORT
(use-package rustic)
;; LUA LANGUAGE SUPPORT
(use-package lua-mode)
