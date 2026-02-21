module Next.Font.Google.FragmentMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fragmentMonoImpl :: forall r. { | r } -> FontConfig

fragmentMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fragmentMono = fragmentMonoImpl
