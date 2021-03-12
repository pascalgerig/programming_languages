-- Pattern Matching --
pattern 0 = -1
pattern n = n * 2

-- Guards --
guards n  | n == 0 = -1
          | n >= 1 = n * 2

-- Lambda --
lambda = (\n -> if n == 0 then -1
                else n * 2)