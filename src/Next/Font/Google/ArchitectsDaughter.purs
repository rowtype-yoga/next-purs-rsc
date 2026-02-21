module Next.Font.Google.ArchitectsDaughter where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import architectsDaughterImpl :: forall r. { | r } -> FontConfig

architectsDaughter :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
architectsDaughter = architectsDaughterImpl
