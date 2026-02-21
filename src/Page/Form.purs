-- @client
module Page.Form where

import Prelude hiding (div)

import Actions.Counter (stepAction)
import Next (Page, mkPage)
import Next.Action.Client (useActionState', useFormStatus')
import React.Basic.Events (handler_)
import Unsafe.Coerce (unsafeCoerce)
import Yoga.React.DOM (button, div, form, h1, h2, input, p)
import Yoga.React.Om (omComponent)
import Yoga.React.Om as Om

page :: Page "form"
page = mkPage {} do
  submitBtn <- omComponent "OmSubmitButton" \(_ :: {}) -> Om.do
    { pending } <- useFormStatus'
    Om.pure $ button { type: "submit", disabled: pending }
      (if pending then "Submitting..." else "Submit")
  pure \_ -> Om.do
    { state: count, dispatch } <- useActionState' stepAction 0
    Om.pure $ div {}
      [ h1 {} "Om Server Actions"
      , h2 {} "useActionState' + useFormStatus'"
      , p {} $ "Counter: " <> show count
      , form { action: unsafeCoerce dispatch }
          [ input { type: "number", name: "step", value: "1", onChange: handler_ (pure unit) }
          , submitBtn {}
          ]
      ]
