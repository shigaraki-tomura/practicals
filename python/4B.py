list=[1,2,3,4,5,6,7,8]
list=[x for (i,x) in enumerate (list) if i not in (0,2,4,5)]
print(list)
