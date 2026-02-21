module Next.Font.Google.NotoSansInscriptionalParthian where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansInscriptionalParthianImpl :: forall r. { | r } -> FontConfig

notoSansInscriptionalParthian :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansInscriptionalParthian = notoSansInscriptionalParthianImpl
