import java.lang.*;
import java.util.Scanner;
public class Ejercicio5 {

	public static void main(String[] args) {
		//Crear una contraseņa y preguntarle por teclado al usuario diciendo si es correcta o no.
		String contraseņa = "ASDF-678";
		Scanner s = new Scanner(System.in);
		System.out.println("Introduzca contraseņa: ");
		String c = s.nextLine();
		if(c.equals(contraseņa)) {
			System.out.println("Contraseņa correcta.");
		}else {
			System.out.println("Contraseņa incorrecta.");
		}
	}

}
