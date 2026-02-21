module Next.Font.Google.MuseoModerno where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import museoModernoImpl :: forall r. { | r } -> FontConfig

museoModerno :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
museoModerno = museoModernoImpl
