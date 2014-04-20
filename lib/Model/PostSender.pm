package Model::PostSender;
use Mouse::Role;

requires qw/post/;

has 'hookReceiver' => (
    is => 'ro',
    isa => 'Model::HookReceiver'
);

1;
