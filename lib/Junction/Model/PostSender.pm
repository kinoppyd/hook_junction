package Junction::Model::PostSender;
use Mouse::Role;
use Mojo::UserAgent;

requires qw/post/;

has 'hookReceiver' => (
    is => 'ro',
    isa => 'Model::HookReceiver'
);

has 'entryPoint' => (
    is => 'rw',
    isa => 'Str',
    required => 1
);

has 'header' => (
    is => 'rw',
    isa => 'HashRef',
    default => +{}
);

has 'body' => (
    is => 'rw',
    isa => 'HashRef',
    default => +{}
);

sub post {
    my $self = shift;

    my $ua = Mojo::UserAgent->new;
    my $tx = $ua->post( $self->entryPoint => $self->header => form => $self->body );
    return $tx;
}

1;
