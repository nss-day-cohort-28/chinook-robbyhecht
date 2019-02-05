-- tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT T.Name as "Track Name", AL.Title as "Album Name", M.Name as "Media Type", G.Name as "Genre"
FROM Track as T
JOIN Album as AL on AL.AlbumId = T.AlbumId
JOIN MediaType as M on T.MediaTypeId = M.MediaTypeId
JOIN Genre as G on T.GenreId = G.GenreId
ORDER BY T.Name

