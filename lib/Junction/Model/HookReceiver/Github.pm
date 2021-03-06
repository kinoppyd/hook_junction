package Junction::Model::HookReceiver::Github;

use Mouse;
with qw/Junction::Model::HookReceiver/;

has 'githubEvent' => (
    is => 'ro',
    isa => 'Str',
    init_arg => 'github_event',
    required => 1
);

1;
