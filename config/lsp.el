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
  (sh-mode . lsp-deferred)
  )

;; LSP-UI MODULES
(use-package lsp-ui
  :commands lsp-ui-mode)

;; RUST LANGUAGE SUPPORT
(use-package rustic)
;; LUA LANGUAGE SUPPORT
(use-package lua-mode)

;; Debug
(use-package dap-mode
  :straight t
  :diminish dap-mode
  :after (lsp-mode)
  :functions dap-hydra/nil
  :bind (:map lsp-mode-map
              ("<f5>" . dap-debug)
              ("M-<f5>" . dap-hydra))
  :hook ((dap-mode . dap-ui-mode)
	 (dap-session-created . (lambda (&_rest) (dap-hydra)))
	 (dap-terminated . (lambda (&_rest) (dap-hydra/nil)))))
