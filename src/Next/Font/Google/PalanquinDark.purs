module Next.Font.Google.PalanquinDark where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import palanquinDarkImpl :: forall r. { | r } -> FontConfig

palanquinDark :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
palanquinDark = palanquinDarkImpl
