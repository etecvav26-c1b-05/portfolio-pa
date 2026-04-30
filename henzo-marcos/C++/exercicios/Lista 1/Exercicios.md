```#include <iostream>
using namespace std;

int main() {
	int numero;
	
	
	cout << "Insira um numero: ";
	cin >> numero;
	
	if (numero <= 1) {
		cout << numero << " Nao e primo";
	}
	else if (numero == 2) {
		cout << numero << " E primo";
	}
	else if (numero % 2 == 0) {
		cout << numero << " Nao e primo";
	}	
	else {
		cout << numero << " E primo";
	}
}
```
