;;; EMACS CONFIGURATION FILE

;; Desired Packages
(setq package-list '(arduino-mode
		     yasnippet-snippets
		     yasnippet
		     flycheck-rtags
		     company-rtags
		     cmake-font-lock
		     cmake-mode
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
		     package-build
		     epl
		     git
		     commander
		     f
		     dash
		     s))

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

(setq backup-inhibited t)

;; General window appearance
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(add-hook 'window-setup-hook 'toggle-frame-maximized t)
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
