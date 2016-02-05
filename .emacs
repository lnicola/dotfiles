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
; (global-set-key "\C-w" 'kill-this-buffer)
(global-set-key "\C-z" 'undo)
(global-set-key [M-delete] 'delete-word)
(global-set-key [M-backspace] 'backward-delete-word)
(global-set-key [S-f12] 'visual-line-mode)

(global-set-key (kbd "C-S-o") 'open-line)

(global-set-key (kbd "RET") 'newline-and-indent)

(defun delete-word ()
  (interactive)
  (let ((beg (point)))
    (forward-word 1)
    (delete-region beg (point))))

(defun backward-delete-word ()
  (interactive)
  (let ((beg (point)))
    (backward-word 1)
    (delete-region beg (point))))

(defun reindent-buffer ()
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))
(global-set-key [f12] 'reindent-buffer)

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

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;(let ((default-directory "~/.emacs.d/lisp/"))
;  (normal-top-level-add-to-load-path '("."))
;  (normal-top-level-add-subdirs-to-load-path))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))
(package-initialize)

(require 'web-mode)

(setq web-mode-enable-current-element-highlight t)
(setq web-mode-enable-current-column-highlight t)

(setq web-mode-ac-sources-alist
  '(("css" . (ac-source-css-property))
    ("html" . (ac-source-words-in-buffer ac-source-abbrev))))

(add-hook 'web-mode-before-auto-complete-hooks
	'(lambda ()
		(let ((web-mode-cur-language
			(web-mode-language-at-pos)))
			(if (string= web-mode-cur-language "php")
				(yas-activate-extra-mode 'php-mode)
				(yas-deactivate-extra-mode 'php-mode)
			)
			(if (string= web-mode-cur-language "css")
				(setq emmet-use-css-transform t)
				(setq emmet-use-css-transform nil)
			)
		)
	)
)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (set-face-attribute 'web-mode-current-element-highlight-face nil :background "LightYellow2")
  (set-face-attribute 'web-mode-current-column-highlight-face nil :background "LightYellow2"))

(setq-default indent-tabs-mode nil)

(add-hook 'web-mode-hook 'my-web-mode-hook)

(require 'auto-complete-config)
(ac-config-default)

(setq-default truncate-lines t)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

(require 'hideshow)
(require 'sgml-mode)
(require 'nxml-mode)

(add-to-list 'hs-special-modes-alist
             '(nxml-mode
               "<!--\\|<[^/>]*[^/]>"
               "-->\\|</[^/>]*[^/]>"

               "<!--"
               sgml-skip-tag-forward
               nil))



(add-hook 'nxml-mode-hook 'hs-minor-mode)

;; optional key bindings, easier than hs defaults
(define-key nxml-mode-map (kbd "C-c h") 'hs-toggle-hiding)

; (load "auctex.el" nil t t)
; (load "preview-latex.el" nil t t)

(setq TeX-parse-self t)
(setq TeX-auto-save t)
(setq-default TeX-master nil)
(setq TeX-PDF-mode t)
