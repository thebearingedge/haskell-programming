module EqInstances where

data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn n) (TisAn n') = n == n'


data TwoIntegers =
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two n n') (Two m m') = n == m && n' == m'


data StringOrInt =
    TisAnInt   Int
  | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt n) (TisAnInt n')     = n == n'
  (==) (TisAString s) (TisAString s') = s == s'
  (==) _ _                            = False


data Pair a =
  Pair a a

instance Eq a => Eq (Pair a) where
  (Pair a _) == (Pair b _) = a == b


data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (Tuple a b) == (Tuple a' b') = a == a' && b == b'


data Which a =
    ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne b) = a == b
  (==) (ThatOne a) (ThatOne b) = a == b
  (==) _ _                     = False


data EitherOr a b =
    Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  Hello a == Hello a' = a == a'
  Goodbye b == Goodbye b' = b == b'
  _ == _ = False
