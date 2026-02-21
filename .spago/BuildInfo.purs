-- @inline export packages always
-- @inline export pursVersion always
-- @inline export spagoVersion always
module Spago.Generated.BuildInfo where

packages :: { "kitchen-sink" :: String, "next-purs-rsc" :: String, "route-loader" :: String }
packages =
  { "kitchen-sink": "0.0.0"
  , "next-purs-rsc": "0.0.0"
  , "route-loader": "0.0.0"
  }

pursVersion :: String
pursVersion = "0.15.15"

spagoVersion :: String
spagoVersion = "1.0.3"
