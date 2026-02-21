module Next.Font.Google.YujiBoku where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yujiBokuImpl :: forall r. { | r } -> FontConfig

yujiBoku :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yujiBoku = yujiBokuImpl
