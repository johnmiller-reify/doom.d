;;; init.el -*- lexical-binding: t; -*-
(doom!
 :completion
 (company +childframe)
 (vertico +icons)

 :term
 vterm

 :ui
 doom
 (emoji +unicode +github)
 hl-todo
 (ligatures +extra)
 modeline
 ophints
 (popup +defaults)
 treemacs
 vc-gutter

 :editor
 (evil +everywhere)
 file-templates
 fold
 (format +onsave)

 :emacs
 (dired +icons)
 electric
 (ibuffer +icons)
 undo
 vc

 :checkers
 (syntax +childframe)

 :tools
 direnv
 docker
 (eval +overlay)
 lookup
 lsp
 (magit +forge)
 terraform

 :os
 (:if IS-MAC macos)

 :lang
 clojure
 emacs-lisp
 json
 (javascript +lsp)
 markdown
 (org +pretty)
 sh
 (web +css +html)
 yaml

 :config
 (default +bindings +smartparens))
