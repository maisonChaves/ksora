package br.com.gec.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author Leonardo Lima
 */
public class IOArquivo {

    public static void main(String[] args) throws FileNotFoundException, IOException {
        String nomeArquico = "C:/teste.txt";
        StringBuilder textoArquivo = new StringBuilder();

        File arquivo = new File(nomeArquico);
        FileReader fr = new FileReader(arquivo);
        BufferedReader br = new BufferedReader(fr);

        while (br.ready()) {
            textoArquivo.append(br.readLine());            
            textoArquivo.append("\r\n");
        }

        fr.close();
        br.close();

        System.out.println(textoArquivo.toString());

        FileWriter fw = new FileWriter(new File("C:\\Users\\Leonardo Lima\\Desktop\\TesteEscrito.txt"));
        BufferedWriter bw = new BufferedWriter(fw);

        bw.write(textoArquivo.toString());
        bw.close();
        fw.close();

    }

}
