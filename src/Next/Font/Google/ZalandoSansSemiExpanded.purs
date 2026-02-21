module Next.Font.Google.ZalandoSansSemiExpanded where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zalandoSansSemiExpandedImpl :: forall r. { | r } -> FontConfig

zalandoSansSemiExpanded :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zalandoSansSemiExpanded = zalandoSansSemiExpandedImpl
