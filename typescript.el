;; (require 'lsp-javascript)
(require 'typescript-mode)

(defun setup-tide-mode ()
  ;; (interactive)
  (require 'company)
  (require 'tide)
  (tide-setup)
  (flycheck-mode +1)
  ;; enable typescript-tslint checker
  (flycheck-add-mode 'typescript-tslint 'web-mode)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))

(add-hook 'web-mode-hook
          (lambda ()
            (when (or
		   (string-equal "svelte" (file-name-extension buffer-file-name))
		   (string-equal "tsx" (file-name-extension buffer-file-name)))
              (setup-tide-mode))))

;; (add-hook 'typescript-mode-hook #'lsp-deferred)
(add-hook 'typescript-mode-hook #'setup-tide-mode)

