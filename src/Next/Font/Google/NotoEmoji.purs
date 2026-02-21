module Next.Font.Google.NotoEmoji where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoEmojiImpl :: forall r. { | r } -> FontConfig

notoEmoji :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoEmoji = notoEmojiImpl
