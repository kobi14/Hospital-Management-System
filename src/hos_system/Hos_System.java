/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hos_system;

/**
 *
 * @author kobi.ktk
 */
public class Hos_System {
    public static boolean isInt(String Var ){
        boolean n=true;
        for(int i = 0; i <Var.length();i++){
            if (!Character.isDigit(Var.charAt(i)) )
                n=false;
        }
        return n;
        
    }
    

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    }
    
}
