module Next.Font.Google.KeaniaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import keaniaOneImpl :: forall r. { | r } -> FontConfig

keaniaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
keaniaOne = keaniaOneImpl
