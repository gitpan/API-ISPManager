package API::ISPManager::domain;

use strict;
use warnings;

use API::ISPManager;

sub list {
    my $params = shift;

    return API::ISPManager::query_abstract(
        params => $params,
        func   => 'wwwdomaina'
    );
}

# Create domain
sub create {

}

# Edit domain data
sub edit {

}

# Delete domain from panel
sub delete {

}

package API::ISPManager::email_domain;

use API::ISPManager;

sub list {
    my $params = shift;

    return API::ISPManager::query_abstract(
        params => $params,
        func   => 'emaildomain'
    );
}

# Create domain
sub create {

}

# Edit domain data
sub edit {

}

# Delete domain from panel
sub delete {

}

1;
