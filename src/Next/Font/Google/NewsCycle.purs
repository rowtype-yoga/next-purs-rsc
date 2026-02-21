module Next.Font.Google.NewsCycle where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import newsCycleImpl :: forall r. { | r } -> FontConfig

newsCycle :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
newsCycle = newsCycleImpl
