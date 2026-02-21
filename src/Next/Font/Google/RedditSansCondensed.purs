module Next.Font.Google.RedditSansCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import redditSansCondensedImpl :: forall r. { | r } -> FontConfig

redditSansCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
redditSansCondensed = redditSansCondensedImpl
