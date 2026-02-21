module Next.Font.Google.Workbench where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import workbenchImpl :: forall r. { | r } -> FontConfig

workbench :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
workbench = workbenchImpl
