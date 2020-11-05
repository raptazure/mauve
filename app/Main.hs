module Main where

import Compose (outputFilePath, sampleRate)
import Play (save)
import System.Process (runCommand)
import Text.Printf (printf)

main :: IO ()
main = do
  save outputFilePath
  _ <- runCommand $ printf "ffplay -autoexit -showmode 1 -f f32le -ar %f %s" sampleRate outputFilePath
  return ()