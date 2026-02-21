module Next.Font.Google.Asul where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import asulImpl :: forall r. { | r } -> FontConfig

asul :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
asul = asulImpl
