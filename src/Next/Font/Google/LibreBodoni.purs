module Next.Font.Google.LibreBodoni where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreBodoniImpl :: forall r. { | r } -> FontConfig

libreBodoni :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreBodoni = libreBodoniImpl
