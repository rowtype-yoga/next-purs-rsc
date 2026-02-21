module Next.Font.Google.Besley where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import besleyImpl :: forall r. { | r } -> FontConfig

besley :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
besley = besleyImpl
