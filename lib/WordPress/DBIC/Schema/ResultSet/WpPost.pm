package WordPress::DBIC::Schema::ResultSet::WpPost;

use utf8;
use strict;
use warnings;
use base 'DBIx::Class::ResultSet';

sub published {
    my $self = shift;
    my $me = $self->current_source_alias;
    return $self->search({ "$me.post_status" => 'publish' });
}

1;
