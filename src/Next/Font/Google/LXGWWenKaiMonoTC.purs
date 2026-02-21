module Next.Font.Google.LXGWWenKaiMonoTC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lXGWWenKaiMonoTCImpl :: forall r. { | r } -> FontConfig

lXGWWenKaiMonoTC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lXGWWenKaiMonoTC = lXGWWenKaiMonoTCImpl
