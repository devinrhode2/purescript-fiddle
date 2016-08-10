module Main where
  {-
  -- following along https://www.youtube.com/watch?v=LqYfdmb0eUU ...
  data Food = Eggs | Coffee
  data Emotion = Happy | Neutral | Unhappy

  consume :: Food -> Emotion
  consume Eggs   = Neutral
  consume Coffee = Happy

  data SuperheroClass = Flying | WallWalking
  data Superpower = LaserBeamEyes | Stickiness
  data Kryptonite = Kryptonite | MaryJane
  superpower :: SuperheroClass -> Superpower
  superpower Flying      = LaserBeamEyes
  superpower WallWalking = Stickiness

  kryptonite :: Superpower -> Kryptonite
  kryptonite LaserBeamEyes = Kryptonite
  kryptonite Stickiness    = MaryJane

  -- data CharacterStats = List Number -- tuple?
  -- data CharacterStats =
  --   CharacterStats String Number Number
  --
  -- test1 :: CharacterStats
  -- test1 = CharacterStats "Mary Jane" 100 200
  --
  -- test2 :: CharacterStats
  -- test2 = CharacterStats "Peter Parker" 90 250
  --
  -- nameOf :: CharacterStats -> String
  -- nameof (CharacterStats n _ _) = n
  --
  -- nameOf test1 -- "Mary Jane"
  -- nameOf test2 -- "Peter Parker"


  data Loc = Loc Number Number

  locX :: Loc -> Number
  locX (Loc x _) = x
  locX (Loc 1 2) -- 1

  locY :: Loc -> Number
  locY (Loc _ y) = y
  locY (Loc 1 2) -- 2

  locX :: Loc -> Number
  -- locX l = case l of
  --            (Loc x _) -> x

  data NPC =
    Ogre String Loc Number |
    Wolf String Loc Number

  nameOf :: NPC -> String
  nameOf (Ogre record) = Ogre record { name = "Shrek" }
  nameOf (Wolf record) = Wolf record { name = "Big Bad" }
  -}


import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log "Hello sailor !"

  -- log consume Eggs
  -- log consume Coffee
