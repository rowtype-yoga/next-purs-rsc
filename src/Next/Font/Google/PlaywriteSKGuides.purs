module Next.Font.Google.PlaywriteSKGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteSKGuidesImpl :: forall r. { | r } -> FontConfig

playwriteSKGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteSKGuides = playwriteSKGuidesImpl
