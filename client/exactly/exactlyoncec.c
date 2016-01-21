#include<stdio.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<arpa/inet.h>
#include<netinet/in.h>
#include<time.h>
main()
{
    struct sockaddr_in server,client;
    int s,n,i,j,count = 0;
    clock_t t;
    double time_taken,rtt=50.0;

    char b1[100],b2[100];
    s=socket(AF_INET,SOCK_DGRAM,0);
    server.sin_family=AF_INET;
    server.sin_port=3000;
    server.sin_addr.s_addr=inet_addr("127.0.0.1");
    n=sizeof(server);
    while(1)
	{
    		printf("\nEnter a message: ");
    		scanf("%s",b2);
		t = clock();
    		sendto(s,b2,sizeof(b2),0,(struct sockaddr *)&server,n);
	
		if(count%2!=0)
    		{
			for(i=0;i<=10000000;i++)
				for(j=0;j<=500;j++);
    		}
		count++;
    		recvfrom(s,b1,sizeof(b1), 0,NULL,NULL);
		t = clock() - t;
    		time_taken = ((double)t)/CLOCKS_PER_SEC;
		if(time_taken > rtt)
    		{
	        	printf("Time out\nRetransmitting the message...\n");
			sendto(s,b2,sizeof(b2),0,(struct sockaddr *)&server,n);
			recvfrom(s,b1,sizeof(b1), 0,NULL,NULL);
			printf("\n Server says : ");
    			printf("%s \n",b1);
			continue;
    		}
		else
		{
			rtt = time_taken;
			printf("\n Server says : ");
    			printf("%s \n",b1);
		}
	}
}


/*#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>

int main()
{
	int clientSocket, portNum, nBytes;
	char buffer[1024];
	struct sockaddr_in serverAddr;
	socklen_t addr_size;


	clientSocket = socket(PF_INET, SOCK_DGRAM, 0);


	serverAddr.sin_family = AF_INET;
	serverAddr.sin_port = htons(7891);
	serverAddr.sin_addr.s_addr = inet_addr("127.0.0.1");
	memset(serverAddr.sin_zero, '\0', sizeof serverAddr.sin_zero);  


	addr_size = sizeof serverAddr;

	while(1)
	{
		printf("Type a sentence to send to server:\n");
		fgets(buffer,1024,stdin);
		printf("You typed: %s",buffer);

		nBytes = strlen(buffer) + 1;
    

		sendto(clientSocket,buffer,nBytes,0,(struct sockaddr *)&serverAddr,addr_size);


		nBytes = recvfrom(clientSocket,buffer,1024,0,NULL, NULL);

		printf("Received from server: %s\n",buffer);

  	}

  return 0;
}
	
*/	
