module Next.Font.Google.LeckerliOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import leckerliOneImpl :: forall r. { | r } -> FontConfig

leckerliOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
leckerliOne = leckerliOneImpl
