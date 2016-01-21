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
		t = clock() - t;
    		time_taken = ((double)t)/CLOCKS_PER_SEC;
		if(time_taken > rtt)
    		{
	        	printf("Time out\nRetransmitting the message...\n");
			sendto(s,b2,sizeof(b2),0,(struct sockaddr *)&server,n);
			continue;
    		}
		else
		{
			rtt = time_taken;
		}
	}
}


