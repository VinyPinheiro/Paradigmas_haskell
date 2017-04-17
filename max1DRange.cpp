#include <bits/stdc++.h>

using namespace std;

int  main(){
    int sum = 0, ans = 0;
    string line;
    int start, end, s = 0;
    vector<int> range;


    cout << "Aguarde... O sistema está encontrando o valor da maior sequência." <<endl;
    for(int i = 0; cin >> line; i++){

        if (line == "end")
            break;

    	int number;
        istringstream ( line ) >> number;

        sum += number;
        range.push_back(number);

        if (ans < sum)
        {
            ans = sum;
            start = s;
            end = i;
        }
 
        if (sum < 0)
        {
            sum = 0;
            s = i+1;
        }

    }

    cout << "[" << range[start];
    for (int i = start + 1; i <= end; ++i)
    {
        cout << "," << range[i];
    }

    cout << "]" << endl;
    cout << "\nObrigado por utilizar!" << endl;

    return 0;
}