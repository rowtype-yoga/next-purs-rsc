module Next.Font.Google.Alice where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aliceImpl :: forall r. { | r } -> FontConfig

alice :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alice = aliceImpl
