#!/usr/bin/env perl -w -i

while(<>)
{
	if (/<!--%%-([^-]+)-begin-%%-->/ .. /<!--%%-([^-]+)-end-%%-->/)
	{
		if(/<!--%%-([^-]+)-begin-%%-->/)
		{
			print;
			(my $name = $_) =~ s/^.*<!--%%-([^-]+)-begin-%%-->.*$/$1/gs;
			open(FILE, "<fragments/$name.html");
			while(<FILE>)
			{
				print;
			}
			close(FILE);		
		}
		elsif(/<!--%%-([^-]+)-end-%%-->/)
		{
			print;
		}
	}
	else
	{
		print;
	}
}
