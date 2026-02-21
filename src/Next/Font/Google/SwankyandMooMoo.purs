module Next.Font.Google.SwankyandMooMoo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import swankyandMooMooImpl :: forall r. { | r } -> FontConfig

swankyandMooMoo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
swankyandMooMoo = swankyandMooMooImpl
