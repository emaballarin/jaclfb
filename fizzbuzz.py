for i in range(1, 20000001):

    ret_str = ""

    if not i % 3:
        ret_str = "Fizz"

    if not i % 5:
        ret_str += "Buzz"

    if ret_str == "":
        ret_str = str(i)

    print(ret_str)
