/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package aplikasikaryawan;

/**
 *
 * @author fsdio
 */
public class Variabel {
    private static String username;
    
    public static void setUsername(String username){
        Variabel.username = username;
    }
    
    public static String getUsername(){
        return Variabel.username;
    }
}
