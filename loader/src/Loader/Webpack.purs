module Loader.Webpack where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Console as Console

foreign import loadDirectivesImpl :: String -> Effect Unit

foreign import lookupDirectiveImpl :: forall a. a -> (String -> a) -> String -> Effect a

foreign import extractModuleImpl :: forall a. a -> (String -> a) -> String -> a

extractModule :: String -> Maybe String
extractModule = extractModuleImpl Nothing Just

lookupDirective :: String -> Effect (Maybe String)
lookupDirective = lookupDirectiveImpl Nothing Just

loader :: String -> String -> String -> Effect String
loader rootContext resourcePath source = do
  loadDirectivesImpl rootContext
  case extractModule resourcePath of
    Nothing -> pure source
    Just moduleName -> do
      directive <- lookupDirective moduleName
      case directive of
        Nothing -> pure source
        Just d -> do
          Console.log $ "[purescript-rsc] " <> moduleName <> " -> " <> show d
          pure $ show d <> ";\n" <> source
