module Next.Font.Google.GrechenFuemen where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import grechenFuemenImpl :: forall r. { | r } -> FontConfig

grechenFuemen :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
grechenFuemen = grechenFuemenImpl
