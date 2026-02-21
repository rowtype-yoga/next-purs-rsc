module Next.Font.Google.MonsieurLaDoulaise where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import monsieurLaDoulaiseImpl :: forall r. { | r } -> FontConfig

monsieurLaDoulaise :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
monsieurLaDoulaise = monsieurLaDoulaiseImpl
