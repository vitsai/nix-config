(tool-bar-mode -1)
(menu-bar-mode -1)
;;(load-file "/usr/share/emacs/site-lisp/cedet/cedet-devel-load.el")
;;(semantic-load-enable-code-helpers)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
;; (package-refresh-contents) ;;don't want this every single time because it's slow though
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")))
;(load "auctex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(jdee-jdk-registry (quote (("1.8" . "/usr/lib64/jvm/java-8-openjdk"))))
 '(package-selected-packages (quote (haskell-mode nlinum jdee auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/vendor/arduino-mode")
(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)
