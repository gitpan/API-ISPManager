package API::ISPManager::ftp;

use strict;
use warnings;

use API::ISPManager;

sub list {

}


sub create  {


}

sub edit {
    my $params = shift;

    my $result = API::ISPManager::query_abstract(
        params => $params,
        func   => 'ftp.edit',
        allowed_fields => [  qw( host path allow_http     sok elid su passwd name) ],
    );

    return $result;

}


sub delete {


}

1;
