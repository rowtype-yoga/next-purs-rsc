module Next.Font.Google.Festive where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import festiveImpl :: forall r. { | r } -> FontConfig

festive :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
festive = festiveImpl
