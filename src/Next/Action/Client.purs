module Next.Action.Client
  ( UseActionState
  , useActionState
  , useActionState'
  , UseFormStatus
  , useFormStatus
  , useFormStatus'
  , callServerAction
  , UseOptimistic
  , useOptimistic
  , useOptimistic'
  ) where

import Prelude

import Control.Promise as Promise
import Data.Function.Uncurried (Fn2, mkFn2)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested (type (/\))
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn2, EffectFn3, runEffectFn2, runEffectFn3)
import Next.Action (ServerAction, FormAction, FormDispatch)
import React.Basic.Hooks.Internal (Hook, unsafeHook)
import Yoga.React.Om (OmRender, liftRender)

foreign import data UseActionState :: Row Type -> Type -> Type -> Type

foreign import useActionStateImpl :: forall action state. EffectFn2 action state { state :: state, dispatch :: FormDispatch, isPending :: Boolean }

useActionState
  :: forall state fields
   . FormAction state fields
  -> state
  -> Hook (UseActionState fields state) { state :: state, dispatch :: FormDispatch, isPending :: Boolean }
useActionState action initialState = unsafeHook (runEffectFn2 useActionStateImpl action initialState)

useActionState'
  :: forall ctx hooks state fields
   . FormAction state fields
  -> state
  -> OmRender ctx hooks (UseActionState fields state hooks) { state :: state, dispatch :: FormDispatch, isPending :: Boolean }
useActionState' action initialState = liftRender (useActionState action initialState)

foreign import data UseFormStatus :: Type -> Type

foreign import useFormStatusImpl :: Effect { pending :: Boolean }

useFormStatus :: Hook UseFormStatus { pending :: Boolean }
useFormStatus = unsafeHook useFormStatusImpl

useFormStatus'
  :: forall ctx hooks
   . OmRender ctx hooks (UseFormStatus hooks) { pending :: Boolean }
useFormStatus' = liftRender useFormStatus

foreign import callServerActionImpl :: forall action input output. EffectFn2 action input (Promise.Promise output)

callServerAction :: forall input output. ServerAction input output -> input -> Aff output
callServerAction action input = runEffectFn2 callServerActionImpl action input # Promise.toAffE

foreign import data UseOptimistic :: Type -> Type -> Type -> Type

foreign import useOptimisticImpl
  :: forall state action
   . EffectFn3
       (forall a b. Fn2 a b (a /\ b))
       state
       (Fn2 state action state)
       (state /\ (action -> Effect Unit))

useOptimistic
  :: forall state action
   . state
  -> (state -> action -> state)
  -> Hook (UseOptimistic state action) (state /\ (action -> Effect Unit))
useOptimistic state updateFn = unsafeHook do
  runEffectFn3 useOptimisticImpl
    (mkFn2 Tuple)
    state
    (mkFn2 updateFn)

useOptimistic'
  :: forall ctx hooks state action
   . state
  -> (state -> action -> state)
  -> OmRender ctx hooks (UseOptimistic state action hooks) (state /\ (action -> Effect Unit))
useOptimistic' state updateFn = liftRender (useOptimistic state updateFn)
