(defconst ranjanified-banner-text
  "
   ;; **       **                                 ********                            
   ;; ***      **           **                    *********                         **
   ;; ****     **           **                    **      **                        **
   ;; ** **    **   ** **   **      * **   **     **      **   ** **  **   **       **    ** **  **   **
   ;; **  **   ** **     ** **     ** ** **  **   ** *****   **    ** ** **  **     **  **    ** ** **  **
   ;; **   **  ****   ** ** **     ** ***    **   ** *****  **  ** ** ***    **     ** **  ** ** ***    **
   ;; **    ** **   **   ** **     ** **     **   **  **       **  ** **     ****   **   **   ** **     **
   ;; **     ****  **    ** **  ** ** **     **   **   **     **   ** **     ****   **  **    ** **     **
   ;; **      ***  **    ** ** **  ** **     **   **    **     **  ** **     ** ** **   **    ** **     **
   ;; **       **    **  **  ***   ** **     **   **     **     ** ** **     **  ***      **  ** **     **
   \n \n
  "     
  "A banner to display in start buffer")

;; (defun ranjanified-repl-hook ()
;;   (interactive "Choose your REPL")
;;   (message "%s" "(ranjanified-repl-hook)"))

(let((prompt-text "ranjanified>")
     (ranjanified-buffer (get-buffer-create "*ranjanified*")))
  (with-current-buffer ranjanified-buffer
      (goto-char (point-max))
      (insert ranjanified-banner-text)
      (setq ielm-prompt prompt-text)
      ;; (add-hook 'ielm-mode-hook 'ranjanified-repl-hook)
      ;; (ielm (buffer-name ranjanified-buffer))
      (require 'ielm)
      (inferior-emacs-lisp-mode)
      (switch-to-buffer ranjanified-buffer)
    ))
