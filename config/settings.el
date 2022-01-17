;;=============================== GENERAL SETTINGS ===========================

;; UTF-8
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
 
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

;; ENABLE ido Mode
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(ido-mode t)
