#include <stdio.h>
#include <string.h>


int main()
{

int x=0,y=0,z=0;


int i,j,k=1;

int lattice_size = 900;

//First atom is Mn := 1
//Second atom is O := 2

FILE* fp;
fp = fopen("latticemade.txt","w");


for(i=0;i<lattice_size;i++)
{

            for(j=0;j<lattice_size;j++)
            {
                if(i%2==1)
                {
                fprintf(fp,"%d 1 %d 0.000000 %d.000000 %d.000000 %d.000000 \n",k,2,x,y,z);
                x = x+4;
                j++;
                }
                else
                {
                fprintf(fp,"%d 1 %d 0.000000 %d.000000 %d.000000 %d.000000 \n",k,(j%2)?2:1,x,y,z);
                x = x+2;
                }
             k++;

            }
    x=0;
    y = y+2;
}






}
