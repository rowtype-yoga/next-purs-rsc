module Next.Font.Google.LibreCaslonText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreCaslonTextImpl :: forall r. { | r } -> FontConfig

libreCaslonText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreCaslonText = libreCaslonTextImpl
