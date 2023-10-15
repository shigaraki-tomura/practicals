import operator
dic={'a1':12,'a3':14,'a4':13,'a2':11,'a0':10}
print('Original dictionary:',dic)
ascending=sorted(dic.items(),key=operator.itemgetter(0))
descending=sorted(dic.items(),key=operator.itemgetter(0),reverse=True)
print('Ascending order:',ascending)
print('Descending order:',descending)
