module Next.Font.Google.Kapakana where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kapakanaImpl :: forall r. { | r } -> FontConfig

kapakana :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kapakana = kapakanaImpl
