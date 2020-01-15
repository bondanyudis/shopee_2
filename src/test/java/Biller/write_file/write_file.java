package Biller.write_file;

import java.io.*;

public class write_file {
    public static void writeFile(String fileName,
                                       String str)
    {
        try {
            BufferedWriter out = new BufferedWriter(
                    new FileWriter(fileName, true));
            out.write(str);
            out.close();
        }
        catch (IOException e) {
            System.out.println("exception occoured" + e);
        }
    }
}
