// Implementação proposta em Java

public class Questao4b {
	public static void main(String[] args)
	{
		int cont = 15;
		int total = 0;
		while (cont > total) {
			System.out.println("CONT=" + cont);
			total += 1;
			cont -= total; // Antes: cont -= 2;
		}
	}
}

// A modificação da Linha 11 faz produzir a saída desejada pela Questão 4.b