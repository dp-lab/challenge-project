%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> 
    if(value != null)  
        (key): value
    else {}
)