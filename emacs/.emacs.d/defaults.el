;; Defaults

;; Font
(set-frame-font "Source Code Pro for Powerline-14")

;; Theme
(load-theme 'atom-one-dark t)

;; Titlebar
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon nil)
(setq frame-title-format nil)

;; Disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)

(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

;; Put emacs first when open
(x-focus-frame nil)

;; Disable first hello/tutorial page
(setq inhibit-startup-message t)

;; Scroll behaviour
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)

;; Line and column numbers
(setq truncate-lines t)

;; Org mode
(setq org-log-done 'time)
(setq org-src-fontify-natively t)

;; Indentation
(setq indent-tabs-mode nil)
(setq tab-width 2)
(setq css-indent-offset 2)
(custom-set-variables
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t))

(fset 'yes-or-no-p 'y-or-n-p)
(put 'dired-find-alternate-file 'disabled nil)

(provide 'defaults)
