module Next.Font.Google.SairaStencilOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sairaStencilOneImpl :: forall r. { | r } -> FontConfig

sairaStencilOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sairaStencilOne = sairaStencilOneImpl
