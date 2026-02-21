module Next.Font.Google.ZenAntique where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zenAntiqueImpl :: forall r. { | r } -> FontConfig

zenAntique :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zenAntique = zenAntiqueImpl
