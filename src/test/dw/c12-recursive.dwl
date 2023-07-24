%dw 2.0
output application/json
fun range(start,end,step=1) =
    if((step>0 and start<end) or (step<0 and start>end))
        [start] ++ range(start+step,end,step)
    else []
---
{
  "range(0, 5)": range(0, 5),
  "range(1, 10, 2)": range(1, 10, 2),
  "range(5, 0, -1)": range(5, 0, -1),
  "range(10, 0, -2)": range(10, 0, -2),
  "range(1, 5, 0.5)": range(1, 5, 0.5)
}