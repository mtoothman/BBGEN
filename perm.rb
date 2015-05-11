perm = ('A'..'Z').to_a
all_perm = perm.repeated_permutation(5) # yields Enumerator
p all_perm.next
