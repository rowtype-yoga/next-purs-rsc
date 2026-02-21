module Next.Font.Google.JuliusSansOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import juliusSansOneImpl :: forall r. { | r } -> FontConfig

juliusSansOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
juliusSansOne = juliusSansOneImpl
