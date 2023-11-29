let $venueID := 1
for $venue in doc("Venue.xml")/Venue/venue[@id = $venueID]
return
<venue>
    <name>{$venue/name/text()}</name>    
    <location>{$venue/location/text()}</location>
    <capacity>{$venue/capacity/text()}</capacity>
</venue>