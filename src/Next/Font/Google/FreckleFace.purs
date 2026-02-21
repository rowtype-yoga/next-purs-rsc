module Next.Font.Google.FreckleFace where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import freckleFaceImpl :: forall r. { | r } -> FontConfig

freckleFace :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
freckleFace = freckleFaceImpl
