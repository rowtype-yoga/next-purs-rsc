module Next.Font.Google.RugeBoogie where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rugeBoogieImpl :: forall r. { | r } -> FontConfig

rugeBoogie :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rugeBoogie = rugeBoogieImpl
