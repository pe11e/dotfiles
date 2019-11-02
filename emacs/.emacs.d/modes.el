;; Modes

(ido-mode t)
(ido-everywhere t)
(electric-indent-mode t)
(global-visual-line-mode t)
(global-linum-mode t)
(electric-pair-mode 1)

(when (window-system)
 (scroll-bar-mode -1)
 (tool-bar-mode -1))

(delete-selection-mode t)
(show-paren-mode t)

;; Web mode
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode))
(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))

(provide 'modes)
