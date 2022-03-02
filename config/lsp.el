;;;=================== LSP-MODE ===================
;; Initalization
(use-package lsp-mode
  :straight t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :commands
  (lsp lsp-deferred)
  :hook
  (lsp-mode . lsp-enable-which-key-integration)
  ;; LSP LANGUAGES SUPPORT
  (c-mode . lsp-deferred)             ; ENABLE C PROGRAMING
  (c++-mode . lsp-deferred)           ; ENABLE C++ PROGRAMING
  (c-or-c++-mode . lsp-deferred)      ; ENABLE C/C++ PROGRAMING
  (rustic-mode . lsp-deferred)        ; ENABLE RUST PROGRAMING
  (lua-mode . lsp-deferred)           ; ENABLE LUA PROGRAMING
  (typescript-mode . lsp-deferred)    ; ENABLE TYPESCRIPT PROGRAMING
  (sh-mode . lsp-deferred)            ; ENABLE SHELL SCRIPT
  (python-mode . (lambda ()
                   (require 'lsp-pyright)
                   (lsp-deferred)))
  )

;; LSP-UI MODULES
(use-package lsp-ui
  :commands lsp-ui-mode)

;; RUST LANGUAGE SUPPORT
(use-package rustic
  :mode "\\.rs\\'" )
;; LUA LANGUAGE SUPPORT
(use-package lua-mode
  :mode "\\.lua\\'" )
;; TYPESCRIPT LANGUAGE SUPPORT
(use-package typescript-mode
  :mode "\\.ts\\'"
  :config
  (setq typescript-indent-level 2))
;; PYTHON LANGUAGE SUPPORT
(use-package lsp-pyright
  :straight t
  :mode "\\.py\\'")
;; PYHTON ENV
(use-package pyvenv
  :straight t
  :init
  (setenv "WORKON_HOME" "~/.pyenv/versions"))

;; FLYCHECK
(use-package flycheck
  :straight t
  :init (global-flycheck-mode))

;; MARKDOWN-MODE NOT LSP
(use-package markdown-mode
  :straight t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

;; DEBUG
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
