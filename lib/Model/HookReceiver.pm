package Model::HookReceiver;
use Mouse::Role;

requires qw/parse toString/;

has 'receivedData' => (
    is => 'ro',
    isa => 'String'
);

1;
