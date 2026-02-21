-- @client
module Page.Form where

import Prelude hiding (div)

import Actions.Counter (stepAction)
import Next (Page, nextPage)
import Next.Action.Client (useActionState', useFormStatus')
import Yoga.React.DOM (button, div, form, h1, h2, handlerAction, input, p)
import Yoga.React.Om (omComponent)
import Yoga.React.Om as Om

page :: Page "form"
page = nextPage {} do
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
      , form { action: handlerAction dispatch }
          [ input { type: "number", name: "step", defaultValue: "1" }
          , submitBtn {}
          ]
      ]
