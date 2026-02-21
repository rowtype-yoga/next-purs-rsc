module Next.Font.Google.PoorStory where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import poorStoryImpl :: forall r. { | r } -> FontConfig

poorStory :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
poorStory = poorStoryImpl
