module Loader.Plugin where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Console as Console

foreign import loadDirectivesImpl :: Effect Unit

foreign import lookupDirectiveImpl :: forall a. a -> (String -> a) -> String -> Effect a

foreign import extractModuleImpl :: forall a. a -> (String -> a) -> String -> a

foreign import data Plugin :: Type

foreign import createPluginImpl :: (String -> String -> Effect String) -> Plugin

extractModule :: String -> Maybe String
extractModule = extractModuleImpl Nothing Just

lookupDirective :: String -> Effect (Maybe String)
lookupDirective = lookupDirectiveImpl Nothing Just

transform :: String -> String -> Effect String
transform id source = do
  loadDirectivesImpl
  case extractModule id of
    Nothing -> pure source
    Just moduleName -> do
      directive <- lookupDirective moduleName
      case directive of
        Nothing -> pure source
        Just d -> do
          Console.log $ "[purescript-rsc] " <> moduleName <> " -> " <> show d
          pure $ show d <> ";\n" <> source

plugin :: Plugin
plugin = createPluginImpl transform
