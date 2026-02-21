module Next.Font.Google.MajorMonoDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import majorMonoDisplayImpl :: forall r. { | r } -> FontConfig

majorMonoDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
majorMonoDisplay = majorMonoDisplayImpl
