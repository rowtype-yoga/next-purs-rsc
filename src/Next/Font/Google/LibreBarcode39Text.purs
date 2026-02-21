module Next.Font.Google.LibreBarcode39Text where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreBarcode39TextImpl :: forall r. { | r } -> FontConfig

libreBarcode39Text :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreBarcode39Text = libreBarcode39TextImpl
