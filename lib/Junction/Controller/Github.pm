package Junction::Controller::Github;
use Mojo::Base 'Mojolicious::Controller';
use Junction::Model::HookReceiver::Github;

sub receive {
    my $self = shift;
    my $payload = $self->param('payload');

    my @github_header = $self->req->headers->header('X-Github-Event');
    my $github_event = $github_header[0]->[0];

    my $hook_receiver = Junction::Model::HookReceiver::Github->new(
        received_data => $payload,
        type => 'JSON',
        github_event => $github_event
    );

    $self->stash($hook_receiver->attr);
    my $post_body = $self->render('chatwork/github', partial =>1);

    $self->render(status=>200);

}


1;
