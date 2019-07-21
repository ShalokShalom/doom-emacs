;; -*- no-byte-compile: t; -*-
;;; lang/org/packages.el

(package! org-plus-contrib)  ; install cutting-edge version of org-mode
(package! org-bullets :recipe (:host github :repo "Kaligule/org-bullets"))
(package! toc-org)
(when (featurep! :editor evil)
  (package! evil-org))
(when (featurep! :tools pdf)
  (package! org-pdfview))
(package! htmlize)
(package! ox-clip)
(package! org-yt :recipe (:host github :repo "TobiasZawada/org-yt"))

;;; Babel
(package! ob-async)
(when (featurep! :lang crystal)
  (package! ob-crystal))
(when (featurep! :lang go)
  (package! ob-go))
(when (featurep! :lang nim)
  (package! ob-nim))
(when (featurep! :lang racket)
  (package! ob-racket :recipe (:host github :repo "DEADB17/ob-racket")))
(when (featurep! :lang rest)
  (package! ob-restclient))
(when (featurep! :lang rust)
  (package! ob-rust))

;;; Modules
(when (featurep! +dragndrop)
  (package! org-download))
(when (featurep! +gnuplot)
  (package! gnuplot)
  (package! gnuplot-mode))
(when (featurep! +ipython)
  (package! ob-ipython))
(when (featurep! +pandoc)
  (package! ox-pandoc))
(when (featurep! +present)
  (package! centered-window :recipe (:host github :repo "anler/centered-window-mode"))
  (package! org-tree-slide)
  (package! ox-reveal))
