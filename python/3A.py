import string
def ispangram(sentence,alphabet=string.ascii_lowercase):
     aset=set(alphabet)
     return aset<=set(sentence.lower())
print(ispangram(input("Enter the sentence:")))
