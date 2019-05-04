import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;
import java.sql.*;
public class profile {
    JFrame pro;
    String component[] = {"Name: ","Stadium: ","Manager: ","Points: ","Standings: "};
    JLabel component_labels[] = new JLabel[7];
    String values[] =  new String[7];
    String club_id;
    JLabel values_label[] = new JLabel[7];
    JTextField values_field[] = new JTextField[5];
    JLabel background; 
    JButton editbutton;
    JButton update;
    JButton insert;
    JButton add;
    JButton delete;
    boolean empty;
    Insets insets;
    profile(String name){
        pro = new JFrame();
        pro.setLayout(null);
        pro.setSize(800,600);
        pro.setVisible(true);
        pro.setResizable(false);
        pro.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        insets = pro.getInsets();
         background = new JLabel();
        background.setIcon(new ImageIcon(new ImageIcon("/media/ayush/54CE1672CE164C9C/Link to KU_CE/projects/dbms mini project 4th sem/final/MiniProject/src/back2.jpg").getImage().getScaledInstance(800,600,Image.SCALE_DEFAULT)));
        pro.add(background);
        background.setBounds(0,0,800,600);
        values[0] = name;
        try{
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epl_final_normalized?useSSL=true", "root", "3696");
            Statement st = con.createStatement();
            String sql = "Select `Club_id` from team WHERE Club_name = '"+name+"'";
            ResultSet rs = st.executeQuery(sql);
            rs.next();
         club_id = rs.getString("Club_id");
            String sql2 = "Select Stadium, Manager from team_info WHERE Club_name = '"+name+"'";
            ResultSet rs2 = st.executeQuery(sql2);
            rs2.next();
            values[1] = rs2.getString("Stadium");
           values[2] = rs2.getString("Manager");
            String sql3 = "SELECT standings.Standings,standingspoints.Points FROM standings INNER JOIN standingspoints ON standings.Standings=standingspoints.Standings WHERE standings.Club_id= '"+club_id+"' ";
          
            rs = st.executeQuery(sql3);
            rs.next();
            values[3]  = String.format("%d", rs.getInt("Points"));
             values[4]  = String.format("%d",rs.getInt("Standings"));
            
        }
        catch(Exception b){
         b.printStackTrace();
        }
      
        setComponents();
        editbutton.addActionListener(
         new ActionListener(){
             public void actionPerformed(ActionEvent a){
                 setTextfield();
             }
        
         }
         
         );
        
        insert.addActionListener(
        new ActionListener(){
            public void actionPerformed(ActionEvent n){
                  newTeam();
            
            }        
            }
        
);
       
        delete.addActionListener(
        new ActionListener(){
            public void actionPerformed(ActionEvent d){
                deleteTeam();
            }
        }
        );
        
    
    }
    
    public void setComponents(){
        for(int i = 0,j=20;i<5;++i,j=j+60){
            component_labels[i] = new JLabel(component[i]);
            background.add(component_labels[i]);
            component_labels[i].setBounds(20+insets.left,j+insets.top,100,50);
       
            values_label[i] =  new JLabel(values[i]);
            background.add(values_label[i]);
            values_label[i].setBounds(100+insets.left,j+insets.top,200,50);
        
        }
         editbutton = new JButton("Edit");
         background.add(editbutton);
         editbutton.setBounds(20+insets.left,350+insets.top, 100, 50);
         
         insert = new JButton("Add a new team");
         background.add(insert);
         insert.setBounds(20+insets.left,410+insets.top,150,50);
         
         delete = new JButton("Delete this team");
         background.add(delete);
         delete.setBounds(20+insets.left,470+insets.top,170,50);
    
    
    
    
}

    public void setTextfield(){
        for(int i=1;i<5;++i)
         background.remove(values_label[i]);
        background.remove(editbutton);
        background.remove(insert);
        background.remove(delete);
       
        for(int i = 1,j=80;i<5;++i,j=j+60){
            values_field[i] =  new JTextField(values[i]);
            background.add(values_field[i]);
            values_field[i].setBounds(100+insets.left,j+insets.top,200,50);
        }
        
        update = new JButton("Update");
         background.add(update);
         update.setBounds(20+insets.left,350+insets.top, 100, 50);
         update.addActionListener(
         new ActionListener(){
             public void actionPerformed(ActionEvent t){
                 //checking null values
                 for(int i = 1;i<5;++i){
                     if(values_field[i].equals(""))
                         empty = true;
                     else
                         empty = false;
                 }
                 if(empty)
                     JOptionPane.showMessageDialog(null,"Fill all the fields", "Error",JOptionPane.PLAIN_MESSAGE);
                 else
                    updateStuffs();
             }
         }
         );
         
         
    }
    
