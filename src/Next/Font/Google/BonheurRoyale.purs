module Next.Font.Google.BonheurRoyale where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bonheurRoyaleImpl :: forall r. { | r } -> FontConfig

bonheurRoyale :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bonheurRoyale = bonheurRoyaleImpl
