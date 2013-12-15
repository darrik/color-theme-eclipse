;;; eclipse-theme.el --- Eclipse color theme for GNU Emacs 24.

;; Copyright (C) 2013 Rikard Glans

;; Author: Rikard Glans
;; Original Author: Kentaro Takahashi
;; Adapted-By: Yesudeep Mangalapilly
;; Keywords: eclipse color theme emacs
;; URL: http://github.com/darrik/color-theme-eclipse
;; Version: 0.0.1

;; This file is not a part of GNU Emacs.

;;; License:

;; This is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2, or (at your option) any later
;; version.
;;
;; This is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
;; for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.

;;; Code:

(unless (>= 24 emacs-major-version)
  (error "eclipse-theme requires Emacs 24 or later."))

(deftheme eclipse
  "Emacs 24 port of Kentaro Takahashi's Eclipse color theme.")

(let ((foreground-color "black")
      (background-color "white")
      (mouse-color      "sienna3")
      (cursor-color     "HotPink")
      (border-color     "Blue"))
  (custom-theme-set-faces
   'eclipse

   '(default                          ((t (nil))))
   '(modeline                         ((t (:background "Gray75" :foreground "Black"))))
   '(modeline-buffer-id               ((t (:background "Gray75" :foreground "blue4"))))
   '(modeline-mousable                ((t (:background "Gray75" :foreground "firebrick"))))
   '(modeline-mousable-minor-mode     ((t (:background "Gray75" :foreground "green4"))))
   '(highlight                        ((t (:background "darkseagreen2"))))
   '(bold                             ((t (:bold t))))
   '(italic                           ((t (:italic t))))
   '(bold-italic                      ((t (:bold t :italic t))))
   '(region                           ((t (:background "snow3"))))
   '(secondary-selection              ((t (:background "paleturquoise"))))
   '(underline                        ((t (:underline t))))
   '(lazy-highlight-face              ((t (:foreground "dark magenta" :bold t))))
   '(font-lock-comment-face           ((t (:foreground "ForestGreen" :italic t))))
   '(font-lock-string-face            ((t (:foreground "RoyalBlue3"))))
   '(font-lock-keyword-face           ((t (:foreground "dark magenta" :bold t))))
   '(font-lock-builtin-face           ((t (:foreground "black"))))
   '(font-lock-function-name-face     ((t (:foreground "MediumBlue"))))
   ;; '(font-lock-variable-name-face  ((t (:foreground "black"))))
   '(font-lock-variable-name-face     ((t (:foreground "blue" :italic t))))
   ;; '(font-lock-variable-name-face  ((t (:foreground "firebrick" :italic t)))) ;; like default RDT
   '(font-lock-type-face              ((t (:foreground "purple4"))))
   '(font-lock-constant-face          ((t (:foreground "CadetBlue"))))
   '(font-lock-warning-face           ((t (:foreground "Red" :bold t))))
   '(widget-documentation-face        ((t (:foreground "dark green"))))
   '(widget-button-face               ((t (:bold t))))
   '(widget-field-face                ((t (:background "gray85"))))
   '(widget-single-line-field-face    ((t (:background "gray85"))))
   '(widget-inactive-face             ((t (:foreground "dim gray"))))
   '(widget-button-pressed-face       ((t (:foreground "red"))))
   '(custom-invalid-face              ((t (:foreground "yellow" :background "red"))))
   '(custom-rogue-face                ((t (:foreground "pink" :background "black"))))
   '(custom-modified-face             ((t (:foreground "white" :background "blue"))))
   '(custom-set-face                  ((t (:foreground "blue" :background "white"))))
   '(custom-changed-face              ((t (:foreground "white" :background "blue"))))
   '(custom-saved-face                ((t (:underline t))))
   '(custom-button-face               ((t (nil))))
   '(custom-documentation-face        ((t (nil))))
   '(custom-state-face                ((t (:foreground "dark green"))))
   '(custom-variable-tag-face         ((t (:foreground "blue" :underline t))))
   '(custom-variable-button-face      ((t (:bold t :underline t))))
   '(custom-face-tag-face             ((t (:underline t))))
   '(custom-group-tag-face-1          ((t (:foreground "red" :underline t))))
   '(custom-group-tag-face            ((t (:foreground "blue" :underline t))))
   '(jde-java-font-lock-doc-tag-face  ((t (:foreground "SkyBlue3" :bold t))))    ;; JDE
   '(jde-java-font-lock-constant-face ((t (:foreground "CadetBlue" :italic t))));; JDE
   '(cperl-nonoverridable-face        ((t (:foreground "CadetBlue"))));; CPerl
   '(speedbar-button-face             ((t (:foreground "green4"))))
   '(speedbar-file-face               ((t (:foreground "cyan4"))))
   '(speedbar-directory-face          ((t (:foreground "blue4"))))
   '(speedbar-tag-face                ((t (:foreground "brown"))))
   '(speedbar-selected-face           ((t (:foreground "red" :underline t))))
   '(speedbar-highlight-face          ((t (:background "green"))))
   '(ff-paths-non-existant-file-face  ((t (:foreground "NavyBlue" :bold t))))
   '(show-paren-match-face            ((t (:background "light blue"))))
   '(show-paren-mismatch-face         ((t (:foreground "white" :background "purple"))))

   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'eclipse)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; eclipse-theme.el ends here
