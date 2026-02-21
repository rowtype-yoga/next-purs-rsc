module Next.Font.Google.DidactGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import didactGothicImpl :: forall r. { | r } -> FontConfig

didactGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
didactGothic = didactGothicImpl
