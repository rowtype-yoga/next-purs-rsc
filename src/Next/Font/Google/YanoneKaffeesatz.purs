module Next.Font.Google.YanoneKaffeesatz where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yanoneKaffeesatzImpl :: forall r. { | r } -> FontConfig

yanoneKaffeesatz :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yanoneKaffeesatz = yanoneKaffeesatzImpl
