#!./perl

#
# $Id: normalize.t,v 0.1 2001/04/25 10:41:50 ram Exp $
#
#  @COPYRIGHT@
#
# HISTORY
# $Log: normalize.t,v $
# Revision 0.1  2001/04/25 10:41:50  ram
# Baseline for first Alpha release.
#
# $EndLog$
#

print "1..3\n";

require 't/code.pl';
sub ok;

sub cleanup {
	unlink 't/out';
}
cleanup;

system "podpp -o t/out t/doc/normalize";
ok 1, $? == 0;
ok 2, contains("t/out", '^=head1 ') == 2;
ok 3, contains("t/out", '^$') == 3;

cleanup;

