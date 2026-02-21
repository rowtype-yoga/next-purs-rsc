module Next.Font.Google.ZenKakuGothicNew where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zenKakuGothicNewImpl :: forall r. { | r } -> FontConfig

zenKakuGothicNew :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zenKakuGothicNew = zenKakuGothicNewImpl
