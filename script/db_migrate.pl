#!/usr/bin/perl
use strict;
use warnings;
use DBIx::Migration;
use Constants::DBConstants;

use FindBin;
BEGIN { unshift @INC, "$FindBin::Bin/../lib" }

my $migrater = DBIx::Migration->new({
        dsn => $Junction::Constant::DB::DSN,
        dir => $Junction::Constant::DB::MIGRATE_DIR
});

