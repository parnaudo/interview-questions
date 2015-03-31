def bin_placer(lst, value):
    if value > lst[::-1]:
        return 0
    for element in lst:
        if value <= element:
            return element


print bin_placer([10, 15, 25, 50], 51)