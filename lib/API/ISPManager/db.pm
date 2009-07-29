package API::ISPManager::db;

use strict;
use warnings;

use API::ISPManager;

sub list {
    my $params = shift;

    my $server_answer = API::ISPManager::query_abstract(
        params      => $params,
        func        => 'db',
        fake_answer => shift,
    );

    if ( $server_answer         &&
         $server_answer->{elem} &&
         ref $server_answer->{elem} eq 'HASH' ) {

        return { data =>  $server_answer->{elem} };

    }

    return $server_answer;
}

package API::ISPManager::db_user;

use API::ISPManager;

sub list {
    my $params = shift;

    my $server_answer = API::ISPManager::query_abstract(
        params      => $params,
        func        => 'db.users',
        allowed_fields => [ 'host', 'path', 'allow_http', 'elid' ],
        fake_answer => shift,
    );

    if ( $server_answer         &&
         $server_answer->{elem} &&
         ref $server_answer->{elem} eq 'HASH' ) {

        return { data =>  $server_answer->{elem} };

    }

    return $server_answer;
}


1;
