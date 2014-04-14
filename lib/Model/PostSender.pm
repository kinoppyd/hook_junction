package Model::PostSender;
use Mouse::Role;

require qw/post/;

has 'hookReceiver' => (
    is => 'r',
    isa => 'Model::HookReceiver'
);

1;
