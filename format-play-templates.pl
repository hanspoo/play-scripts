#!/usr/bin/perl

#
# Indent play/groovy tags when using play framework 1.x templates.
#
LINEA: while (<>) {

	if (m:#\{(\w+).*?\}.*#\{/\1\}:) {
		print "\t" x scalar @stack;
		print $_;
		next LINEA;
	} 
	
	
	if (m:#\{/(\w+):) {
		$initTag = pop @stack;
		if ($initTag ne $1) {
			print STDERR "Line $., unpaired closing tag $1, expected closing tag of $initTag\n";
		}
	}

	print "\t" x scalar @stack;
	print $_;

	if (!m:#\{.*/\}: && m:#\{(\w+).*\}:) {
		push @stack, $1;
	} 



}


