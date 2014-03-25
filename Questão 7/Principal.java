import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;

public class Principal {
	private List estacoes = new ArrayList();

	public void metodo1(List estacoes) {
		estacoes = new ArrayList();
		estacoes.add("Verao");
		imprimeLista(this.estacoes);
	}

	public void metodo2(List estacoes) {
		this.estacoes = new ArrayList();
		estacoes.add("Verao");
		imprimeLista(estacoes);
	}

	public void metodo3(List estacoes) {
		this.estacoes.add("Verao"); 
		imprimeLista(estacoes);
	}

	public void imprimeLista(List param) {
		System.out.println("Estacoes: " + param.size());
		for (Iterator it = param.iterator(); it.hasNext();) {
			Object elem = (Object) it.next();
            System.out.println(elem);
		} 
	}
	public static void main(String[] args) { 
		Principal p = new Principal();
		p.estacoes.add("Outono"); 
		p.estacoes.add("Inverno"); 
		p.estacoes.add("Primavera"); 
		p.metodo1(p.estacoes);
		p.metodo2(p.estacoes);
		p.metodo3(p.estacoes);
	} 
}