module Next.Font.Google.RubikMaze where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikMazeImpl :: forall r. { | r } -> FontConfig

rubikMaze :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikMaze = rubikMazeImpl
