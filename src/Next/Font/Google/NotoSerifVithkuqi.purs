module Next.Font.Google.NotoSerifVithkuqi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifVithkuqiImpl :: forall r. { | r } -> FontConfig

notoSerifVithkuqi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifVithkuqi = notoSerifVithkuqiImpl
