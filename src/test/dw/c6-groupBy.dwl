%dw 2.0
output application/json skipNullOn="everywhere"
var groupedAllocations = vars.allocations groupBy $.invoiceId
---
payload map ((item, index) -> 
    item ++ 
    allocations: flatten(groupedAllocations pluck ((value, key, index) -> 
                    if(key ~= item.invoiceId) value map ($ - "invoiceId")
                    else null))
)

