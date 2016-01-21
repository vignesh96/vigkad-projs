#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <time.h>
int main(){
  int clientSocket, portNum, nBytes;
  char buffer[1024];
  struct sockaddr_in serverAddr;
  socklen_t addr_size;
  int i,j,count=0;
  clock_t t;
  double time_taken,rtt=50.0;

  
  clientSocket = socket(PF_INET, SOCK_DGRAM, 0);

  
  serverAddr.sin_family = AF_INET;
  serverAddr.sin_port = htons(7891);
  serverAddr.sin_addr.s_addr = inet_addr("127.0.0.1");
  memset(serverAddr.sin_zero, '\0', sizeof serverAddr.sin_zero);  

  
  addr_size = sizeof serverAddr;

  while(1){
    printf("Type a sentence to send to server:\n");
    fgets(buffer,1024,stdin);
    printf("You typed: %s",buffer);
   
    nBytes = strlen(buffer) + 1;
    y:
    t = clock();
    sendto(clientSocket,buffer,nBytes,0,(struct sockaddr *)&serverAddr,addr_size);

    if(count%2!=0)
    {
	for(i=0;i<=10000000;i++)
		for(j=0;j<=500;j++);
    }
    t = clock() - t;
    time_taken = ((double)t)/CLOCKS_PER_SEC;
    count = count + 1;
    if(time_taken > rtt)
    {
	        printf("Time out\nRetransmitting the message...\n");
		sendto(clientSocket,buffer,nBytes,0,(struct sockaddr *)&serverAddr,addr_size);
		nBytes = recvfrom(clientSocket,buffer,1024,0,NULL, NULL);
		printf("Message recieved is : %s\n",buffer);
    }
    else
    {
		rtt = time_taken;
		nBytes = recvfrom(clientSocket,buffer,1024,0,NULL, NULL);

                printf("Received from server: %s\n",buffer);
		strcpy(buffer,"Thanks You");
		sendto(clientSocket,buffer,1024,0,(struct sockaddr *)&serverAddr,addr_size);
			

    }  

    
    

    

  }

  return 0;
}
	
	


