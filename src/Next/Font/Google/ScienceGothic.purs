module Next.Font.Google.ScienceGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import scienceGothicImpl :: forall r. { | r } -> FontConfig

scienceGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
scienceGothic = scienceGothicImpl
