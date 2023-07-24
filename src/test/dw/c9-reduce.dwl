%dw 2.0
output application/json
fun myMap(in) = in reduce ((item, accumulator = []) -> accumulator + item)
fun myFilter(in) = in reduce ((item, acc = []) -> if(item.age<=30)acc + item else acc)
fun mySizeOf(in) = in reduce ((item, acc = 0) -> acc + 1)
fun myJoinBy(in,sperator) = in reduce ((item, acc = "") -> acc ++ (if(acc != "") sperator else "") ++ item )
---
{
    myMap: myMap(payload),
    myFilter: myFilter(payload),
    mySizeOf: mySizeOf(vars.arr1) ,
    myJoinBy: myJoinBy(vars.arr1,",")
}
