
import java.awt.Color;
import java.awt.Image;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;



public class MainPage {
    
  
  
   
   static JFrame win;
   static JLabel background;
   static JButton enter;
            
    
    public static void main(String args[]) {
        win = new JFrame();
        win.setLayout(null);
        win.setSize(800,500);
        win.setVisible(true);
        win.setResizable(false);
        win.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        Insets insets = win.getInsets();
        
        background = new JLabel();
        background.setIcon(new ImageIcon(new ImageIcon("/media/ayush/54CE1672CE164C9C/Link to KU_CE/projects/dbms mini project 4th sem/final/MiniProject/src/back.jpg").getImage().getScaledInstance(800, 500, Image.SCALE_DEFAULT)));
        win.add(background);
        background.setBounds(0,0,800,500);
        
        enter = new JButton("Enter");
        background.add(enter);
        enter.setBounds(350+insets.left,350+insets.top,100,50);
        enter.setOpaque(false);
        enter.setContentAreaFilled(false);
        enter.setForeground(Color.WHITE);
        enter.addActionListener(
                new ActionListener(){
                    public void actionPerformed(ActionEvent a){
                        mpage m = new mpage();
                        win.dispose();
                    }
                }
        );
}
}
