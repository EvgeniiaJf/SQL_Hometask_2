create table if not exists Genre (
GenreID serial primary key,
GenreName VARCHAR(100) not null
);

create table if not exists Artist (
ArtistID serial primary key,
ArtistName VARCHAR(100) not null
);

create table if not exists GenreArtist (
GenreID INTEGER references Genre(GenreID),
ArtistID INTEGER references Artist(ArtistID)
);

create table if not exists ALBUM (
AlbumID serial primary key,
AlbumName VARCHAR(100) not null,
YearIssue date
);

create table if not exists ArtistAlbum (
ArtistID INTEGER references Artist(ArtistID),
AlbumID INTEGER references Album(AlbumID)
);

create table if not exists Track
TrackID serial primary key,
TrackName VARCHAR(200);
Duration time,
AlbumID INTEGER references Album(AlbumID)
);

create table if not exists Collection (
CollectionID serial primary key,
CollectionName VARCHAR(100),
YearIssue date,
TrackID INTEGER references Track(trackID)
);