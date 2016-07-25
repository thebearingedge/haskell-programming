module BasicShow where


data Mood = Blah

instance Show Mood where
  show _ = "Blah"

myMood = Blah


data Mood' = Blah' deriving Show

myMood' = Blah'
