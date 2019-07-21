;;; core/autoload/hydras.el -*- lexical-binding: t; no-byte-compile: t; -*-

;;;###autoload (autoload 'doom-text-zoom-hydra/body "core/autoload/hydras" nil t)
(defhydra doom-text-zoom-hydra (:hint t :color red)
  "
      Text zoom: _j_:zoom in, _k_:zoom out, _0_:reset
"
  ("j" doom/increase-font-size "in")
  ("k" doom/decrease-font-size "out")
  ("0" doom/reset-font-size "reset"))

;;;###autoload (autoload 'doom-window-nav-hydra/body "core/autoload/hydras" nil t)
(defhydra doom-window-nav-hydra (:hint nil)
  "
          Split: _v_ert  _s_:horz
         Delete: _c_lose  _o_nly
  Switch Window: _h_:left  _j_:down  _k_:up  _l_:right
        Buffers: _p_revious  _n_ext  _b_:select  _f_ind-file
         Resize: _H_:splitter left  _J_:splitter down  _K_:splitter up  _L_:splitter right
           Move: _a_:up  _z_:down  _i_menu
"
  ("z" scroll-up-line)
  ("a" scroll-down-line)
  ("i" idomenu)

  ("h" windmove-left)
  ("j" windmove-down)
  ("k" windmove-up)
  ("l" windmove-right)

  ("p" previous-buffer)
  ("n" next-buffer)
  ("b" switch-to-buffer)
  ("f" find-file)

  ("s" split-window-below)
  ("v" split-window-right)

  ("c" delete-window)
  ("o" delete-other-windows)

  ("H" hydra-move-splitter-left)
  ("J" hydra-move-splitter-down)
  ("K" hydra-move-splitter-up)
  ("L" hydra-move-splitter-right)

  ("q" nil))
