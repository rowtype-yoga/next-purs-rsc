module Next.Font.Google.AnonymousPro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anonymousProImpl :: forall r. { | r } -> FontConfig

anonymousPro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anonymousPro = anonymousProImpl
