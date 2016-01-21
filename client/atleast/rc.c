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
    sendto(clientSocket,buffer,nBytes,0,(struct sockaddr *)&serverAddr,addr_size);

   
   
   
    }
    

    

}
