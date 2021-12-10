#include <iostream>
#include <math.h>
#include <fstream>
#include <string>
#include <sstream>
#include <algorithm>
#include <iterator>

const int coordinatenumber = 50;
float average[coordinatenumber]={};
float totals[coordinatenumber];
float individual_data[coordinatenumber];
using namespace std;

int main(int argc, char **argv)
	{

	ifstream datafile;
	int fileindex = 1;
	float data_a,data_b,data_x,data_y,data_z;
	string dataline;
	stringstream fstr;
	int i = 0,j=1,k,l;
	string trash;
	int datanumber = 20;
	float mean[datanumber];
	string nrstr;
    string filename = "switchsasa";
    int flag=0;

while(j<datanumber+1)
{
	nrstr = to_string(fileindex);
	//cout << nrstr << endl;
	fileindex++;
    filename = "switchsasa_4_";
	filename = filename + nrstr + ".xvg";
	cout << filename << endl;
	datafile.open(filename);

	   if(!datafile) { // file couldn't be opened
					      	cerr << "Error: file could not be opened" << endl;
					      	exit(1);
   					 }


//    cout << filename << endl;

	while(!datafile.eof())
			{
			 ////fstr.str(string());
			 	getline(datafile, dataline);

			 	if((dataline[0]=='@') || (dataline[0]=='#') || dataline.empty())
			 	{
			 		continue;
			 	}
			  	else
			  	{

					string str = dataline;
//					cout << dataline << endl;

					fstr << str << endl;

					fstr >> data_a;
					fstr >> data_b;
					//fstr >> data_x;
					//fstr >> data_y;
					//fstr >> data_z;
					//cout << data_a << " " << data_b << endl;	

					fstr.str(string());		



					average[i]=average[i]+data_b;
					individual_data[i]=data_b;
					i++;
					//cout << data_b << endl;

					//cout << i << endl;
					
				}
			flag++;

						
			}

	i=0;
	datafile.close();
	j++;
}

for(i=0;i<sizeof(average);i++)
totals[i] = average[i];
cout << endl;

cout << "Totals:" << endl;

for(i=0;i<sizeof(totals);i++)
cout << totals[i] << endl;

cout << "Variances:" << endl;

for(i=0;i<sizeof(mean);i++)
cout << mean[i] << endl;


for(i=0;i<sizeof(average);i++)
 average[i]=average[i]/datanumber;

cout << endl;

//for(i=0;i<sizeof(totals);i++)
//cout << totals[i] << endl;


cout << endl << "Data averages:" << endl;

for(i=0;i<sizeof(average);i++)
cout << average[i] << endl;

cout << endl << "Total Number of values read: " << flag << endl;


	//cin >> i;



	return 0;


}
