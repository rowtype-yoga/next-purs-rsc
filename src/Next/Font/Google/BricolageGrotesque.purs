module Next.Font.Google.BricolageGrotesque where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bricolageGrotesqueImpl :: forall r. { | r } -> FontConfig

bricolageGrotesque :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bricolageGrotesque = bricolageGrotesqueImpl
