module Next.Font.Google.Inspiration where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import inspirationImpl :: forall r. { | r } -> FontConfig

inspiration :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
inspiration = inspirationImpl
