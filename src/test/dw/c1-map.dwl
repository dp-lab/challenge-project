%dw 2.0
output application/json
---
payload map ((item, index) -> 
    {num: index + 1} ++
    item mapObject ((value, key, index) -> 
        if(key ~= "jobs") 
            (key): value   map ({num: $$ +1} ++ $) 
        else (key): value
    )
)