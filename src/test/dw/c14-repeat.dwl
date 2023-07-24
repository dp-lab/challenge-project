%dw 2.0
output application/json

fun repeat(e, n) = 
if(n == 0 or n== null) []
else (1 to (n default 0)) map ((item) -> e) default []

// Test cases
---
{
  "(1, 5)": repeat(1, 5),
  "([\"one\", \"two\"], 2)": repeat(["one", "two"], 2),
  "(1, 0)": repeat(1, 0),
  "(1, null)": repeat(1, null),
  "(null, null)": repeat(null, null)
}