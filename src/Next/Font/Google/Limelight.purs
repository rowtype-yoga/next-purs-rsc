module Next.Font.Google.Limelight where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import limelightImpl :: forall r. { | r } -> FontConfig

limelight :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
limelight = limelightImpl
