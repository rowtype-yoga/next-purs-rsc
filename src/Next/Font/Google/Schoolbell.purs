module Next.Font.Google.Schoolbell where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import schoolbellImpl :: forall r. { | r } -> FontConfig

schoolbell :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
schoolbell = schoolbellImpl
