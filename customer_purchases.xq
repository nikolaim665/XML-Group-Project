<CustomerPurchases>
{
    for $ticket in doc("Tickets.xml")/Tickets/Ticket
    let $customer := doc("Customers.xml")/Customers/Customer[User/userId = $ticket/customer]
    let $event := doc("Events.xml")/Events/Event[event_ID = $ticket/event] 
    let $venue := doc("Venue.xml")/Venue/venue[@id = $event/venue]
    let $artist := doc("Artists.xml")/Artists/Artist[Entertainer/entertainer_id = $event/entertainer]
    let $trans := doc("Transactions.xml")/Transactions/Transaction[ticket = $ticket/ticketID]
    order by $customer/User/userId
    return
    <Purchase>
        <Customer>
            <Name>{$customer/User/username/text()}</Name>
            <Email>{$customer/email/text()}</Email>
        </Customer>
        <EventDetails>
            <Artist>{$artist/Entertainer/name/text()}</Artist>
            <Venue>{$venue/name/text()}</Venue>
            <Date>{$event/date/text()}</Date>
        </EventDetails>
        <Transaction>
            <Date>{$trans/date/text()}</Date>
            <Status>{$trans/status/text()}</Status>
        </Transaction>
    </Purchase>
} 
</CustomerPurchases>