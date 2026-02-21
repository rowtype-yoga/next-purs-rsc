module Next.Font.Google.Srisakdi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import srisakdiImpl :: forall r. { | r } -> FontConfig

srisakdi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
srisakdi = srisakdiImpl
