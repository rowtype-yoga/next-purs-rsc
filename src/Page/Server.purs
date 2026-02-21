module Page.Server where

import Prelude hiding (div)

import Effect.Uncurried (EffectFn1, runEffectFn1)
import Effect.Class (liftEffect)
import Next (Page, nextPage)
import Yoga.React.DOM (code, div, h1, p, pre)
import Yoga.React.Om as Om

foreign import readFileImpl :: EffectFn1 String String

page :: Page "server"
page = nextPage {} do
  contents <- runEffectFn1 readFileImpl "package.json" # liftEffect
  pure \_ -> Om.do
    Om.pure $ div {}
      [ h1 {} "Server Component with Om"
      , p {} "This page read package.json from the filesystem at render time."
      , p {} "If you can see the file contents below, Om works as a server component."
      , pre {} [ code {} contents ]
      ]
