def permutation(string1,string2):
    print(type(string1))
    if string1 is None or string2 is None:
        return False
    return sorted(string1) == sorted(string2)
 
print(permutation("abcd","abc")==False)
print(permutation("abcd","abcd")==True)
print(permutation("abcd","abdc")==True)
print(permutation("abcd","")==False)
print(permutation("abcd",None)==False)
print(permutation(None,"abc")==False)
print(permutation(None,None)==False)
print(permutation(None,"")==False)
print(permutation([1,2,3],"321")==False)