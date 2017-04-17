#include <bits/stdc++.h>

using namespace std;

int  main(){
    int n = 1000;
    int sum = 0, ans = 0;
    string line;


    cout << "Aguarde... O sistema está encontrando o valor da maior sequência." <<endl;
    for(int i = 0; i < n-1; i++){
    	cin >> line;

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