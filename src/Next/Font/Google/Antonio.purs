module Next.Font.Google.Antonio where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import antonioImpl :: forall r. { | r } -> FontConfig

antonio :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
antonio = antonioImpl
