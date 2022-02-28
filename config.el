;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq
 user-full-name                      "John Miller"
 user-mail-address                   "john.miller@reifyhealth.com"
 org-directory                       "~/org/"
 auth-sources                        '("~/.authinfo.gpg")
 doom-font                           (font-spec :family "JetBrains Mono" :size 16)
 doom-big-font                       (font-spec :family "JetBrains Mono" :size 24)
 doom-variable-pitch-font            (font-spec :family "Overpass"       :size 16)
 doom-theme                          'iterati
 tab-always-indent                   nil
 kill-do-not-save-duplicates         t
 display-line-numbers-type           nil
 confirm-kill-emacs                  nil
 doom-modeline-hud                   t
 doom-modeline-icon                  t
 doom-modeline-major-mode-icon       t
 doom-modeline-major-mode-color-icon nil
 doom-modeline-buffer-encoding       nil
 display-time-default-load-average   nil
 display-time-24hr-format            t
 display-time-day-and-date           t
 rainbow-delimiters-max-face-count   7
 scroll-margin                       10
 left-fringe-width                   1
 right-fringe-width                  1)

(setq consult-buffer-filter
      '("\\` "
        "\\`\\*Buffer List\\*\\'"
        "\\`\\*Completions\\*\\'"
        "\\`\\*Flymake log\\*\\'"
        "\\`\\*Messages\\*\\'"
        "\\`\\*Semantic SymRef\\*\\'"
        "\\`\\*compilation\\*.*\\'"
        "\\`\\*tramp/.*\\*\\'"
        "\\`\\*envrc\\*\\'"
        "\\`\\*cider-doc\\*\\'"
        "\\`\\*flycheck.*\\*\\'"
        "\\`\\*lsp.*\\*\\'"
        "\\`\\*ts.*\\*\\'"))

(auto-dim-other-buffers-mode 1)
(display-time-mode 1)
(recentf-mode 1)

(remove-hook 'doom-first-input-hook #'evil-snipe-mode)

(after! web-mode
  (setq
   typescript-indent-level                   2
   web-mode-code-indent-offset               2
   web-mode-css-indent-offset                2
   web-mode-markup-indent-offset             2
   web-mode-auto-close-style                 2
   web-mode-enable-auto-closing              t
   web-mode-enable-auto-indentation          t
   web-mode-enable-auto-opening              t
   web-mode-enable-auto-pairing              t
   web-mode-enable-current-element-highlight t))

(add-hook! emacs-lisp-mode
  (paredit-mode 1)
  (aggressive-indent-mode 1))

(add-hook! clojure-mode
  (paredit-mode 1)
  (aggressive-indent-mode 1))

(after! clojure-mode
  (setq clojure-align-forms-automatically t))

(add-hook! cider-mode
  (define-clojure-indent
    (initLocalState        'defun)
    (componentDidUpdate    'defun)
    (render                'defun)
    (fn-traced             'defun)
    (re-frame/reg-event-db 'defun)
    (re-frame/reg-event-fx 'defun)
    (re-frame/reg-sub      'defun)
    (re-frame/reg-fx       'defun)
    (rf/reg-event-db       'defun)
    (rf/reg-event-fx       'defun)
    (rf/reg-sub            'defun)
    (rf/reg-fx             'defun)
    (sql/call              'defun)))

(defun toggle-light-mode ()
  "toggles light/dark mode"
  (interactive)
  (setq iterati-light (not iterati-light))
  (load-theme 'iterati))

(defun align-whitespace (start end)
  "Align columns by whitespace"
  (interactive "r")
  (align-regexp start end
                "\\s-*\\(\\s-*\\)\\s-" 1 0 t))

(map! :map vertico-map "RET"   #'vertico-directory-enter)
(map! :map vertico-map "DEL"   #'vertico-directory-delete-char)
(map! :map vertico-map "M-DEL" #'vertico-directory-delete-word)

(map! :leader (:prefix "s" :desc "Clear search highlights" :n "c" #'evil-ex-nohighlight))
(map! :leader (:prefix "t" :desc "Toggle light/dark mode"  :n "m" #'toggle-light-mode))
(map! :leader              :desc "Align by whitespace"     :v "=" #'align-whitespace)
