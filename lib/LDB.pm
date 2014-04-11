package LDB;
use Constants::DBConstants;

use DBIx::Skinny connect_info => +{
	dsn => $Junction::Constant::DB::DSN,
	username => $Junction::Constant::DB::USER,
	password => $Junction::Constant::DB::PASS
};
1;
