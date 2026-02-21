module Next.Font.Google.PathwayExtreme where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pathwayExtremeImpl :: forall r. { | r } -> FontConfig

pathwayExtreme :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pathwayExtreme = pathwayExtremeImpl
