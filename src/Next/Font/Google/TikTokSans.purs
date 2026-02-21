module Next.Font.Google.TikTokSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tikTokSansImpl :: forall r. { | r } -> FontConfig

tikTokSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tikTokSans = tikTokSansImpl
