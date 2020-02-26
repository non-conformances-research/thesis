###API Users - Experienced X Non-experienced

#H0: Responses do not depend on experience
#H1: Responses depend on experience

q1 = data.frame(non_exp=c(other=0, no_methods=6, a_clone=43, a_clone_object=4, object=2), 
                exp=c(other=4, no_methods=4, a_clone=46, a_clone_object=3, object=1))
chisq.test(q1$non_exp, q1$exp)

q2 = data.frame(non_exp=c(other=3, a_c=19, b_c=2, c_c=30, object_c=1), 
                exp=c(other=5, a_c=16, b_c=3, c_c=33, object_c=1))
chisq.test(q2$non_exp, q2$exp)

q3 = data.frame(non_exp=c(other=8, no_fields=35, b_c=6, private=4, protected=2), 
                exp=c(other=3, no_fields=41, b_c=4, private=10, protected=0))
chisq.test(q3$non_exp, q3$exp)
