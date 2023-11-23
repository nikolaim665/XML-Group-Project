for $x in doc("Events.xml")/Events/Event
where $x/date[ends-with(., "11/2023")]
return $x