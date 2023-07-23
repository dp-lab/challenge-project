%dw 2.0
output application/json
---
[1,2,3,4,5,6,7,8] groupBy if(($ mod 2)==0) "even" else "odd" 