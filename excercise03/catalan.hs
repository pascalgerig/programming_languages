fac 0 = 1
fac n = n * fac (n - 1)

catalan n = round (fac (2 * n) / (fac (n + 1)  * fac n))

firstNCatalan n = map catalan [0..n-1]