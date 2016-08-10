module Test.Main where

import Prelude
import Test.Unit
import Test.Unit.Assert (equal)
import Test.Unit.Main (runTest)

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = runTest do
  suite "Hello" do
    test "World!" do
      equal (1 + 1) 2

-- main = do
--   log "You should add some tests."
