module Next.Font.Google.Asset where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import assetImpl :: forall r. { | r } -> FontConfig

asset :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
asset = assetImpl
