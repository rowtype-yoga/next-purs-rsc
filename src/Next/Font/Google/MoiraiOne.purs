module Next.Font.Google.MoiraiOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import moiraiOneImpl :: forall r. { | r } -> FontConfig

moiraiOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
moiraiOne = moiraiOneImpl
