 (let (
(gc-cons-threshold most-positive-fixnum)
(file-name-handler-alist nil))

(setq inhibit-startup-message t)
(setq save-interprogram-paste-before-kill t)
(setq make-backup-files nil)
(setq package-enable-at-startup nil)

(require 'package)
(setq package-archives 
'(("gnu"   . "http://elpa.emacs-china.org/gnu/")
("melpa" . "http://elpa.emacs-china.org/melpa/")))

(package-initialize)

(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (smartparens irony-eldoc better-shell flycheck multiple-cursors beacon company-irony company yasnippet-snippets which-key use-package try transient org-bullets git-commit counsel color-theme auto-org-md auto-complete ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
