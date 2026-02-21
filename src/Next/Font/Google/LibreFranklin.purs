module Next.Font.Google.LibreFranklin where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreFranklinImpl :: forall r. { | r } -> FontConfig

libreFranklin :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreFranklin = libreFranklinImpl
