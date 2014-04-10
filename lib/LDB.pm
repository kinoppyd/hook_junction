package LDB;
use DBIx::Skinny connect_info => +{
	dsn => 'dbi:SQLite:dbname=LDB/gpspush.db',
	username => '',
	password => '',
};
1;
