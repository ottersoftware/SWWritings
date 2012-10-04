#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
	int counter = 5;
	int *postman = &counter;
	
	printf("The address of counter is %p\n", &counter);
	printf("The address of postman is %p\n", &postman);
	
	printf("The value of counter is %d\n", counter);
	printf("The value of postman is %p\n", postman);
	
	printf("The value of the object postman points to is %d\n", *postman);
	
	return 0;
}
