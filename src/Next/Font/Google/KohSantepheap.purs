module Next.Font.Google.KohSantepheap where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kohSantepheapImpl :: forall r. { | r } -> FontConfig

kohSantepheap :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kohSantepheap = kohSantepheapImpl
