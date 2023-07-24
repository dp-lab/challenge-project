%dw 2.0
output application/json
---
payload groupBy $.invoiceId pluck ((value, key, index) -> 
            {
                "invoiceId": max(value.invoiceId) as Number,
                "vendorName": max(value.vendorName),
                "total": max(value.total) as Number,
                "lineItems": value map ((item, index) -> 
                                {
                                    "item": item.lineItem,
                                    "amount": item.lineItemAmount as Number
                                }
                            )
            }
        )
