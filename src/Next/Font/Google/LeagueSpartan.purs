module Next.Font.Google.LeagueSpartan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import leagueSpartanImpl :: forall r. { | r } -> FontConfig

leagueSpartan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
leagueSpartan = leagueSpartanImpl
