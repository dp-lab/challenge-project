%dw 2.0
output application/json skipNullOn="everywhere"
fun removeEmpty(value) = value match {
    case value is Object-> if(isEmpty(value)) null else value mapObject ((value, key, index) -> (key) : removeEmpty(value))
    case value is Array -> if(isEmpty(value)) null  else value map ((item, index) -> removeEmpty(value))
    case value is String -> if(isEmpty(value)) null else value 
    else -> value
}
---
removeEmpty(payload)