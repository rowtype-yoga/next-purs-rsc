module Next.Font.Google.Lusitana where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lusitanaImpl :: forall r. { | r } -> FontConfig

lusitana :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lusitana = lusitanaImpl
