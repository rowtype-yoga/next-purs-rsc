module Next.Font.Google.TurretRoad where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import turretRoadImpl :: forall r. { | r } -> FontConfig

turretRoad :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
turretRoad = turretRoadImpl
