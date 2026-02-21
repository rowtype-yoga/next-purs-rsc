module Next.Font.Google.Amarna where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import amarnaImpl :: forall r. { | r } -> FontConfig

amarna :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
amarna = amarnaImpl
