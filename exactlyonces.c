#include<stdio.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<string.h>
#include<time.h>
main()
{
    FILE *fp;
    struct sockaddr_in server,client;
    int i,j,s,n,count=0;
    clock_t t;
    double time_taken,rtt=50.0;

    char b1[100],b2[100],a[100];
    s=socket(AF_INET,SOCK_DGRAM,0);
    server.sin_family=AF_INET;
    server.sin_port=3000;
    server.sin_addr.s_addr=inet_addr("127.0.0.1");
    bind(s,(struct sockaddr *)&server,sizeof(server));
    n=sizeof(client);
    while(1)
    {
        strcpy(b2,"");
        fp=fopen("server.txt","rw");
		t = clock();
        recvfrom(s,b1,sizeof b1, 0,(struct sockaddr *)&client,&n);
		count++;
        while(!feof(fp))
        {
           fscanf(fp,"%s",a);
           if(strcmp(a,b1)==0)
           {
                strcpy(b2,"Already requested");
                break;
           }
		}
		if(strcmp(b2,"")==0)
		{
			printf("Server says : ");
			scanf("%s",b2);
			fp=fopen("server.txt","a");
			fprintf(fp,"\n%s %s",b1,b2);
		
    	}
		if(count%2!=0)
		{    		
			sendto(s,b2,sizeof b2,0,(struct sockaddr *)&client,n);
			count--;
		}
		else
		{
			sendto(s,b2,sizeof b2,0,(struct sockaddr *)&client,n);
		}
	
     	fclose(fp);
     }
    
}



