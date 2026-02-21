module Next.Font.Google.FrankRuhlLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import frankRuhlLibreImpl :: forall r. { | r } -> FontConfig

frankRuhlLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
frankRuhlLibre = frankRuhlLibreImpl
