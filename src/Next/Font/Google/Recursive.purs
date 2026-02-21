module Next.Font.Google.Recursive where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import recursiveImpl :: forall r. { | r } -> FontConfig

recursive :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
recursive = recursiveImpl
