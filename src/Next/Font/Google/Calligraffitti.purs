module Next.Font.Google.Calligraffitti where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import calligraffittiImpl :: forall r. { | r } -> FontConfig

calligraffitti :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
calligraffitti = calligraffittiImpl
