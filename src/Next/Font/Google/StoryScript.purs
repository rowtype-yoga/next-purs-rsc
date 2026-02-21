module Next.Font.Google.StoryScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import storyScriptImpl :: forall r. { | r } -> FontConfig

storyScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
storyScript = storyScriptImpl
