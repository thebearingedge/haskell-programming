module DoesItTypecheck where


data Person = Person Bool

instance Show Person where
  show (Person a) = show a

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)


data Mood = Blah
          | Woot deriving (Show, Eq, Ord)

settleDown x = if x == Woot
                 then Blah
                 else x


type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving Eq

instance Show Sentence where
  show (Sentence s v o) = concat [s, " ", v, " ", o, "."]

s1 = Sentence "dogs" "drool" "pools"
s2 = Sentence "Julie" "loves" "dogs"
