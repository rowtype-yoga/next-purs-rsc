module Next.Font.Google.ChelaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chelaOneImpl :: forall r. { | r } -> FontConfig

chelaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chelaOne = chelaOneImpl
