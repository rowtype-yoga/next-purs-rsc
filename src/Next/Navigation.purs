module Next.Navigation
  ( UseRouter
  , Router
  , useRouter
  , UsePathname
  , usePathname
  , UseSearchParams
  , SearchParams
  , useSearchParams
  , searchParamsGet
  , searchParamsGetAll
  , searchParamsHas
  , searchParamsToString
  , UseParams
  , Params
  , useParams
  , paramsGet
  , UseSelectedLayoutSegment
  , useSelectedLayoutSegment
  , UseSelectedLayoutSegments
  , useSelectedLayoutSegments
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)
import React.Basic.Hooks.Internal (Hook, unsafeHook)
import Route (Route, toPath)

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import data RouterImpl :: Type
foreign import data SearchParams :: Type
foreign import data Params :: Type

foreign import _useRouterImpl :: Effect RouterImpl
foreign import _usePathnameImpl :: Effect String
foreign import _useSearchParamsImpl :: Effect SearchParams
foreign import _useParamsImpl :: Effect Params
foreign import _useSelectedLayoutSegmentImpl :: Effect (Nullable String)
foreign import _useSelectedLayoutSegmentsImpl :: Effect (Array String)

foreign import _routerPush :: EffectFn2 RouterImpl String Unit
foreign import _routerReplace :: EffectFn2 RouterImpl String Unit
foreign import _routerRefresh :: EffectFn1 RouterImpl Unit
foreign import _routerPrefetch :: EffectFn2 RouterImpl String Unit
foreign import _routerBack :: EffectFn1 RouterImpl Unit
foreign import _routerForward :: EffectFn1 RouterImpl Unit

foreign import _searchParamsGet :: EffectFn2 SearchParams String (Nullable String)
foreign import _searchParamsGetAll :: EffectFn2 SearchParams String (Array String)
foreign import _searchParamsHas :: EffectFn2 SearchParams String Boolean
foreign import _searchParamsToString :: EffectFn1 SearchParams String

foreign import _paramsGet :: EffectFn2 Params String (Nullable String)


--------------------------------------------------------------------------------
-- useRouter
--------------------------------------------------------------------------------

foreign import data UseRouter :: Type -> Type

type Router =
  { push :: Route -> Effect Unit
  , replace :: Route -> Effect Unit
  , refresh :: Effect Unit
  , prefetch :: Route -> Effect Unit
  , back :: Effect Unit
  , forward :: Effect Unit
  }

useRouter :: Hook UseRouter Router
useRouter = unsafeHook do
  impl <- _useRouterImpl
  pure
    { push: \route -> runEffectFn2 _routerPush impl (toPath route)
    , replace: \route -> runEffectFn2 _routerReplace impl (toPath route)
    , refresh: runEffectFn1 _routerRefresh impl
    , prefetch: \route -> runEffectFn2 _routerPrefetch impl (toPath route)
    , back: runEffectFn1 _routerBack impl
    , forward: runEffectFn1 _routerForward impl
    }

--------------------------------------------------------------------------------
-- usePathname
--------------------------------------------------------------------------------

foreign import data UsePathname :: Type -> Type

usePathname :: Hook UsePathname String
usePathname = unsafeHook _usePathnameImpl

--------------------------------------------------------------------------------
-- useSearchParams
--------------------------------------------------------------------------------

foreign import data UseSearchParams :: Type -> Type

useSearchParams :: Hook UseSearchParams SearchParams
useSearchParams = unsafeHook _useSearchParamsImpl

searchParamsGet :: SearchParams -> String -> Effect (Maybe String)
searchParamsGet sp key = toMaybe <$> runEffectFn2 _searchParamsGet sp key

searchParamsGetAll :: SearchParams -> String -> Effect (Array String)
searchParamsGetAll sp key = runEffectFn2 _searchParamsGetAll sp key

searchParamsHas :: SearchParams -> String -> Effect Boolean
searchParamsHas sp key = runEffectFn2 _searchParamsHas sp key

searchParamsToString :: SearchParams -> Effect String
searchParamsToString sp = runEffectFn1 _searchParamsToString sp

--------------------------------------------------------------------------------
-- useParams
--------------------------------------------------------------------------------

foreign import data UseParams :: Type -> Type

useParams :: Hook UseParams Params
useParams = unsafeHook _useParamsImpl

paramsGet :: Params -> String -> Effect (Maybe String)
paramsGet p key = toMaybe <$> runEffectFn2 _paramsGet p key

--------------------------------------------------------------------------------
-- useSelectedLayoutSegment(s)
--------------------------------------------------------------------------------

foreign import data UseSelectedLayoutSegment :: Type -> Type

useSelectedLayoutSegment :: Hook UseSelectedLayoutSegment (Maybe String)
useSelectedLayoutSegment = unsafeHook (toMaybe <$> _useSelectedLayoutSegmentImpl)

foreign import data UseSelectedLayoutSegments :: Type -> Type

useSelectedLayoutSegments :: Hook UseSelectedLayoutSegments (Array String)
useSelectedLayoutSegments = unsafeHook _useSelectedLayoutSegmentsImpl

