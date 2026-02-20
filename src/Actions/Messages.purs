module Actions.Messages where

import Prelude

import Data.Time.Duration (Milliseconds(..))
import Effect.Aff (delay)
import Next.Action (ServerAction, serverAction)

sendMessage :: ServerAction String String
sendMessage = serverAction \msg -> do
  delay (Milliseconds 1500.0)
  pure msg
