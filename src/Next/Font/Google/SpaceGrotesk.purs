module Next.Font.Google.SpaceGrotesk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import spaceGroteskImpl :: forall r. { | r } -> FontConfig

spaceGrotesk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
spaceGrotesk = spaceGroteskImpl
