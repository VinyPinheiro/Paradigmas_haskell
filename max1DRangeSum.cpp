#include <iostream>
#include <string>
#include <vector>
#include <sstream>

using namespace std;

int  main(){
    int sum = 0, ans = 0;
    string line;


    cout << "Aguarde... O sistema está encontrando o valor da maior sequência." <<endl;
    while(cin >> line){

        if (line == "end")
            break;

    	int number;
        istringstream ( line ) >> number;

        sum += number;           
        ans = max(ans, sum);            
        if(sum < 0)  sum = 0;           
    }                                  

    cout << "A soma eh: " << ans << endl;
    cout << "\nObrigado por utilizar!" << endl;

    return 0;
}