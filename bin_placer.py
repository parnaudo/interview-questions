def bin_placer(lst, value):
    if value > lst[::-1]:
        return 0
    for element in lst:
        if value <= element:
            return element


print bin_placer([10, 15, 25, 50], 51)


def binarySearch(alist, item):
    first = 0
    last = len(alist)-1
    found = False

    while first<=last and not found:
        midpoint = (first + last)//2
        if alist[midpoint] == item:
            found = True
        else:
            if item < alist[midpoint]:
                last = midpoint-1
            else:
                first = midpoint+1

    return found

testlist = [1, 4, 6, 20, 23, 27, 30, 32, 42,]
print(binarySearch(testlist, 3))
print(binarySearch(testlist, 13))