module Next.Font.Google.LXGWWenKaiTC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lXGWWenKaiTCImpl :: forall r. { | r } -> FontConfig

lXGWWenKaiTC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lXGWWenKaiTC = lXGWWenKaiTCImpl
