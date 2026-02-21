module Next.Font.Google.RedditSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import redditSansImpl :: forall r. { | r } -> FontConfig

redditSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
redditSans = redditSansImpl
