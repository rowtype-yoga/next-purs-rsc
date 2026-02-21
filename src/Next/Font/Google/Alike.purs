module Next.Font.Google.Alike where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alikeImpl :: forall r. { | r } -> FontConfig

alike :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alike = alikeImpl
