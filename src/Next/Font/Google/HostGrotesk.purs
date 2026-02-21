module Next.Font.Google.HostGrotesk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hostGroteskImpl :: forall r. { | r } -> FontConfig

hostGrotesk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hostGrotesk = hostGroteskImpl
