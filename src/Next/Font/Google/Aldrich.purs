module Next.Font.Google.Aldrich where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aldrichImpl :: forall r. { | r } -> FontConfig

aldrich :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
aldrich = aldrichImpl
