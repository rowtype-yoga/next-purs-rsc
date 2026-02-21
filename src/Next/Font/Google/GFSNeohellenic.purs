module Next.Font.Google.GFSNeohellenic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gFSNeohellenicImpl :: forall r. { | r } -> FontConfig

gFSNeohellenic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gFSNeohellenic = gFSNeohellenicImpl
