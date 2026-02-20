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
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn2, runEffectFn2)
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

--------------------------------------------------------------------------------
-- useOptimistic (transition-safe: addOptimistic is pre-wrapped in startTransition)
--------------------------------------------------------------------------------

foreign import data UseOptimistic :: Type -> Type -> Type -> Type

foreign import useOptimisticImpl :: forall state action. EffectFn2 state (state -> action -> state) { state :: state, isPending :: Boolean, dispatch :: action -> Effect Unit }
useOptimistic
  :: forall state action
   . state
  -> (state -> action -> state)
  -> Hook (UseOptimistic state action) { state :: state, isPending :: Boolean, dispatch :: action -> Effect Unit }
useOptimistic state updateFn = unsafeHook (runEffectFn2 useOptimisticImpl state updateFn)

useOptimistic'
  :: forall ctx hooks state action
   . state
  -> (state -> action -> state)
  -> OmRender ctx hooks (UseOptimistic state action hooks) { state :: state, isPending :: Boolean, dispatch :: action -> Effect Unit }
useOptimistic' state updateFn = liftRender (useOptimistic state updateFn)
