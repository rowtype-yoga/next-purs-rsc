module Next.Font.Google.FamiljenGrotesk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import familjenGroteskImpl :: forall r. { | r } -> FontConfig

familjenGrotesk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
familjenGrotesk = familjenGroteskImpl
