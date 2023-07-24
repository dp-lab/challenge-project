%dw 2.0
output application/json
fun chunkStr(str,i) = 
  if(str=="" or str ==null or i == 0 or i == null) 
    []
  else if(sizeOf(str)<i) 
    [str[0 to -1]]
  else  
    [ str[0 to i-1] ] ++ chunkStr(str[i to -1],i)
---
chunkStr("hi",1)