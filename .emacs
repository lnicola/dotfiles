(add-to-list 'load-path "~/elisp")

(setq inhibit-splash-screen t)
(cua-mode 1)
(transient-mark-mode 1)
(setq cua-keep-region-after-copy t)

(require 'recentf)
(recentf-mode)

(global-set-key [C-tab] 'other-window)
(global-set-key [M-f4] 'save-buffers-kill-emacs)

(global-set-key "\C-a" 'mark-whole-buffer)
(global-set-key "\C-f" 'isearch-forward)
(global-set-key "\C-o" 'find-file)
(global-set-key "\C-s" 'save-buffer)
(global-set-key "\C-w" 'kill-this-buffer)
(global-set-key "\C-z" 'undo)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(setq delete-by-moving-to-trash t)

(setq column-number-mode t)

(require 'package)

(add-to-list
 'package-archives
 '("melpa" . "http://melpa.org/packages/")
 t)

(package-initialize)


(package-install 'magit)

; (load "auctex.el" nil t t)
; (load "preview-latex.el" nil t t)

(setq TeX-parse-self t)
(setq TeX-auto-save t)
(setq-default TeX-master nil)
(setq TeX-PDF-mode t)
