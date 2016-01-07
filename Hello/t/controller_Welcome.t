use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Hello';
use Hello::Controller::Welcome;

ok( request('/welcome')->is_success, 'Request should succeed' );
done_testing();
