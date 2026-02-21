module Next.Font.Google.PlaywriteUSTradGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteUSTradGuidesImpl :: forall r. { | r } -> FontConfig

playwriteUSTradGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteUSTradGuides = playwriteUSTradGuidesImpl
