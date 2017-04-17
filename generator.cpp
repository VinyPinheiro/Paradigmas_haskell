#include <fstream>
#include <iostream>

using namespace std;

int main(){

	ofstream file;
	file.open("input");

	for (int i = 0; i < 1000; ++i){
		file << rand() % 1001 - 500 << endl;
	}

	file << "end" << endl;
	
	file.close();

	return 0;
}