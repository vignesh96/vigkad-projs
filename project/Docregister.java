import java.awt.*;
import java.applet.*;
import java.awt.event.*;

public class Docregister extends Applet implements ActionListener
{String msg;
  Button b1=new Button("sign up");
  Label l1=new Label("Name Dr:",Label.LEFT);
  Label l2=new Label("age:",Label.LEFT);
  Label l3=new Label("Sex(M/F):",Label.LEFT);
  Label l4=new Label("Address:",Label.LEFT);
  Label l5=new Label("Specialist:",Label.LEFT);
  Label l6=new Label("Service ys:",Label.LEFT);
  Button b2 = new Button("Clear");
  Label l8=new Label("Password",Label.LEFT);
 Label l7=new Label("",Label.RIGHT);
  TextField t1=new TextField();
TextField tt=new TextField();
  Choice c1=new Choice();
  CheckboxGroup cbg=new CheckboxGroup();
  Checkbox ck1=new Checkbox("Male",false,cbg);
  Checkbox ck2=new Checkbox("Female",false,cbg);
  TextArea t2=new TextArea("",180,90,TextArea.SCROLLBARS_VERTICAL_ONLY);
  Choice sp=new Choice();
  Choice serv=new Choice();
  Choice age=new Choice();
public void init()
 {
  setBackground(Color.cyan);
  setForeground(Color.black);
  tt.setEchoChar('*');
  setLayout(null);
  l1.setFont(new Font("Arial Narrow",Font.BOLD,16));
  l2.setFont(new Font("Arial Narrow",Font.BOLD,16));
  l3.setFont(new Font("Arial Narrow",Font.BOLD,16));
  l4.setFont(new Font("Arial Narrow",Font.BOLD,16));
  l5.setFont(new Font("Arial Narrow",Font.BOLD,16));
  l6.setFont(new Font("Arial Narrow",Font.BOLD,16));
  l8.setFont(new Font("Arial Narrow",Font.BOLD,16));
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
  add(ck1);
  add(ck2);
  add(sp);
  add(serv);
  add(age);
  add(b1);
  b1.addActionListener(this);
  b2.addActionListener(this);
  add(b1);
  sp.add("cardio");
  sp.add("lungs");
  sp.add("orthology");
  sp.add("dentist");
  sp.add("eye specialist");
  sp.add("general");
  serv.add("1");
  serv.add("2");
  serv.add("3");
  serv.add("4");
  serv.add("5");
  serv.add("6");
  age.add("17-25");
  age.add("26-34");
  age.add("35-46");
  age.add("47-55");
  age.add(">60");
   
  l1.setBounds(25,65,90,20);
  l2.setBounds(25,90,90,20);
  l3.setBounds(25,120,90,20);
  l4.setBounds(25,185,90,20);
  l5.setBounds(25,260,90,20);
  l6.setBounds(1,290,90,20);
  l7.setBounds(25,260,90,20);
 l8.setBounds(25,330,90,20);
  t1.setBounds(120,65,170,20);
  t2.setBounds(120,185,170,60);
   tt.setBounds(120,330,170,20);
  ck1.setBounds(120,120,50,20);
  ck2.setBounds(170,120,60,20);
  sp.setBounds(120,260,100,20);
  serv.setBounds(120,290,50,20);
  age.setBounds(120,90,50,20);
  b1.setBounds(120,400,50,30);
  b2.setBounds(180,400,50,30);
}

public void actionPerformed(ActionEvent ae)
{if(ae.getActionCommand().equals("sign up"))
  {msg="Doctor details saved!";
   setForeground(Color.red); }
 else if(ae.getActionCommand().equals("Clear")){
	 t1.setText(" ");
	 tt.setText(" ");
	 t2.setText(" ");
	 
 }
}
}
 