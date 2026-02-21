module Next.Font.Local where

import Next.Font (FontConfig, LocalFontOptions)
import Prim.Row (class Union)

foreign import localFontImpl :: forall r. { | r } -> FontConfig

localFont :: forall opts opts_. Union opts opts_ LocalFontOptions => { | opts } -> FontConfig
localFont = localFontImpl
