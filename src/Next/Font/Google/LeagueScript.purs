module Next.Font.Google.LeagueScript where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import leagueScriptImpl :: forall r. { | r } -> FontConfig

leagueScript :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
leagueScript = leagueScriptImpl
