#!./perl

#
# $Id: require.t,v 0.1 2001/04/25 10:41:50 ram Exp $
#
#  @COPYRIGHT@
#
# HISTORY
# $Log: require.t,v $
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

system "podpp -o t/out -It/doc/h t/doc/require";
ok 1, $? == 0;
ok 2, contains("t/out", 'This is h/bar\.pp') == 2;
ok 3, contains("t/out", 'This is h/foo\.pp') == 1;

cleanup;

