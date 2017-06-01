#include <string>
#include <cstdlib>

int main(int argc, char* argv[])
{
    std::string query =
#ifdef _WIN32
        "start https://duckduckgo.com/?q=";
#elif __linux__
        "xdg-open https://duckduckgo.com/?q=";
#else
        "open https://duckduckgo.com/?q=";
#endif

    for(int i = 1; i < argc ; i++) {
        query += argv[i];
        if(i < argc) 
            query += "+";
    }

    system(query.c_str());

    return 0;
}

