#include <stdio.h>
#include <stdint.h>
#include <syslog.h>
#include <string.h>

int main (int argc, char *argv[])
{
	int ret = 0;
        char *filename, *string;
	FILE *fptr;

	openlog(NULL, 0, LOG_USER);
	if(argc < 2) {
            syslog(LOG_ERR, "Invalid number of arguments: %d", argc);
	    return 1;
	}
	filename = argv[1];
	string = argv[2];
	fptr = fopen(filename, "w");
	if(NULL != fptr) {
	    fwrite(string, strlen(string), 1, fptr);
	    fclose(fptr);
	    return 0;
	} else {
	    syslog(LOG_ERR, "Error in file creation");
	    return 1;
	}

	return 0;
}
