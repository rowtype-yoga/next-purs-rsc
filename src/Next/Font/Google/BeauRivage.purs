module Next.Font.Google.BeauRivage where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import beauRivageImpl :: forall r. { | r } -> FontConfig

beauRivage :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
beauRivage = beauRivageImpl
