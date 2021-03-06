package MyApp::Controller::Login;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

MyApp::Controller::Login - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched MyApp::Controller::Login in Login.');
}

sub list :Local {
	my ($self, $c) = @_;

        $c->stash(users => [$c->model('DBUSERS::User')->all]);
        $c->stash(template => 'login/list.tt2');
}

=encoding utf8

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
