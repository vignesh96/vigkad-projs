import java.awt.*;
import java.awt.event.*;
import java.applet.*;
public class Loginform extends Applet implements ActionListener
{ Label l1=new Label("user name",Label.LEFT);
  Label l2=new Label("password",Label.LEFT);
  Label l3=new Label("",Label.RIGHT);
  TextField t1=new TextField();
  TextField t2=new TextField();
  Button b= new Button("SignIn");
  public void init()
  { add(l1);
    add(t1);
    add(l2);
    add(t2);
    add(b);
    add(l3);
    
	t1.setBounds(120,65,170,20);
    t2.setBounds(120,120,170,20);
	l1.setFont(new Font("Arial Narrow",Font.BOLD,16));
	l2.setFont(new Font("Arial Narrow",Font.BOLD,16));
	l1.setBounds(25,65,90,20);
	l2.setBounds(25,120,90,20);
	 
	b.setBounds(180,200,50,30);
	  
    b.addActionListener(this);
    t2.setEchoChar('*');
	
    setLayout(null);
    setBackground(Color.pink);	
    setVisible(true);
  }
  public void actionPerformed(ActionEvent e)
  { 
l3.setText("Welcome "+t1.getText());}
  }
