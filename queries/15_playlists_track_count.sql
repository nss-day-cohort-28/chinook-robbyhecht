-- playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT P.Name as "Play List", COUNT() as "Number of Tracks"
FROM PlaylistTrack as PT
LEFT JOIN Playlist as P on P.PlaylistId = PT.PlaylistId
GROUP BY P.PlaylistId
ORDER BY P.Name ASC