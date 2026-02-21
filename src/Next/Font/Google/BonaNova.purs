module Next.Font.Google.BonaNova where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bonaNovaImpl :: forall r. { | r } -> FontConfig

bonaNova :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bonaNova = bonaNovaImpl
