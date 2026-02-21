module Next.Font.Google.LibreBarcode39 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreBarcode39Impl :: forall r. { | r } -> FontConfig

libreBarcode39 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreBarcode39 = libreBarcode39Impl
