import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
class Compilador{

	public static void main(String[]args)
	{
		ArvoreSintatica arv=null;
		String codigo="oi";
		try{

			AnaliseLexica al = new AnaliseLexica(args[0]);
			Parser as = new Parser(al);

			arv = as.parseProg();
			// de acordo com o parametro passado, caso 1 chama o interpretador, por default, chama o compilador.

			switch( (args.length > 1 ? Integer.parseInt(args[1]) : 0) )

            {
                case 1:
										System.out.println("______________________________");
										System.out.println("\nINICIANDO INTERPRETADOR");
										System.out.println("______________________________\n");
                    Interpretador inter = new Interpretador();
                    float resultado = inter.geraResultado(arv);
                    System.out.println(resultado);
                    break;
                default:
										System.out.println("______________________________");
										System.out.println("\nINICIANDO COMPILADOR");
										System.out.println("______________________________\n");
                    CodeGen backend = new CodeGen();
                    String codigo2 = backend.geraCodigo(arv);
										codigo = codigo2;
                    System.out.println(codigo);
                    break;
            }

			File file = new File("saida.txt");

			if (!file.exists()) {
				file.createNewFile();
			}

			FileWriter fw = new FileWriter(file.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(codigo);
			bw.close();




		}catch(Exception e)
		{
		}



	}
}
