-- @client
module Page.Optimistic where

import Prelude hiding (div)

import Actions.Messages (sendMessage)
import Data.Array (length, snoc)
import Data.Tuple.Nested ((/\))
import Effect.Aff (launchAff_)
import Effect.Class (liftEffect)
import Effect.Timer (setTimeout)
import Next (Page, mkPage)
import Next.Action.Client (useOptimistic', callServerAction)
import React.Basic.Events (handler_)
import Unsafe.Coerce (unsafeCoerce)
import Yoga.React.DOM (button, div, h1, h2, li, p, ul)
import Yoga.React.Om as Om

page :: Page "optimistic"
page = mkPage {} $ pure \_ -> Om.do
  messages /\ setMessages <- Om.useState [ "Welcome!" ]
  { state: optimistic, dispatch: addOptimistic } <- useOptimistic' messages \state msg ->
    snoc state (msg <> " (sending...)")

  let counter = length optimistic

  let handleAdd = do
        let msg = "Message #" <> show counter
        addOptimistic msg
        launchAff_ do
          confirmed <- callServerAction sendMessage msg
          setMessages (\prev -> snoc prev confirmed) # liftEffect

  let handleLocal = do
        let msg = "Local #" <> show counter
        addOptimistic msg
        void $ setTimeout 1500 do
          setMessages \prev -> snoc prev msg

  Om.pure $ div {}
    [ h1 {} "useOptimistic Demo"
    , p {} "Items appear immediately with '(sending...)' then confirm after 1.5s."
    , div {}
        [ button { onClick: handler_ handleAdd } "Send via Server Action"
        , button
            { onClick: handler_ handleLocal
            , style: unsafeCoerce { marginLeft: "8px" }
            }
            "Send with setTimeout"
        ]
    , h2 {} $ "Messages (" <> show counter <> ")"
    , ul {} (map (\msg -> li {} msg) optimistic)
    ]
