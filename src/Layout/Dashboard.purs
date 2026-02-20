module Layout.Dashboard where

import Prelude hiding (div)

import Next (Layout, nextLayout)
import Yoga.React.DOM (div, h2, nav, p)
import Yoga.React.Om (useOm)
import Yoga.React.Om as Om

layout :: Layout
layout = nextLayout "DashboardLayout" { section: "Dashboard" } $ pure
  \{ children } -> Om.do
    label <- useOm \ctx -> pure ctx.section
    Om.pure $ div {}
      [ nav {} [ p {} label ]
      , div {} [ children ]
      ]
