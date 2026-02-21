module Loading.Dashboard where

import Prelude

import Next (Loading)
import Next (loading) as Next
import Yoga.Om (asks) as Om
import Yoga.React.DOM (p)
import Yoga.React.Om (pure) as Om

loading :: Loading "dashboard"
loading = Next.loading { message: "Loading dashboard..." } do
  msg <- Om.asks _.message
  pure $ \_ -> Om.do
    Om.pure $ p {} msg
