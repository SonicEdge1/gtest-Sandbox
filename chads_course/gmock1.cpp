#include "gtest/gtest.h"
#include "gmock/gmock.h"

int main(int argc, char** argv)
{
::testing::InitGoogleMock(&argc, argv);
return RUN_ALL_TESTS();
}

TEST(THIS_IS_A_TEST, ADDITION)
{
    ASSERT_EQ(4, 2 + 2);
}

TEST(THIS_IS_A_TEST, NotEqualCheck)
{
    ASSERT_NE(4, 1 + 2);
}

TEST(THIS_IS_A_TEST, LessThanCheck)
{
    ASSERT_LT(2, 1 + 2);
}

TEST(THIS_IS_A_TEST, CheckStringValue)
{
    char myword[] = { 'H', 'e', 'l', 'l', 'o', '\0' };

    //Compare unicode, string, char array etc.
    ASSERT_STREQ(myword, "Hello");
    EXPECT_STREQ(myword, "Hello");

    ASSERT_STRNE(myword, "Hello YOU");
    EXPECT_STRNE(myword, "Hello YOU");

    //case insensitive search
    ASSERT_STRCASEEQ(myword, "hello");
    EXPECT_STRCASENE(myword, "hello");
}

//Check this part out more exceptions
TEST(THIS_IS_A_TEST, AssertThrow)
{
    //ASSERT_THROW(statement, exeption_type);
    //EXPECT_THROW(statement, exeption_type);

    //ASSERT_ANY_THROW(statement, exeption_type);
    //EXPECT_ANY_THROW(statement, exeption_type);

    //ASSERT_NO_THROW(statement, exeption_type);
    //EXPECT_NO_THROW(statement, exeption_type);
}

//mock geneal class
//class Classname: public inherited_Class
//{
//public:
//    MOCK_METHOD2(METHOD, return_value(and types of arguments))
//}

// Mock template class
// template <typename T>
//class Classname: public inherited_Class
//{
//public:
//    MOCK_METHOD1_T(METHOD, return_value(and types of arguments))
//}

//Setting Default return values
//T must be copy constructable
//DefaultValue<T>::Set(value);
//needs a move constructor
//DefaultValue<T>::SetFactory(&makeT);
//Reset value
//DefautValue<T>::Clear();

//Make it so a value is return everytime a class method is called
//_ means every call regardless of input will return -1
//ON_CALL(fakeFoo, MyMethod(_)).WillByDefault(Return(-1));

//Make it so a value is return everytime a class method is called
//WillOnce means the behavior will happen only once
//EXPECT_CALL(fakeFoo, MyMethod("abc")).WillOnce(...);

//allows const and non-const
//EXPECT_CALL(const(fakeFoo), MyMethod("abc")).WillOnce(...);

//_ means every call regardless of input 
//EXPECT_CALL(fakeFoo, MyMethod(_)).WillOnce(...);

//Makes so that the behavior happens a number of times
//Author prefers WillRepeatedly
//EXPECT_CALL(fakeFoo, MyMethod("abc")).WillRepeatedly(...);

//Returns -1
//EXPECT_CALL(fakeFoo, MyMethod("")).WillRepeatedly(Return(-1));

//Might need to say using namespace testing;
// return a reference
//EXPECT_CALL(fakeFoo, MyMethod("")).WillRepeatedly(ReturnRef(bar));


//Values are evaluated only once
//if there is a value that changes over time, use a pointer, a reference,
//etc

//n will always = 0 because values are only evaluated once
//int n = 0;
//EXPECT_CALL(fakeFoo, MyMethod()).WillRepeatedly(Return(n++));

//

//set the value of the first argument
//EXPECT_CALL(fakeFoo, SomeMethod(true, _)).WillOnce(SetArgPointee<1>(10));

//Set the return value for a specific argument
//EXPECT_CALL(fakeFoo, SomeMethodReturningBool(true, _))
//.WillOnce(SetArgPointee<1>(10), Return(true));

//CHECK OUT WHAT ASSERT AND EXPECT PRED1 and PRED2 do
//FLOATING POINT PRECISION
//CHECK TYPE
//DEATH TESTS


//USE TEST_F instead of TEST WHEN YOU ARE GOING TO USE A FIXTURE
//What are Value and Type Parameterized Tests (RANGE, VALUES, VALUESIN, VALUESIN, BOOL, COMBINE)

//You can generate a fake object witht the google Mock class generator
//python script

//Type of dependency injection
//Constructor injection: usually used when the object does not change 
//during the object lifecycle

//Method injection:passing the dependency to that method, usually done
//When you need a new instance when a method is run

//Setter injection
//Use a setter to set the dependency in a method
//usually doesn't use it
