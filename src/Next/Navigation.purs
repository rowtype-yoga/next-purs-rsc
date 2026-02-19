module Next.Navigation
  ( UseRouter
  , Router
  , useRouter
  , UsePathname
  , usePathname
  , redirect
  , permanentRedirect
  , triggerNotFound
  ) where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)
import React.Basic.Hooks.Internal (Hook, unsafeHook)
import Route (Route, toPath)

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import data RouterImpl :: Type

foreign import _useRouterImpl :: Effect RouterImpl
foreign import _usePathnameImpl :: Effect String

foreign import _routerPush :: EffectFn2 RouterImpl String Unit
foreign import _routerReplace :: EffectFn2 RouterImpl String Unit
foreign import _routerRefresh :: EffectFn1 RouterImpl Unit
foreign import _routerPrefetch :: EffectFn2 RouterImpl String Unit
foreign import _routerBack :: EffectFn1 RouterImpl Unit
foreign import _routerForward :: EffectFn1 RouterImpl Unit

foreign import _redirectImpl :: EffectFn1 String Unit
foreign import _permanentRedirectImpl :: EffectFn1 String Unit
foreign import _notFoundImpl :: EffectFn1 Unit Unit

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
-- Server functions
--------------------------------------------------------------------------------

redirect :: Route -> Effect Unit
redirect route = runEffectFn1 _redirectImpl (toPath route)

permanentRedirect :: Route -> Effect Unit
permanentRedirect route = runEffectFn1 _permanentRedirectImpl (toPath route)

triggerNotFound :: Effect Unit
triggerNotFound = runEffectFn1 _notFoundImpl unit
