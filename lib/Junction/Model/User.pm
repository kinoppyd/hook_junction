package Junction::Model::User;
use Mouse;

has access_token => (
    is => 'r',
    isa => 'String'
);

__PACKAGE__->meta->make_immutable();
1;
