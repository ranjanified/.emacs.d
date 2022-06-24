(add-to-list 'default-frame-alist '(foreground-color . "AntiqueWhite3"))
(add-to-list 'default-frame-alist '(background-color . "grey12"))
(set-face-attribute 'default nil)
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)

(set-face-attribute 'default nil :height 130)


;; (setq initial-scratch-message start-banner)

