q1 = data.frame(non_exp=c(other=2, a=7, b=23, event=9, null=1), 
                exp=c(other=1, a=11, b=27, event=2, null=0))
chisq.test(q1$non_exp, q1$exp)

q2 = data.frame(non_exp=c(other=1, oveflow_exception=7, system_object=10, target_invocation_exception=24, null=0), 
                exp=c(other=1, oveflow_exception=8, system_object=8, target_invocation_exception=24, null=0))
chisq.test(q2$non_exp, q2$exp)

q3 = data.frame(non_exp=c(other=7, exception=2, null=1, member1_member2=26, member2_member1=6), 
                exp=c(other=10, exception=1, null=0, member1_member2=28, member2_member1=2))
chisq.test(q3$non_exp, q3$exp)

q4 = data.frame(non_exp=c(other=0, exception=8, m_int=33, m_t=1, null=0), 
                exp=c(other=1, exception=2, m_int=37, m_t=1, null=0))
chisq.test(q4$non_exp, q4$exp)

q5 = data.frame(non_exp=c(other=0, exception=21, a=0, null=19, system_object=2), 
                exp=c(other=0, exception=21, a=1, null=19, system_object=0))
chisq.test(q5$non_exp, q5$exp)

q6 = data.frame(non_exp=c(other=0, exception=5, field=1, null=36, system_object=0), 
                exp=c(other=0, exception=10, field=1, null=30, system_object=0))
chisq.test(q6$non_exp, q6$exp)

q7 = data.frame(non_exp=c(other=1, exception=1, m_int=3, m_string=12, m_string_int=25), 
                exp=c(other=2, exception=2, m_int=4, m_string=11, m_string_int=27))
chisq.test(q7$non_exp, q7$exp)

###API Developers - Experienced X Non-experienced

#H0: Responses do not depend on experience
#H1: Responses depend on experience

q1 = data.frame(non_exp=c(other=0, a=2, b=5, event=4, null=0), 
                exp=c(other=0, a=4, b=9, event=2, null=1))
chisq.test(q1$non_exp, q1$exp)

q2 = data.frame(non_exp=c(other=0, oveflow_exception=1, system_object=5, target_invocation_exception=5, null=0), 
                exp=c(other=1, oveflow_exception=4, system_object=3, target_invocation_exception=8, null=0))
chisq.test(q2$non_exp, q2$exp)

q3 = data.frame(non_exp=c(other=0, exception=0, null=0, member1_member2=10, member2_member1=1), 
                exp=c(other=0, exception=0, null=0, member1_member2=10, member2_member1=6))
chisq.test(q3$non_exp, q3$exp)
#***

q4 = data.frame(non_exp=c(other=0, exception=0, m_int=0, m_t=10, null=1), 
                exp=c(other=0, exception=1, m_int=0, m_t=15, null=0))
chisq.test(q4$non_exp, q4$exp)

q5 = data.frame(non_exp=c(other=0, exception=6, a=0, null=5, system_object=0), 
                exp=c(other=0, exception=8, a=0, null=8, system_object=0))
chisq.test(q5$non_exp, q5$exp)

q6 = data.frame(non_exp=c(other=0, exception=2, field=0, null=9, system_object=0), 
                exp=c(other=0, exception=1, field=0, null=15, system_object=0))
chisq.test(q6$non_exp, q6$exp)
#***

q7 = data.frame(non_exp=c(other=0, exception=0, m_int=1, m_string=4, m_string_int=6), 
                exp=c(other=0, exception=1, m_int=0, m_string=5, m_string_int=10))
chisq.test(q7$non_exp, q7$exp)

###API Users X API Developers

#H0: Responses do not depend on type
#H1: Responses depend on type

q1 = data.frame(users=c(other=3, a=18, b=50, event=11, null=1), 
                dev=c(other=0, a=6, b=14, event=6, null=1))
chisq.test(q1$users, q1$dev)

q2 = data.frame(users=c(other=2, oveflow_exception=15, system_object=18, target_invocation_exception=48, null=0), 
                dev=c(other=1, oveflow_exception=5, system_object=8, target_invocation_exception=13, null=0))
chisq.test(q2$users, q2$dev)

q3 = data.frame(users=c(other=17, exception=3, null=1, member1_member2=54, member2_member1=8), 
                dev=c(other=0, exception=0, null=0, member1_member2=20, member2_member1=7))
chisq.test(q3$users, q3$dev)

q4 = data.frame(users=c(other=1, exception=10, m_int=70, m_t=2, null=0), 
                dev=c(other=0, exception=1, m_int=0, m_t=25, null=1))
chisq.test(q4$users, q4$dev)

q5 = data.frame(users=c(other=0, exception=42, a=1, null=38, system_object=2), 
                dev=c(other=0, exception=14, a=0, null=13, system_object=0))
chisq.test(q5$users, q5$dev)

q6 = data.frame(users=c(other=0, exception=15, field=2, null=66, system_object=0), 
                dev=c(other=0, exception=3, field=0, null=24, system_object=0))
chisq.test(q6$users, q6$dev)

q7 = data.frame(users=c(other=2, exception=2, m_int=4, m_string=23, m_string_int=52), 
                dev=c(other=0, exception=1, m_int=1, m_string=9, m_string_int=16))
chisq.test(q7$users, q7$dev)