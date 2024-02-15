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
