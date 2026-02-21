module Next.Font.Google.NotoZnamennyMusicalNotation where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoZnamennyMusicalNotationImpl :: forall r. { | r } -> FontConfig

notoZnamennyMusicalNotation :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoZnamennyMusicalNotation = notoZnamennyMusicalNotationImpl
