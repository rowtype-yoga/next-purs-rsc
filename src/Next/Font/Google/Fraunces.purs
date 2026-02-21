module Next.Font.Google.Fraunces where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import frauncesImpl :: forall r. { | r } -> FontConfig

fraunces :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fraunces = frauncesImpl
