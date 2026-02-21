module Next.Font.Google.CossetteTexte where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cossetteTexteImpl :: forall r. { | r } -> FontConfig

cossetteTexte :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cossetteTexte = cossetteTexteImpl
