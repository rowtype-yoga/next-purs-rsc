module Next.Font.Google.LibreBarcode39ExtendedText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreBarcode39ExtendedTextImpl :: forall r. { | r } -> FontConfig

libreBarcode39ExtendedText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreBarcode39ExtendedText = libreBarcode39ExtendedTextImpl
