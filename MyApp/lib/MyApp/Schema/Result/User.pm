use utf8;
package MyApp::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MyApp::Schema::Result::User

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<user>

=cut

__PACKAGE__->table("user");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 username

  data_type: 'text'
  is_nullable: 1

=head2 senha

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "username",
  { data_type => "text", is_nullable => 1 },
  "senha",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 user_names

Type: has_many

Related object: L<MyApp::Schema::Result::UserName>

=cut

__PACKAGE__->has_many(
  "user_names",
  "MyApp::Schema::Result::UserName",
  { "foreign.user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 names

Type: many_to_many

Composing rels: L</user_names> -> name

=cut

__PACKAGE__->many_to_many("names", "user_names", "name");


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2016-02-21 17:52:11
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ngRKW9JkTn+6bUIafZjnIg


# You can replace this text with custom code or comments, and it will be preserved on regeneration

#__PACKAGE__->many_to_many(names => 'user_names', 'name');
__PACKAGE__->meta->make_immutable;
1;
