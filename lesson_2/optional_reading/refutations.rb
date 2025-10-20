arr = [...]
assert(arr.object_id != method(arr).object_id, 'method(arr) returns original Array')

refute(arr.object_id == method(arr.object_id, 'method(arr) returns copy of original Array'))

refute_same(arr, method(arr))
