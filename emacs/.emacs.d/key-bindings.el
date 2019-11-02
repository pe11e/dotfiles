;; Key bindings
(global-set-key (kbd "M-,") 'move-text-up)
(global-set-key (kbd "M-.") 'move-text-down)

(define-key dired-mode-map (kbd "f") 'dired-find-alternate-file)
(define-key dired-mode-map (kbd "^") (lambda ()
                                       (interactive)
                                       (find-alternate-file "..")))

;;Multiple cursors
(global-set-key (kbd "C-c <right>") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c <left>") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c <down>") 'mc/mark-all-like-this)

;; Rebind meta key
(setq ns-option-modifier 'meta
      ns-right-option-modifier 'none)

(provide 'key-bindings)
