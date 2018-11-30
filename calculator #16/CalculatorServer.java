package calculator;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;


public class CalculatorServer {

    private static ServerSocket serverSocket;
    private static Socket socket;
    private static final int PORT = 8080;
    private static final String DEFAULT_MESSAGE = "x=?&y=?&operation=?(sum, div, mul, sub)";

    public CalculatorServer() {
        try {
            serverSocket = new ServerSocket(CalculatorServer.PORT);
            while ((socket = serverSocket.accept()) != null) {
                BufferedReader br = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                int n = 0;
                boolean GET = false;
                boolean POST = false;
                String param = "";
                while (true) {
                    String s = br.readLine();
                    if (s == null || s.trim().length() == 0) {
                        break;
                    }
                    if (s.split("/")[0].trim().equals("POST")) {
                        POST = true;
                    }
                    if (s.split("/")[0].trim().equals("GET")) {
                        GET = true;
                        if (s.split("/")[1].contains("?")) {
                            s = s.split("/")[1];
                            param = s.substring(s.indexOf("?") + 1, s.indexOf(" ")).trim();
                        }
                    }
                    if (s.split(":")[0].equals("Content-Length")) {
                        n = Integer.parseInt(s.split(":")[1].trim());
                    }
                    System.out.println(s);
                }

                if (!GET && POST && n > 0 && param.length() == 0)
                    for (int i = 0; i < n; i++) {
                        param += (char)br.read();
                    }
                String[] sp = param.split("&");
                int x = 0;
                int y = 0;
                int rez = -1;
                for (String str: sp) {
                    if (str.split("=")[0].equals("x")){
                        x = Integer.parseInt(str.split("=")[1]);
                    }
                    if (str.split("=")[0].equals("y")){
                        y = Integer.parseInt(str.split("=")[1]);
                    }
                    if (str.split("=")[0].equals("operation")){
                        switch (str.split("=")[1]) {
                            case "sum":
                                rez = 0;
                                break;
                            case "sub":
                                rez = 1;
                                break;
                            case "mul":
                                rez = 2;
                                break;
                            case "div":
                                rez = 3;
                                break;
                            default:
                                rez = 4;
                                break;
                        }
                    }
                }

                switch (rez){
                    case 0:
                        param = "Rez: " + (x + y);
                        break;
                    case 1:
                        param = "Rez:" + (x - y);
                        break;
                    case 2:
                        param = "Rez:" + (x * y);
                        break;
                    case 3:
                        try {
                            param = "Rez:" + (x / y);
                        } catch (ArithmeticException ex) {
                            param = "infinite";
                        }
                        break;
                    default:
                        param = CalculatorServer.DEFAULT_MESSAGE;

                }

                
                PrintWriter pr = new PrintWriter(socket.getOutputStream());
                pr.println("HTTP/1.1 200 OK");
                pr.println("Content-type:text/plain;Charset:UTF-8");
                pr.println("Content-length:" + param.length());
                pr.println();

                pr.println(param);
                pr.flush();
                socket.close();
            }
        } catch (IOException | NumberFormatException ex) {
            System.err.println("Error: " + ex.getMessage());
        }
    }

    public static void main(String[] args) {
        new CalculatorServer();
    }
    
}
