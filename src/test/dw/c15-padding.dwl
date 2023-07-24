%dw 2.0
output application/json
fun repeat(val,n) = (1 to (n default 0)) map ((item)->val) default []
fun padLeft(str,l,padChar="0") =
    repeat(padChar, (l-sizeOf(str))) joinBy  "" ++ str
fun padRight(str,l,padChar="0") =
    str ++ repeat(padChar,(l-sizeOf(str))) joinBy ""
---
padLeft("123", 6,"*")
