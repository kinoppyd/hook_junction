package Model::HookReceiver;
use Mouse::Util::TypeConstraints;
enum 'HOOK_RECEIVER_DATA_TYPE' => qw/JSON XML/;
no Mouse::Util::TypeConstraints;

use Mouse::Role;

requires qw/parse_json parse_xml/;

has 'receivedData' => (
    is => 'ro',
    isa => 'Str',
    init_arg => 'received_data'
);

has 'type' => (
    is => 'ro',
    isa => 'HOOK_RECEIVER_DATA_TYPE',
    init_arg => 'type'
);

has 'attr' => (
    is => 'rw',
    isa => 'HashRef',
);

sub parse {
    my ($self) = @_;

    if($self->type eq 'JSON'){
        $self->perse_json();
    } elsif ($self->type eq 'XML'){
        $self->parse_xml();
    }
    $self;
}

1;
