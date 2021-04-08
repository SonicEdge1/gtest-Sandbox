#include <iostream>
#include <future>
#include <functional>
using namespace std;

int main ( ) {
		packaged_task<int (int, int)>
					addTask ( [] ( int firstInput, int secondInput ) {
 								return firstInput + secondInput;
	});

	future<int> output = addTask.get_future( );

	addTask( 15, 10 );

	cout << "The sum of 15 + 10 is " << output.get() << endl;

	return 0;
}
