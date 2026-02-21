module Next.Font.Google.LoveYaLikeASister where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import loveYaLikeASisterImpl :: forall r. { | r } -> FontConfig

loveYaLikeASister :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
loveYaLikeASister = loveYaLikeASisterImpl
