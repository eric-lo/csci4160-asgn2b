#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<cuda.h>
#include<cuda_runtime.h>

#include"util.h"

// If you have referenced to any source code that is not written by you
// You have to cite them here.




extern "C" int asgn1b(Point * points, Point ** pPermissiblePoints, int number, int dim, int gpuid)
{
    // points -- input data
    // pPermissiblePoints -- your computed answer
    // number -- number of points in dataset
    // dim -- the dimension of the dataset
    // gpuid -- the gpu used to run the program
    
	int permissiblePointNum = 0;
	Point * permissiblePoints = NULL;

	cudaSetDevice(gpuid);

	/**********************************************************************************
	 * Work here
	 * *******************************************************************************/

	
	*pPermissiblePoints = permissiblePoints;
	return permissiblePointNum;
}
