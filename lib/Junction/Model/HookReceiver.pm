package Junction::Model::HookReceiver;
use Mouse::Util::TypeConstraints;
enum 'HOOK_RECEIVER_DATA_TYPE' => qw/JSON XML/;
no Mouse::Util::TypeConstraints;

use Mouse::Role;
use Mojo::JSON qw/j/;

has 'receivedData' => (
    is => 'ro',
    isa => 'Str',
    init_arg => 'received_data',
    required => 1
);

has 'type' => (
    is => 'ro',
    isa => 'HOOK_RECEIVER_DATA_TYPE',
    init_arg => 'type',
    required => 1
);

has 'attr' => (
    is => 'rw',
    isa => 'HashRef',
);

sub BUILD {
    my ($self) = @_;
    $self->parse;
}

sub parse {
    my ($self) = @_;

    if($self->type eq 'JSON'){
        $self->parse_json();
    } elsif ($self->type eq 'XML'){
        $self->parse_xml();
    }
    $self;
}

sub parse_json {
    my ($self) = @_;
    $self->attr( j($self->receivedData) );
}

1;
