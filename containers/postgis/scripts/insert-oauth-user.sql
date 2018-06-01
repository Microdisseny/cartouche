--
-- Insert a default test user named cartouche with an invalid password
-- crypt so we can attach an OAuth client ID to it.
--

INSERT INTO users (
    email,
    pass_crypt,
    creation_time,
    display_name,
    pass_salt,
    email_valid,
    languages,
    status,
    terms_agreed
) VALUES (
    'cartouche@localhost',
    'xXxdeadpasswordcryptxXx=',
    '2017-11-29 21:38:09.645327',
    'cartouche',
    'sha512!10000!/xWDMmKhbvtd/FcS2FNDxVbhO5qXp13pwHDSyZqfpv0=',
    true,
    'en-US,en',
    'active',
    '2017-11-29 21:38:13.560897'
);

--
-- Hard-code an OAuth access key to make the installation README a lot
-- easier to write.
--
-- For some reason the iD OAuth key is part of the global application
-- configuration, but it's also necessary to attach it to a particular
-- user in the database...
--

INSERT INTO client_applications (
    name,
    url,
    key,
    secret,
    user_id,
    created_at,
    updated_at,
    allow_read_prefs,
    allow_write_prefs,
    allow_write_diary,
    allow_write_api,
    allow_read_gpx,
    allow_write_gpx,
    allow_write_notes
) VALUES (
    'iD Editor',
    'http://localhost:8000',
    'ZowKqcxvhxUD0fwwWdYUEOROgwweNlv9O9i6ypBv',
    '5AkPWmWg7Ri8hw8S1CU6Fvj5fvMSdlgSUOIswq4X',
    1,
    '2017-11-29 21:59:35.090953',
    '2017-11-29 21:59:35.090953',
    true,
    true,
    true,
    true,
    true,
    true,
    true
);