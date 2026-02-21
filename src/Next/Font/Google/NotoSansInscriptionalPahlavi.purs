module Next.Font.Google.NotoSansInscriptionalPahlavi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansInscriptionalPahlaviImpl :: forall r. { | r } -> FontConfig

notoSansInscriptionalPahlavi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansInscriptionalPahlavi = notoSansInscriptionalPahlaviImpl
