import javax.swing.*;
import java.awt.event.*;
import java.util.*;
import java.awt.*;

public class mpage extends JFrame {
    JLabel background;
    JButton team,player;
    
    
    JFrame f;
    
    mpage(){
        
        super("Menu");
        f = new JFrame();
        f.setLayout(null);
        f.setSize(800,500);
        f.setVisible(true);
        f.setResizable(false);
        f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        Insets insets = getInsets();
       
        
        team = new JButton("Team");
        team.setIcon(new ImageIcon(new ImageIcon("/media/ayush/54CE1672CE164C9C/Link to KU_CE/projects/dbms mini project 4th sem/final/MiniProject/src/club.jpg").getImage().getScaledInstance(400,500,Image.SCALE_DEFAULT)));
        f.add(team);
        team.setBounds(0,0,400,500);
        team.addActionListener(
        new ActionListener(){
            public void actionPerformed(ActionEvent a){
                
                vpage v = new vpage(1);
                
        }
        }
        );
        
        player = new JButton("Player");
        player.setIcon(new ImageIcon(new ImageIcon("/media/ayush/54CE1672CE164C9C/Link to KU_CE/projects/dbms mini project 4th sem/final/MiniProject/src/player.jpg").getImage().getScaledInstance(400,500,Image.SCALE_DEFAULT)));
        f.add(player);
        player.setBounds(400+insets.left,0,400,500);
        player.addActionListener(
        new ActionListener(){
            public void actionPerformed(ActionEvent a){
                
                vpage v = new vpage(2);
                
        }
        }
        );
    }
    
}
