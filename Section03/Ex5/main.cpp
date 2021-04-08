#include <iostream>
#include <future>
#include <functional>
using namespace std;

int add ( int firstInput, int secondInput ) {
 return firstInput + secondInput;
}

int main ( ) {

 packaged_task<int()> addTask( bind( add, 15, 10));

 future<int> output = addTask.get_future( );

 addTask ( );

 cout << "The sum of 15 + 10 is " << output.get() << endl;
 return 0;
}
