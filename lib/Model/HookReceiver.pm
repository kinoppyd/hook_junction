package Model::HookReceiver;
use Mouse::Role;

requires qw/parse toString/;

has 'receivedData' => (
    is => 'r',
    isa => 'String'
);

1;
