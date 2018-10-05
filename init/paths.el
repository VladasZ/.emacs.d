(add-to-list 'load-path "~/.emacs.d/packages")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(defcustom al-path "~/.emacs.d/init.el"
   "init.el file path."
   :group 'paths
   :type 'directory)

(setq path-dev "~/dev")
(setq path-work (concat path-dev "/work"))
(setq path-proj (concat path-dev "/projects"))

(setq path-cmake-file "CMakeLists.txt")




(message path-engine)
