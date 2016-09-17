{-# LANGUAGE DataKinds #-}

module Html where

data Tree Tag a
  = Leaf tag a
  | Branch tag a [Tree a]

type Html = Tree Tag

newtype Attr = Attr { getAttr :: (Property, Value) }

data Property
  = Src
  | Href

data Tag
  = Head
  | P
  | I
  | Strong
  | Small
