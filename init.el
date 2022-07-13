;; Add Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; start server
(server-start)

;; Add smartparens
(require 'smartparens-config)
;; in coq mode
(add-hook 'coq-mode-hook #'smartparens-mode)

;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Enable key chord
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)

;; Enable smartparens
(add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)

;; Show line number
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; helm config
(require 'helm)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(define-key helm-map (kbd "TAB") #'helm-execute-persistent-action)
(define-key helm-map (kbd "<tab>") #'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z") #'helm-select-action)
(helm-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(deeper-blue))
 '(package-selected-packages
   '(company-coq helm tuareg proof-general ocamlformat merlin lsp-haskell evil-smartparens coq-commenter)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; yes to y
(defalias 'yes-or-no-p 'y-or-n-p)
