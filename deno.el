
;; (require 'lsp-javascript)
(require 'deno-mode)

(add-hook 'deno-repl-mode-hook (lambda () (message "%s Hooks: %d" "deno-repl-mode-hook executing..." (length hooks))))
;; (add-hook 'typescript-mode-hook #'lsp-deferred)


;; (defconst deno-cli-path "deno")

;; (defconst deno-cli-args '("repl"))

;; (defconst deno-repl-option-config-file nil
;;   "The configuration file can be used to configure different aspects of
;;    deno including TypeScript, linting, and code formatting. Typically
;;    the configuration file will be called `deno.json` or `deno.jsonc`
;;    and automatically detected; in that case this flag is not necessary.
;;    See https://deno.land/manual@v1.21.3/getting_started/configuration_file")

;; (defconst deno-repl-option-cached-only nil
;;   "Require that remote dependencies are already cached")

;; (defconst deno-repl-option-cert-file nil
;;   "Load certificate authority from PEM encoded file")

;; (defconst deno-repl-option-compat nil
;;   "See https://deno.land/manual@v1.21.3/node/compatibility_mode")

;; (defconst deno-repl-option-eval nil
;;   "Evaluates the provided code when the REPL starts.")

;; (defconst deno-repl-option-eval-file nil
;;   "Evaluates the provided file(s) as scripts when the REPL starts. Accepts file paths and URLs.")

;; (defconst deno-repl-option-help nil
;;   "Print help information")

;; (defconst deno-repl-option-import-map nil
;;   "Load import map file from local file or remote URL.
;;    Docs:
;;     https://deno.land/manual@v1.21.3/linking_to_external_code/import_maps
;;     Specification: https://wicg.github.io/import-maps/
;;     Examples: https://github.com/WICG/import-maps#the-import-map")

;; (defconst deno-repl-option-inspect nil
;;   "Activate inspector on host:port (default: 127.0.0.1:9229)")

;; (defconst deno-repl-option-inspect-brk nil
;;   "Activate inspector on host:port and break at start of user script")

;; (defconst deno-repl-option-location nil
;;   "Value of 'globalThis.location' used by some web APIs")

;; (defconst deno-repl-option-lock nil
;;   "Check the specified lock file")

;; (defconst deno-repl-option-lock-write nil
;;   "Write lock file (use with --lock)")

;; (defconst deno-repl-option-no-check nil
;;   "Skip type-checking. If the value of '--no-check=remote' is supplied, diagnostic errors from remote modules will be ignored.")

;; (defconst deno-repl-option-no-remote nil
;;   "Do not resolve remote modules")

;; (defconst deno-repl-option-quiet nil
;;   "Suppress diagnostic output")

;; (defconst deno-repl-option-reload nil
;;   "-r, --reload[=<CACHE_BLOCKLIST>...]
;;    Reload source code cache (recompile TypeScript)
;;      --reload
;;        Reload everything
;;        To use this form of the option, set it to 't'

;;      --reload=https://deno.land/std
;;        Reload only standard modules
;;        To use this form of the option, set it to a non-empty string

;;      --reload=https://deno.land/std/fs/utils.ts,https://deno.land/std/fmt/colors.ts
;;        Reloads specific modules
;;        To use this form of the option, set it to a list of non-empty strings")

;; (defconst deno-repl-option-seed nil
;;   "--seed <NUMBER>
;;      Set the random number generator seed")

;; (defconst deno-repl-option-unsafely-ignore-certificate-errors nil
;;   "--unsafely-ignore-certificate-errors[=<HOSTNAMES>...]
;;      DANGER: Disables verification of TLS certificates")

;; (defconst deno-repl-option-unstable nil
;;   "Enable unstable features and APIs")

;; (defconst deno-repl-option-v8-flags nil
;;   "--v8-flags=<v8-flags>
;;    To see a list of all available flags use --v8-flags=--help.")

;; (defun deno-repl-command ()
;;   (string-join (append
;; 		(list deno-cli-path)
;; 		deno-cli-args
;; 		(and deno-repl-option-config-file (list "-c" deno-repl-option-config-file))
;; 		(and deno-repl-option-cached-only (list "--cached-only" deno-repl-option-cached-only))
;; 		(and deno-repl-option-cert-file (list "--cert" deno-repl-option-cert-file)))
;; 	       " "))
