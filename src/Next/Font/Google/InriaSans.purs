module Next.Font.Google.InriaSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import inriaSansImpl :: forall r. { | r } -> FontConfig

inriaSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
inriaSans = inriaSansImpl
