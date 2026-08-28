module Layout.Dashboard where

import Prelude hiding (div)

import Next (Layout, nextLayout)
import Yoga.React.DOM (div, nav, p)
import Yoga.React.Om (useCtx)
import Yoga.React.Om as Om

layout :: Layout
layout = nextLayout { section: "Dashboard" } $ pure
  \{ children } -> Om.do
    { section: label } <- useCtx
    Om.pure $ div {}
      [ nav {} [ p {} label ]
      , div {} [ children ]
      ]
