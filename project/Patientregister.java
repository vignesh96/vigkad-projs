import java.awt.*;
import java.applet.*;
import java.awt.event.*;

public class Patientregister extends Applet implements ActionListener
{String msg;
  Button b1=new Button("Register");
  Button b2 = new Button("Clear");
  Label l1=new Label("Patient Name:",Label.LEFT);
  Label l2=new Label("Patient age:",Label.LEFT);
  Label l3=new Label("Sex(M/F):",Label.LEFT);
  Label l4=new Label("Address:",Label.LEFT);
  Label l5=new Label("Disease:",Label.LEFT);
  Label l6=new Label("Blood group:",Label.LEFT);
 
  Label l8=new Label("Mobile no:",Label.LEFT);
 Label l7=new Label("",Label.RIGHT);
 Label l10=new Label("Patient Id:",Label.LEFT);

  TextField t1=new TextField();
TextField tt=new TextField();
TextField t3=new TextField();
	
  TextField t4=new TextField();
  Choice c1=new Choice();
  CheckboxGroup cbg=new CheckboxGroup();
  Checkbox ck1=new Checkbox("Male",false,cbg);
  Checkbox ck2=new Checkbox("Female",false,cbg);
  TextArea t2=new TextArea("",180,90,TextArea.SCROLLBARS_VERTICAL_ONLY);
  Choice serv=new Choice();
  Choice sp=new Choice();
  Choice age=new Choice();
public void init()
 {
  l1.setFont(new Font("Arial Narrow",Font.BOLD,20));
  l2.setFont(new Font("Arial Narrow",Font.BOLD,20));
  l3.setFont(new Font("Arial Narrow",Font.BOLD,20));
  l4.setFont(new Font("Arial Narrow",Font.BOLD,20));
  l5.setFont(new Font("Arial Narrow",Font.BOLD,20));
  l6.setFont(new Font("Arial Narrow",Font.BOLD,20));
  l7.setFont(new Font("Arial Narrow",Font.BOLD,20));
  l8.setFont(new Font("Arial Narrow",Font.BOLD,20));
  l10.setFont(new Font("Arial Narrow",Font.BOLD,20));
  b1.setFont(new Font("Arial Narrow",Font.BOLD,20));
  b2.setFont(new Font("Arial Narrow",Font.BOLD,20));
  setBackground(Color.gray);
  setLayout(null);
  add(l1);
  add(b2);
  add(l2);
  add(l3);
  add(l4);
  add(l5);
  add(l6);
  add(l8);
  add(l7);
  add(t1);
  add(t2);
  add(tt);
  add(t4);
  add(ck1);
  add(ck2);
  add(serv);
  add(serv);
  add(age);
  add(b1);
  b1.addActionListener(this);
  add(b1);
  add(l10);
  add(t3);
  serv.add("A+");
  serv.add("A1+");
  serv.add("B+");
  serv.add("B1+");
  serv.add("o+");
  serv.add("o-");
  serv.add("B1-");
  serv.add("B-");
  serv.add("A1-");
  serv.add("A-");

  age.add("17-25");
  age.add("26-34");
  age.add("35-46");
  age.add("47-55");
  age.add(">60");
   
  l1.setBounds(25,65,160,30);
  l2.setBounds(25,90,160,30);
  l3.setBounds(25,120,160,30);
  l4.setBounds(25,185,160,30);
  l5.setBounds(25,260,160,30);
  l6.setBounds(25,290,160,30);
  l7.setBounds(25,260,160,30);
 l8.setBounds(25,330,160,30);
  l10.setBounds(25,370,160,30);
  t1.setBounds(200,65,160,20);
  t2.setBounds(200,185,160,60);
  t3.setBounds(200,370,160,20);
   tt.setBounds(200,330,160,20);
   t4.setBounds(200,260,160,20);
  ck1.setBounds(200,120,50,20);
  ck2.setBounds(260,120,60,20);
  sp.setBounds(200,260,160,20);
  serv.setBounds(200,290,50,20);
  age.setBounds(200,90,50,20);
  b1.setBounds(200,400,130,40);
  b2.setBounds(350,400,130,40);
}
public void paint(Graphics g)
{g.drawString(msg,200,450);}
public void actionPerformed(ActionEvent ae)
{if(ae.getActionCommand().equals("Register"))
  {msg="Patient registered saved!";
   setForeground(Color.yellow); 
  }
  else 
  {
	  t1.setText(" ");
	  t2.setText(" ");
	  t3.setText(" ");
	  t4.setText(" ");
	  tt.setText(" ");
  }
}

}
