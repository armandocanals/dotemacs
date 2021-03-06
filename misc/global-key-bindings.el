;;;global key bindings


;;usable keys for C-c prefix:
;;C-c o


;;--------------------------------------------------
;; ADD bindings for built-in functions

;; with prefix ff-find-other-file in other window
;; a for alternative
(global-set-key (kbd "C-; a") 'ff-find-other-file)

(global-set-key (kbd "C-c o") 'speedbar-get-focus)

(global-set-key (kbd "C-c M") 'man)

(global-set-key (kbd "C-c ,") 'tags-search)
(global-set-key (kbd "C-,") 'tags-search)
(global-set-key (kbd "C-.") 'tags-reset-tags-tables)

(global-set-key "\C-c\C-i" 'string-insert-rectangle)

(global-set-key "\C-cr" 'revert-buffer)

;;f20 is normally the forward key, but default binding is kill-region
(global-unset-key [f20])
(global-set-key [f20] 'yank-from-primary-while-using-clipboard)

(global-set-key "\C-j" 'newline)
(global-set-key "\C-m" 'newline-and-indent)

;;use C-; prefix to replace C-x
(global-set-key (kbd "C-; b") 'ido-switch-buffer)
(global-set-key (kbd "C-; f") 'find-file)
(global-set-key (kbd "C-; C-s") 'save-buffer)
(global-set-key (kbd "C-; s") 'save-some-buffers)
(global-set-key (kbd "C-; k") 'kill-buffer)
(global-set-key (kbd "C-; 0") 'delete-window)
(global-set-key (kbd "C-; 1") 'delete-other-windows)
(global-set-key (kbd "C-; 2") 'split-window-vertically)
(global-set-key (kbd "C-; 3") 'split-window-horizontally)
(global-set-key (kbd "C-; o") 'other-window)

;;other C-; prefix bindings
(global-set-key (kbd "C-; j") 'switch-to-buffer)
(global-set-key (kbd "C-; C-;") 'switch-to-buffer)
;c for command
(global-set-key (kbd "C-; c") 'shell-command)
;l for lisp
(global-set-key (kbd "C-; l") 'eval-expression)
;;also on M-`
(global-set-key (kbd "C-; h") 'quit-window)
;;folding and unfold, z is borrowed from vim
(global-set-key (kbd "C-; z") 'hs-toggle-hiding)
;useful when at org-mode when TAB is too busy
(global-set-key (kbd "C-; i") 'indent-relative)
;; use default C-x * * is better
;; (global-set-key (kbd "C-; <f2>") 'calc)

;;changed default behavior
;; (global-unset-key (kbd "C-x C-b"))
(global-unset-key (kbd "C-h h"))

;(global-set-key (kbd "C-h h") 'hippie-expand)
(global-set-key (kbd "C-'") 'hippie-expand)

(global-set-key (kbd "C-c l") 'goto-line)
(global-set-key (kbd "C-c z") 'hs-toggle-hiding)

;; I already have the habit to not exit emacs accidently.
;; So now C-x C-c will exit emacs instead of suspend it.
;; (global-set-key (kbd "C-x C-c") 'kill-cmd-and-emacs)

;; C-x C-c is back. now e is obsoleted.
;; (defalias 'e 'kill-cmd-and-emacs)
(defalias 'elisp-mode 'emacs-lisp-mode)

;;toggle protect current buffer
(global-set-key (kbd "C-c p") 'protect-buffer-from-kill-mode)

;;quit window and bury its buffer.
;;TODO If C-x 0 is possible, do it; else do quit-window
;;     q command in some mode is not what I want.
(global-set-key (kbd "M-`") 'quit-window)
;;testing. M-0 is seldom used.
;;the most usual scene for using arg 0 is C-0 C-l kill-line to col 0
(global-set-key (kbd "M-0") 'delete-window)

;;fill-region
(global-set-key (kbd "C-M-q") 'fill-region)

;;added after reading http://steve.yegge.googlepages.com/effective-emacs
;; M-x may not be avalible everywhere
;;  for example, in term-char-mode, or when there is no Meta key.
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; use regexp as default search
;; after this C-u C-s becomes non-regexp search, very good!
(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)
;; TODO if I can use M-% replace-string and C-u M-% query-replace-regexp
;;      that will be great. Check how to do that.
(global-set-key "\M-&" 'query-replace-regexp)

;;default key is really long
(global-set-key (kbd "C-c m") 'point-to-register)
(global-set-key (kbd "C-c n") 'register-to-point)
;;the mark ring is also useful
;;C-u C-SPC

;; comment and uncomment
;; You can also hl the text in transient-mark-mode
;; then M-; to comment/uncomment region
(global-set-key (kbd "C-c c") 'comment-region)
(global-set-key (kbd "C-c x") 'uncomment-region)

;; ispell-word
(global-set-key (kbd "C-c i") 'ispell-word)

;; toggle view-mode
(global-set-key "\C-c\C-v" 'view-mode)

;; ffap
(global-set-key (kbd "C-c g") 'ffap)
;(global-set-key (kbd "C-x C-g") 'ffap)

;;--------------------------------------------------
;; ADD bindings for functions in external library
(defalias 'thl 'hl-line-toggle-when-idle)

;;--------------------------------------------------
;; ADD bindings for user defined functions

(global-set-key (kbd "C-x 5 s") 'make-simple-frame)

(global-set-key (kbd "<f11>") 'pastebinit-current-buffer)

(defalias 'uu 'byte-recompile-my-emacs-dir)

(global-set-key (kbd "C-c q") 'exit-emacs-client)
;(global-set-key (kbd "M-n") 'scroll-up-half-screen)
;; (global-set-key "%" 'match-paren)

;; ecb and cedet is slow and not mature. disabled
;; (global-set-key (kbd "C-c f f") 'ecb-toggle-show-and-goto-functions-window)
;; (global-set-key (kbd "C-c f 3") 'ecb-show-three-panel)
;; (global-set-key (kbd "C-c f 1") 'ecb-show-one-panle)

(global-set-key (kbd "C-c s") 'switch-to-shell-buffer)

;;do *not* remove the following key, it's used at lword-add-word-from-region
(global-set-key (kbd "M-g l") 'dict-cn-trim-word)
(global-set-key (kbd "M-g s") 'search-lword)
(global-set-key (kbd "C-c j") 'w3m-dict-cn-search)

;(global-set-key (kbd "<f5>") 'toggle-color-theme)

(defalias 'tuc 'toggle-use-clipboard)
(defalias 'uc 'toggle-use-clipboard)

(global-set-key (kbd "C-c b") 'swap-recent-buffer)
;; (global-set-key (kbd "C-x C-b") 'swap-recent-buffer)

;;replace default M-;
;; (global-set-key "\M-;" 'my-comment-dwim)

(global-set-key (kbd "C-c y y") 'copy-line)
(global-set-key (kbd "C-c y w") 'copy-symbol)
(global-set-key (kbd "C-c y s") 'copy-sexp)
;;I cound have put C-c d prefix to fit the vim command d, but I find C-c k
;;easier to type. and k is also easy to remember for killing.
(global-set-key (kbd "C-c k k") 'my-kill-line)
(global-set-key (kbd "C-c k w") 'kill-symbol)
(global-set-key (kbd "C-c k s") 'my-kill-sexp)

;;run command like vim "imap"
;;expand string to function call
;;currently using
;;da --> date
;;em --> email
;;TODO rewrite imap related code using macro
;;     write a macro defimap to auto add keybindings for the function in body.
;;     for example (defimap imap-da (body)) should bind to (concat imap "da")
;;     key automatically.
(defvar imap "\C-c'"
  "This variable contains imap default prefix key.")
(setq imap "\C-c'")
(global-set-key (concat imap "da") 'imap-da)
(global-set-key (concat imap "em") 'imap-em)

(global-set-key (kbd "<mouse-2>") 'yank-from-primary-while-using-clipboard)
(global-set-key (kbd "<S-insert>") 'yank-from-primary-while-using-clipboard)
(global-set-key (kbd "<S-delete>") 'copy-to-primary-while-using-clipboard)

;e for external
(global-set-key (kbd "C-c w e") 'google-search)
(global-set-key (kbd "C-c w v") 'view-current-file-in-browser)

;customized hippie-expand functions
;(global-set-key (kbd "C-x C-f") 'hippie-expand-filename)
;;override downcase-region
;(global-set-key (kbd "C-x C-l") 'hippie-expand-line)

;;C-; prefix for user defined functions
(global-set-key (kbd "C-; ;") 'swap-recent-buffer)
(global-set-key (kbd "C-; -") 'shrink-other-window-if-larger-than-buffer)
(global-set-key (kbd "C-; <f1>") 'cut-for-learnlinux)
(global-set-key (kbd "C-; w") 'unbalance-two-window)
(global-set-key (kbd "C-; m") 'open-makefile)
