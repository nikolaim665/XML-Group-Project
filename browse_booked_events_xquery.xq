let $userId := 3
for $customer in doc("customers.xml")//Customers/Customer[User/userId = $userId]
for $ticketId in $customer/tickets/ticket
let $eventID := doc("tickets.xml")//Tickets/Ticket[ticketID = $ticketId]/event
for $event in doc("events.xml")//Events/Event[event_ID = $eventID]
return $event

