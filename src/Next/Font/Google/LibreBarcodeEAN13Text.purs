module Next.Font.Google.LibreBarcodeEAN13Text where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreBarcodeEAN13TextImpl :: forall r. { | r } -> FontConfig

libreBarcodeEAN13Text :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreBarcodeEAN13Text = libreBarcodeEAN13TextImpl
