module Next.Font.Google.Slackey where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import slackeyImpl :: forall r. { | r } -> FontConfig

slackey :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
slackey = slackeyImpl
