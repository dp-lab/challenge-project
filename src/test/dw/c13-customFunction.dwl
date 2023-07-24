%dw 2.0
output application/json

fun find(arr, lambda, strat = 0) =
        (arr[strat to -1] filter  do {
            var args = $
            ---
            lambda(args)
        })[0]

// Test cases
---
{
  "((n) -> (n mod 5) == 0))": find([1,2,3,4,5], ((n) -> (n mod 5) == 0)),
  "((n) -> n == 6))": find([1,2,3,4,5], ((n) -> n == 6)),
  "((str) -> str == 'hi'))": find(["hi","hello","hi"], ((str) -> str == "hi")),
  "((n) -> n == 1), 1)": find([1,2,3,4,5], ((n) -> n == 4), 5)
}
