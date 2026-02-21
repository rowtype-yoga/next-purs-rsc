module Next.Font.Google.LilyScriptOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lilyScriptOneImpl :: forall r. { | r } -> FontConfig

lilyScriptOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lilyScriptOne = lilyScriptOneImpl
