module Next.Font.Google.Ledger where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ledgerImpl :: forall r. { | r } -> FontConfig

ledger :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ledger = ledgerImpl
