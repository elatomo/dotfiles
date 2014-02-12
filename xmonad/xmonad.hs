--
-- xmonad config file
--

import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders

main=do
    xmonad $ defaultConfig
        { borderWidth = 1
        , manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $ smartBorders $  layoutHook defaultConfig
        }
