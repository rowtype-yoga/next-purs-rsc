module Next.Font.Google.LibreBarcode128Text where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreBarcode128TextImpl :: forall r. { | r } -> FontConfig

libreBarcode128Text :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreBarcode128Text = libreBarcode128TextImpl
