module Next.Font.Google.NotoColorEmoji where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoColorEmojiImpl :: forall r. { | r } -> FontConfig

notoColorEmoji :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoColorEmoji = notoColorEmojiImpl
