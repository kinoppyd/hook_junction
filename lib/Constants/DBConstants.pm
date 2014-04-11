package Junction::Constant::DB;
use strict;
use warnings;

our $DSN = 'dbi:SQLite:dbname=LDB/gpspush.db';
our $USER = '';
our $PASS = '';

our $MIGRATE_DIR = 'migration/';

1;
