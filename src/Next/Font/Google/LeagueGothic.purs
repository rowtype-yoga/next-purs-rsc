module Next.Font.Google.LeagueGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import leagueGothicImpl :: forall r. { | r } -> FontConfig

leagueGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
leagueGothic = leagueGothicImpl
