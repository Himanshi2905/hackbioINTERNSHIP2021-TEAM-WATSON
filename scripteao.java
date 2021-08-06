/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Temitope
 */
public class eao {
    
    
    // function to calculate Hamming distance
static int hammingDist(String slack_username, String twitter_handle)
{
    int i = 0, count = 0;
    while (i < slack_username.length())
    {
        if (slack_username.charAt(i) != twitter_handle.charAt(i))
            count++;
        i++;
    }
    return count;
    
}
  public static void main (String[] args)
{
    String name = "Ezekiel Ayoola Oluwafemi";
    String email = "easysonofman@gmail.com";
    String slack_username = "@ezekielao";
    String biostack = "Genomics"; 
    String twitter_handle = "@OluwafemiEzeki4";
    
     System.out.println(name);
     System.out.println(email);
     System.out.println(slack_username);
     System.out.println(biostack);
     System.out.println(twitter_handle);
 
    // function call
    System.out.println(hammingDist (slack_username, twitter_handle));
}
}
