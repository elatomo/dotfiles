--
-- xmonad config file
--

import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Hooks.SetWMName

main=do
    xmonad $ defaultConfig
        { borderWidth = 1
        , manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $ smartBorders $  layoutHook defaultConfig
        , startupHook = setWMName "LG3D"
        }
