Problem #1
import Text.Printf (printf)

main :: IO ()
main = do
  line <- getLine
  let nums = map read (words line) :: [Int]
      m    = nums !! 6
      allowance = fromIntegral m * 2.75
  printf "The multiplier is %d! Lulu’s allowance is $ %.2f!" m allowance
Problem #2
import Control.Monad (replicateM_)
import Data.Char (isUpper)

main :: IO ()
main = do
  nLine <- getLine
  let n = read nLine :: Int
  replicateM_ n $ do
    line <- getLine
    let (_:s:_) = words line
        cnt     = length (filter isUpper s)
    print cnt
Problem #3
import Text.Printf (printf)

main :: IO ()
main = do
  line <- getLine
  let [a, b, c] = map read (words line) :: [Double]
      avg       = (a + b + c) / 3
  printf "%.2f" avg
Problem #4
import Data.List (sort)

main :: IO ()
main = do
  line   <- getLine
  let nums   = map read (words line) :: [Int]
      sorted = sort nums
  putStrLn $ unwords (map show sorted)
  putStrLn $ unwords (map show nums)
Problem #5
import Control.Monad (unless)

main :: IO ()
main = do
  contents <- getContents
  mapM_ processLine (lines contents)

processLine :: String -> IO ()
processLine line = do
  let ws      = words line
  case ws of
    (nStr:nums) ->
      let n        = read nStr :: Int
          vals     = take n (map read nums :: [Int])
          evensRev = filter even (reverse vals)
      in putStrLn $ unwords (map show evensRev)
    _ -> return ()
