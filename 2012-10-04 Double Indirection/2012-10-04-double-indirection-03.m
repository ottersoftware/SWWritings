#import <Foundation/Foundation.h>

void decomposeSecondsIntoHoursMinutesAndSeconds(int timeAsSeconds, int *hours, int *minutes, int *seconds)
{
	*hours = (timeAsSeconds / (60 * 60));
	timeAsSeconds = timeAsSeconds - (*hours * 60 * 60);
	
	*minutes = (timeAsSeconds / 60);
	timeAsSeconds = timeAsSeconds - (*minutes * 60);
	
	*seconds = timeAsSeconds;
}

int main(int argc, char *argv[]) {
	int timeAsSeconds = 5415;
	int hours, minutes, seconds;
	decomposeSecondsIntoHoursMinutesAndSeconds(timeAsSeconds, &hours, &minutes, &seconds);
	
	printf("%d seconds is the equivalent of %02d:%02d:%02d", timeAsSeconds, hours, minutes, seconds);
	
	return 0;
}