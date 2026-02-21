module Next.Font.Google.HankenGrotesk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hankenGroteskImpl :: forall r. { | r } -> FontConfig

hankenGrotesk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hankenGrotesk = hankenGroteskImpl
