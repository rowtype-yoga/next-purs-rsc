module Next.Font.Google.TASAExplorer where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tASAExplorerImpl :: forall r. { | r } -> FontConfig

tASAExplorer :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tASAExplorer = tASAExplorerImpl
