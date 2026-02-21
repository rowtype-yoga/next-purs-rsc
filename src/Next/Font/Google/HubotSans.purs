module Next.Font.Google.HubotSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hubotSansImpl :: forall r. { | r } -> FontConfig

hubotSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hubotSans = hubotSansImpl
