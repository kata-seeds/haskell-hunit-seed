import System.Exit
import Test.HUnit

import Kata

test_greeting = assertEqual "" "Hello!" $ greet (Person "Hello!")

respondsToTests :: [Test]
respondsToTests =
        [
        testCase "greeting" test_greeting
        ]

main :: IO ()
main = exitProperly (runTestTT (TestList respondsToTests))

exitProperly :: IO Counts -> IO ()
exitProperly m = do
  count <- m
  exitWith $ if failures count /= 0 || errors count /= 0 then ExitFailure 1 else ExitSuccess

testCase :: String -> Assertion -> Test
testCase label assertion = TestLabel label (TestCase assertion)
