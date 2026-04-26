module Loader.Plugin where

import Prelude

import Data.Array as Array
import Data.Maybe (Maybe(..))
import Data.String as String
import Effect (Effect)
import Effect.Console as Console

foreign import loadDirectivesImpl :: Effect Unit

foreign import lookupDirectiveImpl :: forall a. a -> (String -> a) -> String -> Effect a

foreign import lookupImportsImpl :: String -> Effect (Array String)

foreign import extractModuleImpl :: forall a. a -> (String -> a) -> String -> a

foreign import data Plugin :: Type

foreign import createPluginImpl :: (String -> String -> Effect String) -> Plugin

extractModule :: String -> Maybe String
extractModule = extractModuleImpl Nothing Just

lookupDirective :: String -> Effect (Maybe String)
lookupDirective = lookupDirectiveImpl Nothing Just

lookupImports :: String -> Effect (Array String)
lookupImports = lookupImportsImpl

transform :: String -> String -> Effect String
transform id source = do
  loadDirectivesImpl
  case extractModule id of
    Nothing -> pure source
    Just moduleName -> do
      directive <- lookupDirective moduleName
      imports <- lookupImports moduleName
      let directiveLine = case directive of
            Just d -> show d <> ";\n"
            Nothing -> ""
      let importLines = imports <#> \path -> "import " <> show path <> ";\n"
      let prefix = directiveLine <> String.joinWith "" importLines
      if String.null prefix then pure source
      else do
        Console.log $ "[purescript-rsc] " <> moduleName <> " -> injecting " <> show (Array.length imports) <> " import(s)"
          <> case directive of
               Just d -> " + " <> show d
               Nothing -> ""
        pure $ prefix <> source

plugin :: Plugin
plugin = createPluginImpl transform
