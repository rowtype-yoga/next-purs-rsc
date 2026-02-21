module Next.Font.Google.Cherish where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cherishImpl :: forall r. { | r } -> FontConfig

cherish :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cherish = cherishImpl
