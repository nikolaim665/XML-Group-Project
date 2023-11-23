<EventsHappeningOnDate>
{
    for $event in doc("Events.xml")/Events/Event[date = "21/11/2023"]
    let $venue := doc("Venue.xml")/Venue/venue[@id = $event/venue]
    let $artist := doc("Artists.xml")/Artists/Artist[Entertainer/entertainer_id = $event/entertainer]
    order by $artist/Entertainer/name
    return 
        <Event>
            <Artist>{$artist/Entertainer/name/text()}</Artist>
            <Venue>{$venue/name/text()}</Venue>
            <AvailableTickets>{$event/tickets_available/text()}</AvailableTickets>
        </Event>
}
</EventsHappeningOnDate>