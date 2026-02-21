module Next.Font.Google.PlaywriteUSTrad where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteUSTradImpl :: forall r. { | r } -> FontConfig

playwriteUSTrad :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteUSTrad = playwriteUSTradImpl
