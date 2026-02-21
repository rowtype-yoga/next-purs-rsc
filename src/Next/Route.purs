module Next.Route (class IsRoute, toPath) where

class IsRoute route where
  toPath :: route -> String
