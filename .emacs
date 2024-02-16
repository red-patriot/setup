;;; EMACS CONFIGURATION FILE

;; Install packages ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Desired Packages
(setq package-list '(arduino-mode
		     yasnippet-snippets
		     yasnippet
		     flycheck-rtags
		     company-rtags
		     cmake-font-lock
		     cmake-mode
		     fic-mode
		     restart-emacs
		     powerline
		     company-jedi
		     jedi
		     spacemacs-theme
		     company-irony
		     flycheck
		     company
		     cyberpunk-2019-theme
		     cyberpunk-theme
		     ansi
		     fill-column-indicator
		     package-build
		     epl
		     git
		     commander
		     f
		     dash
		     s
		     nlinum))

;; Load package manager and repositories
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
			 ("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

;; Download and install packages
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Set Colors and Theme ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("562ffa9a1f65610e8be3e30297438e67b907b612aecf404f126fbc9c265c0fdc" default))
 '(package-selected-packages
   '(yasnippet-snippets
     spacemacs-theme
     restart-emacs
     powerline
     package-build
     nlinum
     jedi
     git
     flycheck-rtags
     epl
     cyberpunk-theme
     cyberpunk-2019-theme
     company-rtags
     company-jedi
     company-irony
     commander
     cmake-font-lock
     arduino-mode
     ansi)))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'black-space)
; add powerline customizations
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(powerline-active0 ((t
		       (:inherit mode-line
				 :background "blue1"
				 :foreground "SystemWindow"))))
 '(powerline-active1 ((t
		       (:inherit mode-line
				 :background "medium violet red"
				 :foreground "white"))))
 '(powerline-active2 ((t
		       (:inherit mode-line
				 :background "black"
				 :foreground "white")))))

;; General window appearance
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(add-hook 'window-setup-hook 'toggle-frame-maximized t)
(global-display-line-numbers-mode 1)
(setq backup-inhibited t)

;; Powerline
(require 'powerline)
(powerline-default-theme)
;; Splash screen appearance 
(defun splash-screen-conditional()
  "Open startup screen instead of *scratch* buffer."
  (when (and (string-equal "*scratch*" (buffer-name)) (not (buffer-file-name)))
          (display-splash-screen))
  )
(add-hook 'after-init-hook 'splash-screen-conditional)

;; Custom Keybindings
(global-set-key (kbd "C-x p") '(lambda()
				   (interactive)
				   (other-window -1)))
;; enable ido
(require 'ido)
(ido-mode t)

;; enable yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Programming config ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; show parenthesis and use a ruler at 80 columns
(add-hook 'prog-mode-hook 'show-paren-mode)
(setq fci-rule-color "#ff0000")
(setq fci-rule-width 1)
(setq fci-rule-use-dashes 0.5)
(add-hook 'prog-mode-hook 'fci-mode)
(add-hook 'prog-mode-hook (lambda() (set-fill-column 80)))

;; FIC mode to find TODO, FIXME, BUG, and KLUDGE
(add-hook 'prog-mode-hook 'fic-mode)

;; Custom file extensions
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
