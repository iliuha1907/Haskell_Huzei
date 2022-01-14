import qualified Data.ByteString as B
main = do
  s <- B.readFile "Example.dat"
  calculateBytes s

calculateBytes :: B.ByteString -> IO ()
calculateBytes theString = print $ map (\x -> (B.head x, B.length x)) $ B.group $ B.sort theString