module Next.Font.Google.GermaniaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import germaniaOneImpl :: forall r. { | r } -> FontConfig

germaniaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
germaniaOne = germaniaOneImpl
