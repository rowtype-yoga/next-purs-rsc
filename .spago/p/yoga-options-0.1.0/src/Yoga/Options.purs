-- | Ergonomic optional fields for PureScript records.
-- |
-- | Define a row type with `f`-wrapped optional fields, resolve it with
-- | `OneOf Undefined`, then use `options` to accept any subset:
-- |
-- | ```purescript
-- | type MyConfigR f =
-- |   ( host :: String
-- |   , port :: Int
-- |   , ssl :: f Boolean
-- |   )
-- | type MyConfig = MyConfigR (OneOf Undefined)
-- |
-- | myFunction :: forall r. Options r MyConfig => { | r } -> Result
-- | myFunction given = do
-- |   let config = options @MyConfig given
-- |   let ssl = uorToMaybe config.ssl    -- Maybe Boolean
-- |   let ssl' = config.ssl ?? false     -- Boolean
-- | ```
module Yoga.Options
  ( class Options
  , options
  , class OptionsRL
  , class LookupField
  , class OptionsFieldType
  , nullishCoalesce
  , (??)
  , module ReExports
  ) where

import Data.Identity (Identity)
import Literals.Undefined (Undefined)
import Prim.RowList (class RowToList, RowList, Cons, Nil)
import Untagged.Union (UndefinedOr, fromUndefinedOr)
import Untagged.Union (UndefinedOr, uorToMaybe, fromUndefinedOr, defined, withUor) as ReExports
import Unsafe.Coerce (unsafeCoerce)

class Options :: Row Type -> Row Type -> Constraint
class Options given full

instance (RowToList given givenRL, RowToList full fullRL, OptionsRL givenRL fullRL) => Options given full

options :: forall @full given. Options given full => { | given } -> { | full }
options = unsafeCoerce

class OptionsRL :: RowList Type -> RowList Type -> Constraint
class OptionsRL givenRL fullRL

instance OptionsRL Nil fullRL

instance
  ( LookupField label fullRL fullType
  , OptionsFieldType givenType fullType
  , OptionsRL givenRL fullRL
  ) =>
  OptionsRL (Cons label givenType givenRL) fullRL

class LookupField :: Symbol -> RowList Type -> Type -> Constraint
class LookupField label rl ty | label rl -> ty

instance LookupField label (Cons label ty tail) ty
else instance LookupField label tail ty => LookupField label (Cons other ty' tail) ty

class OptionsFieldType :: Type -> Type -> Constraint
class OptionsFieldType from to

instance OptionsFieldType Undefined a
else instance (RowToList r1 rl1, RowToList r2 rl2, OptionsRL rl1 rl2) => OptionsFieldType (Record r1) (UndefinedOr (Record r2))
else instance OptionsFieldType a (UndefinedOr a)
else instance OptionsFieldType a (Identity a)
else instance OptionsFieldType a a

nullishCoalesce :: forall a. UndefinedOr a -> a -> a
nullishCoalesce uor fallback = fromUndefinedOr fallback uor

infixl 9 nullishCoalesce as ??
