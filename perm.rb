perm = ('A'..'Z').to_a
all_perm = perm.repeated_permutation(5) # yields Enumerator

raise 'No match!' unless all_perm.next == ['A', 'A', 'A', 'A', 'A']
