%dw 2.0
output application/json
var filterArray = ["deleted", "processed"]
---
payload filter ((item, index) -> !(filterArray contains  item))
