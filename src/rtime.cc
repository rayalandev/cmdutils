#include <string>
#include <chrono>
#include <iostream>
#include <stdlib.h>

int main(int argc, char** argv) {
    std::string cmd = "";
    for(int i = 1; i < argc; i++) {
        cmd += argv[i];
        cmd += " ";
    }
    cmd += "&";

    auto start = std::chrono::high_resolution_clock::now();
    system(cmd.c_str());
    auto end = std::chrono::high_resolution_clock::now();
    auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
    std::cout << "\nrtime: " << ms.count() << " ms" << std::endl;
}
