module Next.Font.Google.Sarala where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import saralaImpl :: forall r. { | r } -> FontConfig

sarala :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sarala = saralaImpl
