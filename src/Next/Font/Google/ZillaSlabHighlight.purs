module Next.Font.Google.ZillaSlabHighlight where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zillaSlabHighlightImpl :: forall r. { | r } -> FontConfig

zillaSlabHighlight :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zillaSlabHighlight = zillaSlabHighlightImpl
