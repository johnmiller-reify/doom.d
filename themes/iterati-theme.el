;;; package --- iterati-theme.el
;;; Commentary:
;;; Code:
(require 'doom-themes)

(defvar modeline-bg)

(defgroup iterati-theme nil
  "Options for iterati."
  :group 'doom-themes)

(defcustom iterati-light nil
  "If non-nil, will use the light mode."
  :group 'iterati-theme
  :type 'boolean)

(def-doom-theme iterati
  "Gruvbox colors, iterati composition."
  ((bg           (if iterati-light '("#f9f5d7" nil nil) '("#1d2021" nil nil)))
   (bg-alt       (if iterati-light '("#f2e5bc" nil nil) '("#32302f" nil nil)))
   (base0        (if iterati-light '("#fbf1c7" nil nil) '("#282828" nil nil))) ;; bg-alt2
   (base2        (if iterati-light '("#d5c4a1" nil nil) '("#504945" nil nil))) ;; highlight color
   (base5        (if iterati-light '("#928374" nil nil) '("#928374" nil nil))) ;; grey
   (base7        (if iterati-light '("#665c54" nil nil) '("#bdae93" nil nil))) ;; doc-comments
   (base8        (if iterati-light '("#282828" nil nil) '("#fbf1c7" nil nil))) ;; fg-alt2
   (fg           (if iterati-light '("#3c3836" nil nil) '("#ebdbb2" nil nil)))
   (fg-alt       (if iterati-light '("#504945" nil nil) '("#d5c4a1" nil nil)))
   (red          (if iterati-light '("#9d0006" nil nil) '("#fb4934" nil nil)))
   (orange       (if iterati-light '("#af3a03" nil nil) '("#fe8019" nil nil)))
   (yellow       (if iterati-light '("#b57614" nil nil) '("#fabd2f" nil nil)))
   (green        (if iterati-light '("#79740e" nil nil) '("#b8bb26" nil nil)))
   (cyan         (if iterati-light '("#427b58" nil nil) '("#8ec07c" nil nil)))
   (blue         (if iterati-light '("#076678" nil nil) '("#83a598" nil nil)))
   (magenta      (if iterati-light '("#8f3f71" nil nil) '("#d3869b" nil nil)))
   (dark-red     '("#cc241d" nil nil))
   (dark-orange  '("#d65d0e" nil nil))
   (dark-yellow  '("#d79921" nil nil))
   (dark-green   '("#98971a" nil nil))
   (dark-cyan    '("#689d6a" nil nil))
   (dark-blue    '("#458588" nil nil))
   (dark-magenta '("#b16286" nil nil))

   (base1        (if iterati-light '("#ebdbb2" nil nil) '("#3c3836" nil nil))) ;; unused
   (base3        (if iterati-light '("#bdae93" nil nil) '("#665c54" nil nil))) ;; unused
   (base4        (if iterati-light '("#a89984" nil nil) '("#7c6f64" nil nil))) ;; unused
   (base6        (if iterati-light '("#7c6f64" nil nil) '("#a89984" nil nil))) ;; unused
   (violet       dark-red)                                                     ;; appease
   (teal         dark-magenta)                                                 ;; appease
   (grey         base5)                                                        ;; alias

   (w1 'thin)       ;; for comments/inactive things
   (w2 'extralight) ;; base-line emphasis/normal things
   (w3 'medium)     ;; some emphasis/language syntax
   (w4 'semibold)   ;; strongest emphasis/highlight, selection, and search

   (success      green)
   (warning      yellow)
   (error        red)
   (vc-added     dark-green)
   (vc-modified  dark-yellow)
   (vc-deleted   dark-red)
   (vertical-bar bg-alt)
   (highlight    base2)
   (selection    highlight)
   (region       highlight)
   (comments     grey)
   (doc-comments base7)
   (operators    red)
   (keywords     orange)
   (type         green)
   (strings      cyan)
   (functions    blue)
   (constants    magenta)
   (tag          dark-orange)
   (builtin      dark-yellow)
   (attr         dark-green)
   (methods      dark-cyan)
   (variables    dark-blue)
   (numbers      dark-magenta))

  (;; ui elements
   ((default &override)                                                                       :weight w2)
   (hl-line                                 :background bg-alt                                :weight w4)
   (line-number-current-line                :background bg-alt       :foreground fg-alt       :weight w4)
   (line-number                             :background bg-alt       :foreground grey         :weight w1)
   (auto-dim-other-buffers-face             :background bg-alt)
   (fringe                                  :background bg-alt       :foreground grey)
   (window-divider                                                   :foreground bg-alt)
   (mode-line                               :background bg           :foreground fg-alt       :weight w2 :box bg-alt)
   (mode-line-inactive                      :background bg-alt       :foreground grey         :weight w1 :box bg-alt)
   (mode-line-emphasis                      :background bg-alt       :foreground fg-alt)
   (mode-line-highlight                     :background bg-alt       :foreground fg-alt)
   (doom-modeline-bar                       :background fg-alt)
   (doom-modeline-bar-inactive              :background bg-alt)
   (doom-modeline-project-dir                                        :foreground fg-alt       :weight w2)
   (doom-modeline-buffer-path                                        :foreground fg-alt       :weight w1)
   (doom-modeline-buffer-file                                        :foreground fg-alt       :weight w3)
   (doom-modeline-buffer-major-mode                                  :foreground fg-alt)
   (doom-modeline-buffer-modified                                                             :weight w3 :slant 'italic)
   (doom-modeline-info                                               :foreground fg-alt)
   (doom-modeline-debug                                              :foreground grey)
   (doom-modeline-warning                                            :foreground warning)
   (doom-modeline-urgent                                             :foreground error)
   (link                                                             :foreground fg           :weight w3 :underline t)
   (link-visited                                                     :foreground fg-alt       :weight w3 :underline t)
   (orderless-match-face-0                  :background dark-yellow  :foreground bg-alt)
   (orderless-match-face-1                  :background dark-orange  :foreground bg-alt)
   (orderless-match-face-2                  :background dark-red     :foreground bg-alt)
   (orderless-match-face-3                  :background dark-magenta :foreground bg-alt)
   (company-tooltip                         :background base0        :foreground base8)
   (company-tooltip-common                  :background base0        :foreground base8        :weight w3)
   (company-tooltip-selection               :background highlight    :foreground base8        :weight w3 :box base8)
   (company-box-scrollbar                   :background base8)
   (child-frame-border                      :background highlight)
   (treemacs-root-face                                               :foreground fg-alt       :weight w3)
   (treemacs-directory-face                                          :foreground fg-alt       :weight w2)
   (treemacs-file-face                                               :foreground fg-alt       :weight w1)
   ;; syntax highlighting
   ((font-lock-comment-delimiter-face &override)                                              :weight w1)
   ((font-lock-comment-face &override)                                                        :weight w1 :slant 'italic)
   ((font-lock-doc-face &override)                                                            :weight w1 :slant 'italic)
   ((font-lock-keyword-face &override)                                                        :weight w3)
   ((font-lock-function-name-face &override)                                                  :weight w3)
   ((font-lock-variable-name-face &override)                                                  :weight w3)
   ((font-lock-type-face &override)                                                           :weight w3)
   ((font-lock-constant-face &override)                                                       :weight w3)
   ((font-lock-string-face &override)                                                         :weight w3)
   ((font-lock-builtin-face &override)                                                        :weight w3)
   ((highlight-numbers-number &override)                                                      :weight w3)
   ((web-mode-keyword-face &override)                                                         :weight w3)
   (web-mode-html-attr-name-face                                     :foreground attr         :weight w3)
   (web-mode-html-tag-bracket-face                                   :foreground tag          :weight w3)
   (web-mode-html-tag-face                                           :foreground tag          :weight w3)
   (web-mode-current-element-highlight-face :background highlight                             :weight w3 :slant 'italic)
   (lsp-face-highlight-textual              :background highlight                             :weight w3 :slant 'italic)
   (lazy-highlight                          :background highlight                                        :slant 'italic)
   (evil-ex-search                          :background highlight                                        :slant 'italic)
   (show-paren-match                        :background highlight    :foreground fg                      :slant 'italic)
   (rainbow-delimiters-depth-1-face                                  :foreground dark-red     :weight w3)
   (rainbow-delimiters-depth-2-face                                  :foreground dark-orange  :weight w3)
   (rainbow-delimiters-depth-3-face                                  :foreground dark-yellow  :weight w3)
   (rainbow-delimiters-depth-4-face                                  :foreground dark-green   :weight w3)
   (rainbow-delimiters-depth-5-face                                  :foreground dark-cyan    :weight w3)
   (rainbow-delimiters-depth-6-face                                  :foreground dark-blue    :weight w3)
   (rainbow-delimiters-depth-7-face                                  :foreground dark-magenta :weight w3)
   (markdown-bold-face                                                                        :weight w3)
   (markdown-italic-face                                                                                 :slant 'italic)
   (markdown-pre-face                                                :foreground green        :weight w3)
   (markdown-code-face                                               :foreground yellow       :weight w3)
   (markdown-plain-url-face                                                                              :underline t)
   (markdown-header-face-1                                           :foreground fg-alt       :weight w3 :height 2.0)
   (markdown-header-face-2                                           :foreground fg-alt       :weight w2 :height 2.0)
   (markdown-header-face-3                                           :foreground fg-alt       :weight w3 :height 1.5)
   (markdown-header-face-4                                           :foreground fg-alt       :weight w2 :height 1.5)
   (markdown-header-face-5                                           :foreground fg-alt       :weight w3 :height 1.25)
   (markdown-header-face-6                                           :foreground fg-alt       :weight w2 :height 1.25)
   ;; magit stuff
   (magit-diff-context                      :background bg-alt       :foreground grey)
   (magit-diff-context-highlight            :background bg           :foreground grey)
   (magit-diff-our                          :background bg-alt       :foreground dark-cyan)
   (magit-diff-our-highlight                :background bg           :foreground dark-cyan)
   (magit-diff-their                        :background bg-alt       :foreground dark-magenta)
   (magit-diff-their-highlight              :background bg           :foreground dark-magenta)
   (magit-diff-added                        :background bg-alt       :foreground vc-added)
   (magit-diff-added-highlight              :background bg           :foreground vc-added)
   (magit-diff-base                         :background bg-alt       :foreground vc-modified)
   (magit-diff-base-highlight               :background bg           :foreground vc-modified)
   (magit-diff-removed                      :background bg-alt       :foreground vc-deleted)
   (magit-diff-removed-highlight            :background bg           :foreground vc-deleted)
   (magit-diff-file-heading                 :background bg-alt       :foreground fg           :weight w3)
   (magit-diff-file-heading-highlight       :background bg           :foreground fg           :weight w3)
   (magit-diff-file-heading-selection       :background highlight    :foreground fg           :weight w3)
   (magit-diff-hunk-heading                 :background bg-alt       :foreground fg-alt       :weight w3)
   (magit-diff-hunk-heading-highlight       :background bg           :foreground fg-alt       :weight w3)
   (magit-diff-hunk-heading-selection       :background highlight    :foreground fg-alt       :weight w3)
   (magit-diff-lines-heading                :background highlight    :foreground bg-alt       :weight w3)
   (magit-diff-lines-boundary               :background highlight    :foreground bg-alt       :weight w3)
   (magit-diff-conflict-heading             :background vc-modified  :foreground base8)
   (magit-diff-revision-summary             :background vc-modified  :foreground base8)
   (magit-diff-revision-summary-highlight   :background vc-modified  :foreground base8)
   (magit-diff-whitespace-warning           :background error        :foreground fg-alt)
   (magit-header-line                       :background bg-alt       :foreground fg)
   (magit-branch-remote-head                :background bg           :foreground success)
   (magit-blame-margin                      :background bg-alt       :foreground fg-alt)
   (magit-blame-heading                     :background bg-alt       :foreground fg)
   (magit-blame-summary                     :background bg-alt       :foreground fg-alt)
   (magit-blame-highlight                   :background highlight    :foreground fg-alt)
   (diff-refine-added                       :background vc-added     :foreground bg)
   (diff-refine-changed                     :background vc-modified  :foreground bg)
   (diff-refine-removed                     :background vc-deleted   :foreground bg)
   (diff-added                              :background bg           :foreground vc-added)
   (diff-changed                            :background bg           :foreground vc-modified)
   (diff-removed                            :background bg           :foreground vc-deleted)))

(provide 'iterati-theme)
;;; iterati-theme.el ends here
