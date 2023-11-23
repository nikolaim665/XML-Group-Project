declare function local:getTotalTicketsBoughtByCustomer($userID as xs:string) as xs:integer {
    let $customer := doc("Customers.xml")/Customers/Customer[User/userId = $userID]
    let $tickets := $customer/tickets/ticket
    return count($tickets)
};

let $userID := "5"
return local:getTotalTicketsBoughtByCustomer($userID)

