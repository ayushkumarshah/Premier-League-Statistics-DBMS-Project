import javax.swing.*;
import java.awt.event.*;
import java.awt.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Arrays;
import org.jdesktop.swingx.autocomplete.AutoCompleteDecorator;



public class vpage extends JFrame{
    public int num;
    int clicked;
    public String[] team_table={"Away","Fouls","Goals","Home","Revenues","SetPieces","StandingTable","Passing","Shots"};
   public  String[] player_table={"Attacking","Fouls","Passing","Profile"};
    public String[] club = new String[20];
   String[] choice;
 JButton[] options = new JButton[9];
 JFrame f;
 JLabel background,searchteam;
 int height = 50;
 int left_margin = 50;
 JTextField search;
 
DefaultListModel<String> model = new DefaultListModel<>();	
 JList <String> list1 = new JList<>(model);
 
    vpage(int n){
        super("Menu");
        clicked = n;
        
        f = new JFrame();
        f.setLayout(null);
        f.setResizable(false);
        f.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        f.setSize(800,500);
        f.setVisible(true);
        
        Insets insets = getInsets();
        searchteam=new JLabel("Search Team");
        f.add(searchteam);
        searchteam.setBounds(655+insets.left,40+insets.top,135,50);
        searchteam.setFont(searchteam.getFont().deriveFont(18f));
        
        background = new JLabel();
        background.setIcon(new ImageIcon(new ImageIcon("/back2.jpg").getImage().getScaledInstance(800,500,Image.SCALE_DEFAULT)));
        f.add(background);
        background.setBounds(0, 0, 800, 500);
       
        search = new JTextField();
        background.add(search);
        search.setBounds(655+insets.left,80+insets.top,135,50);
        getClubs();
        for(int i=0;i<10;++i)
            model.addElement(club[i]);
        
        AutoCompleteDecorator.decorate(list1, search);
        
        if(n ==1){
            choice = team_table;
            num = 9;
        }
        else if(n==2){
            choice = player_table;
            num = 4;
        }
        thehandler handler = new thehandler();
        search.addActionListener(
        new ActionListener(){
            public void actionPerformed(ActionEvent t){
                profile p = new profile(search.getText().toString());
            }
        }
        );
        
        //setting JButtons
        for(int i = 0,j= 50;i<num;++i,j=j+150){
            if(i<=3){
                left_margin= j;
                
            }
            else if(i>3 && i<10){
                height = 180;
               if(i == 4)
                   left_margin = 50;
               else if(i == 5)
                   left_margin = 200;
               else if( i == 6)
                   left_margin = 350;
               else if( i == 7)
                   left_margin = 500;
               else if( i == 8)
                   left_margin = 650;
               
            }
            
            
            options[i] = new JButton(choice[i]);
            options[i].setOpaque(false);
            options[i].setContentAreaFilled(false);
            options[i].setForeground(Color.WHITE);
            background.add(options[i]);
            options[i].setBounds(left_margin+insets.left,height+insets.top,150,100);
            options[i].addActionListener(handler);
            
            }
        
       
        
        
        
        
            
        
    }
        
    public class thehandler implements ActionListener{
       public void actionPerformed(ActionEvent event){
           int n = Arrays.asList(options).indexOf(event.getSource());
           display d = new display(n,clicked);
       }
    }
    
    
    public void getClubs(){
        try{
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/epl_final_normalized?useSSL=true", "root", "3696");
        Statement st = con.createStatement();
        String sql = "Select Club_name from team";
        ResultSet rs = st.executeQuery(sql);
        for(int i = 0;rs.next();++i){
            club[i] = rs.getString("Club_name");
        }
        
        }
        catch(Exception f){
            f.printStackTrace();
        }
    }
    
}
