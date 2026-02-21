module Next.Font.Google.NothingYouCouldDo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import nothingYouCouldDoImpl :: forall r. { | r } -> FontConfig

nothingYouCouldDo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
nothingYouCouldDo = nothingYouCouldDoImpl
