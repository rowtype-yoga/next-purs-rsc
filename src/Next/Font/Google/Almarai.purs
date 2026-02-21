module Next.Font.Google.Almarai where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import almaraiImpl :: forall r. { | r } -> FontConfig

almarai :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
almarai = almaraiImpl
