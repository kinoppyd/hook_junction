package Model::PostSender;
use Mouse::Role;

require qw/post/;

has 'hookReceiver' => (
    is => 'ro',
    isa => 'Model::HookReceiver'
);

1;
