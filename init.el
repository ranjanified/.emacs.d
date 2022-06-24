
(load-theme 'wombat)

;; Add to load-path all dirs and sub-dirs under 'default-directory
(let ((default-directory "~/.emacs.d/packages/"))
  (normal-top-level-add-subdirs-to-load-path))

(load "~/.emacs.d/frame.settings")
(load "~/.emacs.d/my-scheme")
(load "~/.emacs.d/deno")
(load "~/.emacs.d/git")
(load "~/.emacs.d/ranjanified")
(load "~/.emacs.d/npm-mode")
(load "~/.emacs.d/web-mode")
(load "~/.emacs.d/typescript")
