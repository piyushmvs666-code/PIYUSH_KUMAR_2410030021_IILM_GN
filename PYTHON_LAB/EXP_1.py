def find_union(a, b):
    return list(set(a) | set(b))

a = [1, 2, 3, 2, 1]
b = [3, 2, 2, 3, 3, 2]

result = find_union(a, b)
print(result)
