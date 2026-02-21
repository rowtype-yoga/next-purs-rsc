module Next.Font.Google.GemunuLibre where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gemunuLibreImpl :: forall r. { | r } -> FontConfig

gemunuLibre :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gemunuLibre = gemunuLibreImpl
