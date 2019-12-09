--solution :: (Integral a) => () -> a
--solution () = fuelList ADD LIST HERE

fuelList :: (Integral a) => [a] -> a
fuelList [] = 0
fuelList (x:xs) = fuel(x) + fuelList(xs) 

fuel :: (Integral a) => a -> a
fuel x
  | x <= 6 = 0
  | otherwise = fuelCalc + fuel(fuelCalc)
  where fuelCalc = x `div` 3 - 2 