    public void updateStuffs(){
         for(int i=1;i<5;++i){
            values[i] = values_field[i].getText().toString();
         }
        
        
        try{
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epl_final_normalized?useSSL=true", "root", "3696");
            Statement st = con.createStatement();
            String sql = "UPDATE team_info SET Stadium = '"+values[1]+"',Manager = '"+values[2]+"' WHERE team_info.Club_name = '"+values[0]+"'";
            st.executeUpdate(sql);
            String sql2 = "UPDATE ";
            pro.dispose();
            profile p= new profile(values[0]);
        
        }
        catch(Exception g){
            g.printStackTrace();
        }
    }
    
    
    public void newTeam(){
        for(int i =0;i<5;++i)
            background.remove(values_label[i]);
        
        background.remove(editbutton);
        background.remove(insert);
        background.remove(delete);
        
        for(int i = 0,j=20;i<5;++i,j=j+60){
            values_field[i] =  new JTextField(values[i]);
            background.add(values_field[i]);
            values_field[i].setBounds(100+insets.left,j+insets.top,200,50);
        }
        
        add = new JButton("Add Team");
        background.add(add);
        add.setBounds(20+insets.left,350+insets.top, 150, 50);
        
        add.addActionListener(
        new ActionListener(){
            public void actionPerformed(ActionEvent g){
                addTeam();
            }
        }
        );
    }
    
    public void addTeam(){
        for(int i =0;i<5;++i){
            values[i] = values_field[i].getText().toString();
        }
       String newclub_id = String.format("%s%s",values[0].substring(0, 3).toUpperCase(),values[4]);
        String standing_id = String.format("S%s", newclub_id);
        try{
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epl_final_normalized?useSSL=true", "root", "3696");
            Statement st = con.createStatement();
            String sql ="INSERT INTO `team_info` (`Club_name`, `Stadium`, `Manager`) VALUES ('"+values[0]+"', '"+values[1]+"', '"+values[2]+"')";
        String sql2 = "INSERT INTO `team` (`Club_id`, `Club_name`) VALUES ('"+newclub_id+"', '"+values[0]+"')";  
            st.executeUpdate(sql);
            st.executeUpdate(sql2);
            
            String sql3 ="INSERT INTO `standingspoints` (`Points`, `Standings`) VALUES ('"+values[3]+"', '"+values[4]+"')";
            String sql4 ="INSERT INTO `standings` (`Standings_id`, `Club_id`, `Standings`) VALUES ('"+standing_id+"','"+newclub_id+"',  '"+values[4]+"')";
            st.executeUpdate(sql3);
            st.executeUpdate(sql4);
            vpage vnew = new vpage(1);
            pro.dispose();
        }
        catch(Exception g){
            JOptionPane.showMessageDialog(null,"Club_name and standings must bu unique, try changing values of club_name or standings","Error",JOptionPane.PLAIN_MESSAGE);
        }
            
    
    }
    
    public void deleteTeam(){
        String del[] = new String[4];
        try{
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epl_final_normalized?useSSL=true", "root", "3696");
            Statement st = con.createStatement();
         del[0] = "DELETE FROM `team` WHERE `team`.`Club_id` = '"+club_id+"'";
         del[1] = "DELETE FROM `team_info` WHERE `team_info`.`Club_name` = '"+values[0]+"'";
         del[2]  = "DELETE FROM `standings` WHERE `standings`.`Club_id` = '"+club_id+"'";
        del[3]  = "DELETE FROM `standingspoints` WHERE `standingspoints`.`Standings` = '"+values[4]+"'";    
        for(int i=0;i<4;++i)
            st.executeUpdate(del[i]);
        pro.dispose();
        vpage vnew = new vpage(1);
        }
        catch(Exception m){
            m.printStackTrace();
        }
    }
}