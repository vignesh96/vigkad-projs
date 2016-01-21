#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>

int main()
{
  	int udpSocket, nBytes;
  	char buffer[1024];
  	struct sockaddr_in serverAddr, clientAddr;
  	struct sockaddr_storage serverStorage;
  	socklen_t addr_size, client_addr_size;
  	int count=0;
	int i,j;
	clock_t t;
    double time_taken,rtt=50; 

    	
    	
  
  	udpSocket = socket(PF_INET, SOCK_DGRAM, 0);

  
  	serverAddr.sin_family = AF_INET;
  	serverAddr.sin_port = htons(7891);
  	serverAddr.sin_addr.s_addr = inet_addr("127.0.0.1");
  	memset(serverAddr.sin_zero, '\0', sizeof serverAddr.sin_zero);  

  
  	bind(udpSocket, (struct sockaddr *) &serverAddr, sizeof(serverAddr));

  
  	addr_size = sizeof serverAddr;

  	while(1)
	{
 
		t = clock();	
  	    	nBytes = recvfrom(udpSocket,buffer,1024,0,(struct sockaddr *)&serverAddr, &addr_size);
            	printf("Client says : %s ",buffer);
	    	bzero(buffer,sizeof(buffer));

            	printf("Server says : ");
	    	scanf("%s",buffer);
	 
            	
    	    	t = clock() - t;
	    
	    	if(count%2!=0)
		{
			sendto(udpSocket,buffer,strlen(buffer),0,(struct sockaddr *)&serverAddr,addr_size);
            		bzero(buffer,sizeof(buffer));
			nBytes = recvfrom(udpSocket,buffer,1024,0,(struct sockaddr *)&serverAddr, &addr_size);
            		printf("Client says : %s ",buffer);
	    		bzero(buffer,sizeof(buffer));

			count = count + 1;
		}
		else
		{
				
				sendto(udpSocket,buffer,strlen(buffer),0,(struct sockaddr *)&serverAddr,addr_size);
            			bzero(buffer,sizeof(buffer));
				count = count + 1;
	    	}
            
	}

 	 return 0;
}
