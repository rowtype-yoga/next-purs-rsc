module Next.Font.Google.Forum where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import forumImpl :: forall r. { | r } -> FontConfig

forum :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
forum = forumImpl
