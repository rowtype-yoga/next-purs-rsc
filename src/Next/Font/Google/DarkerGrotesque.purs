module Next.Font.Google.DarkerGrotesque where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import darkerGrotesqueImpl :: forall r. { | r } -> FontConfig

darkerGrotesque :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
darkerGrotesque = darkerGrotesqueImpl
