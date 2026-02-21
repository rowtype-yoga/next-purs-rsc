module Next.Font.Google.MysteryQuest where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mysteryQuestImpl :: forall r. { | r } -> FontConfig

mysteryQuest :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mysteryQuest = mysteryQuestImpl
