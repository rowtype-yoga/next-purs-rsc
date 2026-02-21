module Next.Font.Google.ReenieBeanie where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import reenieBeanieImpl :: forall r. { | r } -> FontConfig

reenieBeanie :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
reenieBeanie = reenieBeanieImpl
