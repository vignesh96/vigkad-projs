else
	{
		int si=recvfrom(listenfd,cb,1024,0,(struct sockaddr*)&cliaddr,&clilen);
		msgid=cb[strlen(cb)-1];
		cb[strlen(cb)-1]=0;
		if((msgid-48)>count)
		{		
			cout<<"\norder incorrect\n";
			b[iw]=(msgid-48);
			
			strcpy(que[iw],cb);
				
			iw++;	
			continue;
		}
		count++;
		m[(msgid-'1')+1]=true;
		cout<<"\nclient says";
		puts(cb);
		for(int z=0;z<=iw;z++)
		{
			
			if(((msgid-48)+1)==b[z])
			{
				puts(que[z]);
				cout<<"\n";
				b[z]=0;	
				strcpy(que[z],"");
				
			}
		}
	}
	