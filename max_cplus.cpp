#include <iostream>
#include <fstream>

using namespace std;

int  main(){
    int n = 1000;
    int sum = 0, ans = 0;
    string line;
    ifstream file;
    string::size_type sz;

    file.open("input");

    for(int i = 0; i < n-1; i++){
    	getline(file, line);
    	int number = stoi(line, &sz);
        sum += number;           
        ans = max(ans, sum);            
        if(sum < 0)  sum = 0;           
    }                                  

    cout << "Soma da maior sequência = " << ans << endl;

    file.close();

    return 0;
}