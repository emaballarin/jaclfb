for i in range(1, length=20000000)

    ret_str = ""

    if (i % 3) == 0
        ret_str = "Fizz"
    end

    if (i % 5) == 0
        ret_str = string(ret_str, "Buzz")
    end

    if (ret_str == "")
        ret_str = string(i)
    end

    println(ret_str)
end
