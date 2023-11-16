for $x in doc("Events.xml")/Events/Event
where $x/tickets_available > 0
return $x