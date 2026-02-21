module Next.Font.Google.WalterTurncoat where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import walterTurncoatImpl :: forall r. { | r } -> FontConfig

walterTurncoat :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
walterTurncoat = walterTurncoatImpl
