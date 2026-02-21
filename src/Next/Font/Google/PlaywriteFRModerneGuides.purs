module Next.Font.Google.PlaywriteFRModerneGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteFRModerneGuidesImpl :: forall r. { | r } -> FontConfig

playwriteFRModerneGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteFRModerneGuides = playwriteFRModerneGuidesImpl
