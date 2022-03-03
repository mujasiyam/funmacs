;;==================== EGLOT ====================
;; Initialization
(use-package eglot
  :straight t)

(use-package company)
(global-company-mode)

(setq eldoc-echo-area-use-multiline-p nil)

(require 'eglot)
(define-key eglot-mode-map (kbd "C-c <tab>") #'company-complete) ; initiate the completion manually
(define-key eglot-mode-map (kbd "C-c e f n") #'flymake-goto-next-error)
(define-key eglot-mode-map (kbd "C-c e f p") #'flymake-goto-prev-error)
(define-key eglot-mode-map (kbd "C-c e r") #'eglot-rename)


(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-hook 'c-mode-hook 'eglot-ensure)                            ; ENABLE C PROGRAMMING
(add-hook 'c++-mode-hook 'eglot-ensure)                          ; ENABLE C++ PROGRAMMING
