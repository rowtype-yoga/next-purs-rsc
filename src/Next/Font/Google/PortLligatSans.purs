module Next.Font.Google.PortLligatSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import portLligatSansImpl :: forall r. { | r } -> FontConfig

portLligatSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
portLligatSans = portLligatSansImpl
