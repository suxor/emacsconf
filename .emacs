(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(set-face-background 'vertical-border "green")
(set-face-foreground 'vertical-border "black")
(set-face-background 'mode-line "green")
(set-face-foreground 'mode-line "black")

;charset
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8-unix)
(set-file-name-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-next-selection-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(setq locale-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(add-to-list 'load-path "~/local/share/emacs/site-lisp/eim")
(autoload 'eim-usage-package "eim" "Another emacs input method")
(register-input-method
    "eim-py" "euc-cn" 'eim-use-package
    "py" "pinyin" "py.txt")
(register-input-method
    "eim-wb" "euc-cn" 'eim-use-package
    "wubi" "wubi" "wb.txt")
(require 'eim-extra)
(global-set-key ";" 'eim-insert-ascii)

;set gtags if need
;(add-to-list 'load-path "~/.emacs.d/lisp")
;(autoload 'gtags-mode "gtags" "" t)
;(setq c-mode-hook
;    '(lambda ()
;        (gtags-mode 1)
;))
