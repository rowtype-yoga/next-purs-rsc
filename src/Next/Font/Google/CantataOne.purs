module Next.Font.Google.CantataOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cantataOneImpl :: forall r. { | r } -> FontConfig

cantataOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cantataOne = cantataOneImpl
