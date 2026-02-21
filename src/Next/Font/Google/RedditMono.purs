module Next.Font.Google.RedditMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import redditMonoImpl :: forall r. { | r } -> FontConfig

redditMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
redditMono = redditMonoImpl
