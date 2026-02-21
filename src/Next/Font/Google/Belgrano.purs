module Next.Font.Google.Belgrano where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import belgranoImpl :: forall r. { | r } -> FontConfig

belgrano :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
belgrano = belgranoImpl
