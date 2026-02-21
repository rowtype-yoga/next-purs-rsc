module Next.Font.Google.ZalandoSansExpanded where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zalandoSansExpandedImpl :: forall r. { | r } -> FontConfig

zalandoSansExpanded :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zalandoSansExpanded = zalandoSansExpandedImpl
