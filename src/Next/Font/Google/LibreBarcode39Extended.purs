module Next.Font.Google.LibreBarcode39Extended where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreBarcode39ExtendedImpl :: forall r. { | r } -> FontConfig

libreBarcode39Extended :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreBarcode39Extended = libreBarcode39ExtendedImpl
