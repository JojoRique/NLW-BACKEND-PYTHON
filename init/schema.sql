create table if not exists 'trips'(
    id TEXT PRIMARY KEY,
    destination text not null,
    start_date DATETIME,
    owner_name TEXT NOT NULL,
    owner_email TEXT NOT NULL,
    status INTEGER
);

create table if not exists 'email_to_invite'(
    id TEXT PRIMARY KEY,
    trip_id TEXT,
    email TEXT NOT NULL,
    FOREIGN KEY (trip_id) references trips(id)
);

create table if not exists 'links'(
    id TEXT PRIMARY KEY,
    trip_id TEXT,
    link TEXT NOT NULL,
    FOREIGN KEY (trip_id) references (trips)id
)