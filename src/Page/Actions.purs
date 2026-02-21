-- @client
module Page.Actions where

import Prelude hiding (div)

import Actions.Counter (stepAction, doubleAction)
import Data.Maybe (Maybe(..), maybe)
import Data.Tuple.Nested ((/\))
import Effect.Aff (launchAff_)
import Effect.Class (liftEffect)
import Next (Page, mkPage)
import Next.Action.Client (callServerAction, useActionState', useFormStatus')
import React.Basic.Events (handler_)
import Unsafe.Coerce (unsafeCoerce)
import Yoga.React.DOM (button, div, form, h1, h2, input, label, p)
import Yoga.React.Om (omComponent)
import Yoga.React.Om as Om

page :: Page "actions"
page = mkPage {} do
  submitBtn <- omComponent "SubmitButton" \(_ :: {}) -> Om.do
    { pending } <- useFormStatus'
    Om.pure $ button { type: "submit", disabled: pending }
      (if pending then "Submitting..." else "Submit")
  pure \_ -> Om.do
    { state: count, dispatch } <- useActionState' stepAction 0
    doubled /\ setDoubled <- Om.useState (Nothing :: Maybe Int)
    Om.pure $ div {}
      [ h1 {} "Server Actions"
      , h2 {} "Form Action"
      , p {} $ "Counter: " <> show count
      , form { action: unsafeCoerce dispatch }
          [ label {} "Step: "
          , input { type: "number", name: "step", value: "1", onChange: handler_ (pure unit) }
          , submitBtn {}
          ]
      , h2 {} "Direct Server Action"
      , button
          { onClick: handler_ $ launchAff_ do
              result <- callServerAction doubleAction 21
              liftEffect $ setDoubled (const (Just result))
          }
          "Double 21"
      , p {} $ "Result: " <> maybe "—" show doubled
      ]
