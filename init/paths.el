(add-to-list 'load-path "~/.emacs.d/packages")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(setq al-path "~/.emacs.d/init.el")

(setq path-hotkeys
	  (if is-macos
		  "~/.emacs.d/init/mac_hotkeys.el"
		  "~/.emacs.d/init/hotkeys.el"))

(setq path-dev "~/dev")
(setq path-work (concat path-dev "/work"))
(setq path-tes (concat path-work "/tes"))
(setq path-proj (concat path-dev "/projects"))
(setq path-sand (concat path-dev "/sand"))

(setq path-cmake-file "CMakeLists.txt")
