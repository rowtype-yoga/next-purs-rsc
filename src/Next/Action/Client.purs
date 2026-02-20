module Next.Action.Client
  ( UseActionState
  , useActionState
  , useActionState'
  , UseFormStatus
  , useFormStatus
  , useFormStatus'
  , callServerAction
  ) where

import Prelude

import Control.Promise as Promise
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn2, runEffectFn2)
import Next.Action (ServerAction, FormAction, FormDispatch)
import React.Basic.Hooks.Internal (Hook, unsafeHook)
import Yoga.React.Om (OmRender, liftRender)

foreign import _useActionStateImpl :: forall action state. EffectFn2 action state { state :: state, dispatch :: FormDispatch, isPending :: Boolean }
foreign import _useFormStatusImpl :: Effect { pending :: Boolean }
foreign import _callServerAction :: forall action input output. EffectFn2 action input (Promise.Promise output)

foreign import data UseActionState :: Row Type -> Type -> Type -> Type

useActionState
  :: forall state fields
   . FormAction state fields
  -> state
  -> Hook (UseActionState fields state) { state :: state, dispatch :: FormDispatch, isPending :: Boolean }
useActionState action initialState = unsafeHook (runEffectFn2 _useActionStateImpl action initialState)

useActionState'
  :: forall ctx hooks state fields
   . FormAction state fields
  -> state
  -> OmRender ctx hooks (UseActionState fields state hooks) { state :: state, dispatch :: FormDispatch, isPending :: Boolean }
useActionState' action initialState = liftRender (useActionState action initialState)

foreign import data UseFormStatus :: Type -> Type

useFormStatus :: Hook UseFormStatus { pending :: Boolean }
useFormStatus = unsafeHook _useFormStatusImpl

useFormStatus'
  :: forall ctx hooks
   . OmRender ctx hooks (UseFormStatus hooks) { pending :: Boolean }
useFormStatus' = liftRender useFormStatus

callServerAction :: forall input output. ServerAction input output -> input -> Aff output
callServerAction action input = Promise.toAffE (runEffectFn2 _callServerAction action input)
