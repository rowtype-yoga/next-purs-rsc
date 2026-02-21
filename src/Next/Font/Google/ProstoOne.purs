module Next.Font.Google.ProstoOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import prostoOneImpl :: forall r. { | r } -> FontConfig

prostoOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
prostoOne = prostoOneImpl
