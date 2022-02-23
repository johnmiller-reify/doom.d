;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a link to Doom's Module Index where all
;;      of our modules are listed, including what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom!
 :completion
 company             ; the ultimate code completion backend
 (vertico +icons)    ; the search engine of the future

 :ui
 doom                ; what makes DOOM look the way it does
 (emoji +unicode)    ; 🙂
 hl-todo             ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
 (ligatures +extra)  ; ligatures and symbols to make your code pretty again
 modeline            ; snazzy, Atom-inspired modeline, plus API
 ophints             ; highlight the region an operation acts on
 (popup +defaults)   ; tame sudden yet inevitable temporary windows
 treemacs            ; a project drawer, like neotree but cooler
 vc-gutter           ; vcs diff in the fringe

 :editor
 (evil +everywhere)  ; come to the dark side, we have cookies
 file-templates      ; auto-snippets for empty files
 fold                ; (nigh) universal code folding
 (format +onsave)    ; automated prettiness

 :emacs
 (dired +icons)      ; making dired pretty [functional]
 electric            ; smarter, keyword-based electric-indent
 (ibuffer +icons)    ; interactive buffer management
 undo                ; persistent, smarter undo for your inevitable mistakes
 vc                  ; version-control and Emacs, sitting in a tree

 :checkers
 syntax              ; tasing you for every semicolon you forget

 :tools
 direnv
 docker
 (eval +overlay)     ; run code, run (also, repls)
 lookup              ; navigate your code and its documentation
 lsp                 ; M-x vscode
 (magit +forge)      ; a git porcelain for Emacs
 ;; taskrunner
 ;;gist              ; interacting with github gists
 ;;make              ; run make tasks from Emacs
 ;;terraform         ; infrastructure as code

 :os
 (:if IS-MAC macos)  ; improve compatibility with macOS
 ;;tty               ; improve the terminal Emacs experience

 :lang
 clojure             ; java with a lisp
 emacs-lisp          ; drown in parentheses
 json                ; At least it ain't XML
 (javascript +lsp)   ; all(hope(abandon(ye(who(enter(here))))))
 markdown            ; writing docs for people to ignore
 (org +pretty)       ; organize your plain life in plain text
 sh                  ; she sells {ba,z,fi}sh shells on the C xor
 (web +css +html)    ; the tubes
 yaml                ; JSON, but readable
 ;;(cc +lsp)         ; C > C++ == 1
 ;;csharp            ; unity, .NET, and mono shenanigans
 ;;data              ; config/data formats
 ;;(go +lsp)         ; the hipster dialect
 ;;(java +lsp)       ; the poster child for carpal tunnel syndrome
 ;;lua               ; one-based indices? one-based indices
 ;;python            ; beautiful is better than ugly
 ;;qt                ; the 'cutest' gui framework ever
 ;;rest              ; Emacs as a REST client

 :config
 (default +bindings +smartparens))
