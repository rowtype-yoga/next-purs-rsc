module Next.Action
  ( ServerAction
  , FormAction
  , FormData
  , FormDispatch
  , serverAction
  , formAction
  , class ParseFormFields
  , buildParsedForm
  ) where

import Prelude

import Control.Promise as Promise
import Data.Either (Either(..))
import Data.Function.Uncurried (Fn2, runFn2)
import Data.Maybe (Maybe(..))
import Data.Nullable (Nullable, toMaybe)
import Data.Symbol (class IsSymbol, reflectSymbol)
import Effect.Aff (Aff)
import Partial.Unsafe (unsafeCrashWith)
import Prim.Row as Row
import Prim.RowList as RL
import Record.Builder as Builder
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)
import Yoga.HTTP.API.Path (class ParseParam, parseParam)

--------------------------------------------------------------------------------
-- Types
--------------------------------------------------------------------------------

newtype ServerAction :: Type -> Type -> Type
newtype ServerAction input output = ServerAction Unit

newtype FormAction :: Type -> Row Type -> Type
newtype FormAction state (fields :: Row Type) = FormAction Unit

foreign import data FormData :: Type

foreign import data FormDispatch :: Type

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import _mkServerAction :: forall a b. a -> b
foreign import _mkFormAction :: forall a b. a -> b
foreign import _getFormField :: Fn2 String FormData (Nullable String)

--------------------------------------------------------------------------------
-- ParseFormFields
--------------------------------------------------------------------------------

class ParseFormFields (rl :: RL.RowList Type) (parsed :: Row Type) | rl -> parsed where
  buildParsedForm :: Proxy rl -> FormData -> Builder.Builder {} { | parsed }

instance ParseFormFields RL.Nil () where
  buildParsedForm _ _ = identity

instance
  ( IsSymbol name
  , ParseParam ty
  , ParseFormFields tail tailParsed
  , Row.Lacks name tailParsed
  , Row.Cons name ty tailParsed parsed
  ) =>
  ParseFormFields (RL.Cons name ty tail) parsed where
  buildParsedForm _ fd =
    Builder.insert (Proxy :: Proxy name) parsedValue <<< buildParsedForm (Proxy :: Proxy tail) fd
    where
    fieldName = reflectSymbol (Proxy :: Proxy name)
    parsedValue = case toMaybe (runFn2 _getFormField fieldName fd) of
      Nothing -> unsafeCrashWith ("Missing form field \"" <> fieldName <> "\"")
      Just s -> case parseParam s of
        Right v -> v
        Left err -> unsafeCrashWith ("Failed to parse form field \"" <> fieldName <> "\": " <> err)

parseFormFields
  :: forall rl parsed
   . RL.RowToList parsed rl
  => ParseFormFields rl parsed
  => FormData
  -> { | parsed }
parseFormFields fd = Builder.buildFromScratch (buildParsedForm (Proxy :: Proxy rl) fd)

--------------------------------------------------------------------------------
-- Server-side constructors
--------------------------------------------------------------------------------

serverAction :: forall input output. (input -> Aff output) -> ServerAction input output
serverAction f = unsafeCoerce $ _mkServerAction handler
  where
  handler input = Promise.fromAff (f input)

formAction
  :: forall @fields state fieldsRL
   . RL.RowToList fields fieldsRL
  => ParseFormFields fieldsRL fields
  => (state -> { | fields } -> Aff state)
  -> FormAction state fields
formAction f = unsafeCoerce $ _mkFormAction handler
  where
  handler prevState fd = do
    let parsed = parseFormFields fd
    Promise.fromAff (f prevState parsed)

