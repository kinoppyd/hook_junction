package Junction::Controller::Github;
use Mojo::Base 'Mojolicious::Controller';

sub receive {
    my $self = shift;
    my $payload = $self->param('payload');
}

1;
