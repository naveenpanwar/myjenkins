def func():
    raise Exception("Some Exception")

try:
    func()
except Exception as e:
    print(e)
