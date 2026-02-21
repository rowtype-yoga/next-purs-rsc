module Next.Font.Google.Parastoo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import parastooImpl :: forall r. { | r } -> FontConfig

parastoo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
parastoo = parastooImpl
