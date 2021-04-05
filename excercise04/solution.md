# Excercise
####  Infer types of the functions `factors`, `isPerfect`, `mH`, and `insert` and say whether they are monomorphic or polymorphic functions. Please justify your answer.
```haskell
mod :: Int -> Int -> Int
```
```haskell
factors n = [x | x <- [1..n-1], mod n x == 0]
factors :: Integral a => a -> [a]
-- due to type of mod, a can only be Int
-- =>
factors :: Int -> [Int]
```
```haskell
isPerfect n = sum (factors n) == n
sum :: (Foldable t, Num a) => t a -> a
-- due to type of factors:
sum :: [Int]-> Int
-- due to type of sum:
isPerfect :: Int -> Bool
```
```haskell
insert _ n [] = [n]
insert 0 n l = n:l
insert i n (x:xs) = x : insert (i-1) n xs

insert :: Int -> a -> [a] -> [a]
```

```haskell
mH (a, b, c) = c
mH :: (a, b, c) -> c
```

```haskell
factors :: Int -> [Int] -- monomorphic, because factors has one specific type
isPerfect :: Int -> Bool -- monomorphic, because isPerfect has one specific type
mH :: (a, b, c) -> c -- polimorphic, because mH type contains 'abstract' types a, b, and c
insert :: Int -> a -> [a] -> [a] -- polimorphic, because insert type contains 'abstract' type a
```

#### Some functions can be used with different argument types, but rarely with any type. Consider the square function, and identify which type is invalid. Please justify your answer.
```haskell
square :: Int -> Int
square :: Float -> Float
square :: Char -> Char
square :: Double -> Double
```

```haskell
square :: Char -> Char
```
Does not intuitively make sense, e.g. which char is the square of `t` (logically this might be something like `t^2`, however this is not one char anymore.)
Thus this type of the square function is invalid. (Unless you define square in a non intuitive way)

#### Define a function to calculate the circumference of a circle and the area of a rectangle. It is required to define a union type containing the necessary parameters of a circle and a rectangle.
```haskell
data Shape = Circle Float | Rectangle Float Float
shapeCalculation (Rectangle l w) = l * w -- If input is rectangle: calculate area
shapeCalculation (Circle r) = 2 * 3.14 * r -- If input is circle: calculate circumference
```