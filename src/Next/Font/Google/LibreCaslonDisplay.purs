module Next.Font.Google.LibreCaslonDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreCaslonDisplayImpl :: forall r. { | r } -> FontConfig

libreCaslonDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreCaslonDisplay = libreCaslonDisplayImpl
