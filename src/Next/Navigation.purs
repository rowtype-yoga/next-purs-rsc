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

foreign import useRouterImpl :: Effect RouterImpl
foreign import usePathnameImpl :: Effect String
foreign import useSearchParamsImpl :: Effect SearchParams
foreign import useParamsImpl :: Effect Params
foreign import useSelectedLayoutSegmentImpl :: Effect (Nullable String)
foreign import useSelectedLayoutSegmentsImpl :: Effect (Array String)

foreign import routerPushImpl :: EffectFn2 RouterImpl String Unit
foreign import routerReplaceImpl :: EffectFn2 RouterImpl String Unit
foreign import routerRefreshImpl :: EffectFn1 RouterImpl Unit
foreign import routerPrefetchImpl :: EffectFn2 RouterImpl String Unit
foreign import routerBackImpl :: EffectFn1 RouterImpl Unit
foreign import routerForwardImpl :: EffectFn1 RouterImpl Unit

foreign import searchParamsGetImpl :: EffectFn2 SearchParams String (Nullable String)
foreign import searchParamsGetAllImpl :: EffectFn2 SearchParams String (Array String)
foreign import searchParamsHasImpl :: EffectFn2 SearchParams String Boolean
foreign import searchParamsToStringImpl :: EffectFn1 SearchParams String

foreign import paramsGetImpl :: EffectFn2 Params String (Nullable String)

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
  impl <- useRouterImpl
  pure
    { push: \route -> runEffectFn2 routerPushImpl impl (toPath route)
    , replace: \route -> runEffectFn2 routerReplaceImpl impl (toPath route)
    , refresh: runEffectFn1 routerRefreshImpl impl
    , prefetch: \route -> runEffectFn2 routerPrefetchImpl impl (toPath route)
    , back: runEffectFn1 routerBackImpl impl
    , forward: runEffectFn1 routerForwardImpl impl
    }

--------------------------------------------------------------------------------
-- usePathname
--------------------------------------------------------------------------------

foreign import data UsePathname :: Type -> Type

usePathname :: Hook UsePathname String
usePathname = unsafeHook usePathnameImpl

--------------------------------------------------------------------------------
-- useSearchParams
--------------------------------------------------------------------------------

foreign import data UseSearchParams :: Type -> Type

useSearchParams :: Hook UseSearchParams SearchParams
useSearchParams = unsafeHook useSearchParamsImpl

searchParamsGet :: SearchParams -> String -> Effect (Maybe String)
searchParamsGet sp key = toMaybe <$> runEffectFn2 searchParamsGetImpl sp key

searchParamsGetAll :: SearchParams -> String -> Effect (Array String)
searchParamsGetAll sp key = runEffectFn2 searchParamsGetAllImpl sp key

searchParamsHas :: SearchParams -> String -> Effect Boolean
searchParamsHas sp key = runEffectFn2 searchParamsHasImpl sp key

searchParamsToString :: SearchParams -> Effect String
searchParamsToString sp = runEffectFn1 searchParamsToStringImpl sp

--------------------------------------------------------------------------------
-- useParams
--------------------------------------------------------------------------------

foreign import data UseParams :: Type -> Type

useParams :: Hook UseParams Params
useParams = unsafeHook useParamsImpl

paramsGet :: Params -> String -> Effect (Maybe String)
paramsGet p key = toMaybe <$> runEffectFn2 paramsGetImpl p key

--------------------------------------------------------------------------------
-- useSelectedLayoutSegment(s)
--------------------------------------------------------------------------------

foreign import data UseSelectedLayoutSegment :: Type -> Type

useSelectedLayoutSegment :: Hook UseSelectedLayoutSegment (Maybe String)
useSelectedLayoutSegment = unsafeHook (toMaybe <$> useSelectedLayoutSegmentImpl)

foreign import data UseSelectedLayoutSegments :: Type -> Type

useSelectedLayoutSegments :: Hook UseSelectedLayoutSegments (Array String)
useSelectedLayoutSegments = unsafeHook useSelectedLayoutSegmentsImpl
