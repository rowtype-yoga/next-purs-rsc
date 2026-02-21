module Next.Font.Google.LibreBarcode128 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreBarcode128Impl :: forall r. { | r } -> FontConfig

libreBarcode128 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreBarcode128 = libreBarcode128Impl
