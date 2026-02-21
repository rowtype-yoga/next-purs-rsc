module Next.Font.Google.Mandali where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mandaliImpl :: forall r. { | r } -> FontConfig

mandali :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mandali = mandaliImpl
