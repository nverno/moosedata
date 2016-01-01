;;; org-vals.el --- 
;; Filename: org-vals.el
;; Description: 
;; Author: Noah Peart
;; Created: Thu Dec 31 18:29:09 2015 (-0500)
;; Last-Updated: Thu Dec 31 18:34:15 2015 (-0500)
;;           By: Noah Peart
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ox-publish)

(setq projdir (file-name-directory load-file-name))
(setq htmldir (concat projdir "html/"))
(setq theme-file "theme-bigblow.setup")
(setq preamble (prep-org (get-string-from-file theme-file)))

(setq org-publish-project-alist
      `(
	("orgfiles"
	 :auto-sitemap t
	 :html-head ,preamble
	 :sitemap-title "Sitemap"
	 :base-directory ,projdir
	 :base-extenstion "org"
	 :publishing-directory ,htmldir
	 :publishing-function org-html-publish-to-html
	 :recursive t
	 :html-link-home "sitemap.html"
	 :auto-preamble t)

	("moosedata" :components ("orgfiles"))))
