module Next.Action.Client
  ( UseActionState
  , useActionState
  , useActionState'
  , UseFormStatus
  , useFormStatus
  , useFormStatus'
  , callServerAction
  , module Hooks
  , useOptimistic'
  ) where

import Prelude

import Control.Promise as Promise
import Data.Tuple.Nested (type (/\))
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn2, runEffectFn2)
import Next.Action (ServerAction, FormAction, FormDispatch)
import React.Basic.Hooks (UseOptimistic, useOptimistic) as Hooks
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

useOptimistic'
  :: forall ctx hooks state action
   . state
  -> (state -> action -> state)
  -> OmRender ctx hooks (Hooks.UseOptimistic state action hooks) (state /\ (action -> Effect Unit))
useOptimistic' state updateFn = liftRender (Hooks.useOptimistic state updateFn)
