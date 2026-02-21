module Next.Font.Google.AdventPro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import adventProImpl :: forall r. { | r } -> FontConfig

adventPro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
adventPro = adventProImpl
