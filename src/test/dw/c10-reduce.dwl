%dw 2.0
output application/json skipNullOn="everywhere"
---
{
    "1": payload reduce ((item, acc={}) -> acc ++ item ),
    "2": [1,2,3,4,5] reduce ((item, acc = []) -> acc + if((item mod 2) == 0) item * 100 else null)
}