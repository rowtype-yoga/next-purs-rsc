module Actions.Counter where

import Prelude

import Next.Action (ServerAction, FormAction, serverAction, formAction)

stepAction :: FormAction Int (step :: Int)
stepAction = formAction @(step :: Int) \count fields ->
  pure (count + fields.step)

doubleAction :: ServerAction Int Int
doubleAction = serverAction \n -> pure (n * 2)
