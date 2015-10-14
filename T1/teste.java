import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
class Compilador{

	public static void main(String[]args)
	{
		ArvoreSintatica arv=null;

		try{

			AnaliseLexica al = new AnaliseLexica(args[0]);
			Parser as = new Parser(al);

			arv = as.parseProg();

			if (Integer.parseInt(args[1]) == 0){
			//BACK END
			CodeGen backend = new CodeGen();
			String codigo = backend.geraCodigo(arv);
			System.out.println(codigo);


			File file = new File("/saidas/saida.txt");

			if (!file.exists()) {
				file.createNewFile();
			}

			FileWriter fw = new FileWriter(file.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(codigo);
			bw.close();

			}

			else if(Integer.parseInt(args[1]) == 1){
			//INTERPRETADOR
			Interpretador i = new Interpretador();
			int result = i.interp(arv);
			System.out.println(result);
			}
		}catch(Exception e)
		{
			System.out.println("Erro de compilação:\n" + e);
		}



	}
}
