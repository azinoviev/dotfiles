(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(setq inhibit-splash-screen t)         ; hide welcome screen

(menu-bar-mode -1)
(tool-bar-mode -1)

(setq c-basic-offset 4) ; indents 4 chars
(setq tab-width 4)          ; and 4 char wide for TAB
(setq indent-tabs-mode nil) ; And force use of spaces

(global-linum-mode 1) ; display line numbers in margin.

(add-to-list 'load-path "~/.emacs.d/emacs-color-theme-solarized")
(require 'solarized-dark-theme)

;; Who use the bar to scroll?
(scroll-bar-mode 0)

(add-to-list 'load-path "~/.emacs.d/python-mode")
(setq py-install-directory "~/.emacs.d/python-mode")
(require 'python-mode)
(require 'epc)

(require 'auto-complete-config)
(ac-config-default)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional
