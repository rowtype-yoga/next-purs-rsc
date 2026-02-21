module Next.Font.Google.MiltonianTattoo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import miltonianTattooImpl :: forall r. { | r } -> FontConfig

miltonianTattoo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
miltonianTattoo = miltonianTattooImpl
