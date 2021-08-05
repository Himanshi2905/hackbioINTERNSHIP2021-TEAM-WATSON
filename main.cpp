#include<bits/stdc++.h>
#include <iostream>
using namespace std;

int hammingDist(char *str1, char *str2)
{
    int i = 0, count = 0;
    while (str1[i] != '\0')
    {
        if (str1[i] != str2[i])
            count++;
        i++;
    }
    return count;
}
 
int main()
{
    char str1[] = "@bhooPe5H";
    char str2[] = "@Bhoopesh";
 
    cout<<"Bhoopesh V"<<"\n";
	cout<<"bhoopesh572@gmail.com"<<"\n";
	cout<<"@Bhoopesh"<<"\n";
	cout<<"Drug Development"<<"\n";
	cout<<"@bhooPe5H"<<"\n";
	cout<< hammingDist (str1, str2);

}