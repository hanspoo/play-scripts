#!/usr/bin/perl

while (<>) {

	if (m:#\{/(\w+):) {
		$initTag = pop @stack;
		if ($initTag ne $1) {
			print STDERR "Linea $. Tag de cierre $1 desemparejado, se esperaba el hermano de $initTag\n";
		}
	}
	print "\t" x scalar @stack;
	print $_;

	if (!m:#\{.*/\}: && m:#\{(\w+).*\}:) {
		push @stack, $1;
	} 



}


