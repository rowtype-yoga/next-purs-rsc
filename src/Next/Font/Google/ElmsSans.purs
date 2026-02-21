module Next.Font.Google.ElmsSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import elmsSansImpl :: forall r. { | r } -> FontConfig

elmsSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
elmsSans = elmsSansImpl
