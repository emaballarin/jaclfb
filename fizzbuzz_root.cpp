#include <iostream>

void fizzbuzz_root()
{
    for (size_t i = 1; i <= 20000000; ++i)
    {
        bool strempty{true};

        if (!(i % 3))
        {
            std::cout << "Fizz";
            strempty = false;
        }

        if (!(i % 5))
        {
            std::cout << "Buzz";
            strempty = false;
        }

        if (strempty)
        {
            std::cout << i;
        }

        std::cout << "\n";
    }
}

