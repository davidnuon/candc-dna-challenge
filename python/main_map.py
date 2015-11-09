#!/usr/bin/env python

import sys

pairs = [('a', 't'), ('c', 'g')]
dna_translate = {}
for pair in pairs:
	dna_translate[pair[0]] = pair[1]
	dna_translate[pair[1]] = pair[0]

def dna_complement(section):
	if not section in dna_translate:
		raise TypeError

	return dna_translate[section]

input_buffy = sys.argv[1]
print "".join(map(dna_complement, input_buffy.lower()))