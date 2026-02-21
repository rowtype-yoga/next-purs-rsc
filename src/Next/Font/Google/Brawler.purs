module Next.Font.Google.Brawler where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import brawlerImpl :: forall r. { | r } -> FontConfig

brawler :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
brawler = brawlerImpl
