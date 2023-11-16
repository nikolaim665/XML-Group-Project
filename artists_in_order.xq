for $x in doc("Artists.xml")/Artists/Artist/Entertainer
order by $x/name
return <artist>{$x}</artist>