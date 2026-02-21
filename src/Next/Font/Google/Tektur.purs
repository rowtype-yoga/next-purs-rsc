module Next.Font.Google.Tektur where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tekturImpl :: forall r. { | r } -> FontConfig

tektur :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tektur = tekturImpl
