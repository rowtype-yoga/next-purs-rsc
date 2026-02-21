module Next.Font.Google.IngridDarling where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ingridDarlingImpl :: forall r. { | r } -> FontConfig

ingridDarling :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ingridDarling = ingridDarlingImpl
