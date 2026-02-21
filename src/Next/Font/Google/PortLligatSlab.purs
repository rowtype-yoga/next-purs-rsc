module Next.Font.Google.PortLligatSlab where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import portLligatSlabImpl :: forall r. { | r } -> FontConfig

portLligatSlab :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
portLligatSlab = portLligatSlabImpl
