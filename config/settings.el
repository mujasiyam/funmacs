;;=============================== GENERAL SETTINGS ===========================

;; UTF-8
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; PERFORMANCE
(setq gc-cons-threshold (* 100 1024 1024)) ; Increase garbage collector threshold 1MB
(setq gc-cons-threshold 100000000)         ; Increase garbage collector threshold 100MB

;; ENABLE LINE NUMBERS
(global-display-line-numbers-mode)

;; DISABLE MENU TOOLBAR SCROLBAR
(menu-bar-mode -1)                      ; disable menu bar
(toggle-scroll-bar -1)                  ; disable scroll bar
(tool-bar-mode -1)                      ; diasble tool bar
(set-fringe-mode 10)                    ; give some breathing room

:;; MAKE ESC QUITE PROMPTE
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; SET UP THE VISIBLE BELL
(setq visible-bell t)

;; DISABLE COMMANDS WITHOUT USER CONFIRMATION
(put 'upcase-region 'disabled nil)

;; ENABLE AUTOCOMPTE PAIRED BRACKETS
(electric-pair-mode 1)

;; OPEN TERMINAL KEYBIND
(global-set-key (kbd "C-c t") 'shell)

;; CHANGE TAB SIZE
(setq-default tab-width 4)		; enable indent global
(setq-default c-basic-offset 4)		; enable indent for C/C++
