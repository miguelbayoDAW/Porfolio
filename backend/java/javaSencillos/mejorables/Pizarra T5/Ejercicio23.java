import java.lang.*;
import java.util.*;
public class Ejercicio23 {

	public static void main(String[] args) {
		
		Scanner s = new Scanner(System.in);
		String contraseņa = "nm1:?fkl";
		int intentos = 5;
		boolean repetir = true;
		for(int i=1;i<=5&&repetir;i++) {
			System.out.println("Intentos restantes: "+intentos);
			System.out.println("Introduzca contraseņa: ");
			String c = s.nextLine();
			if(intentos!=0) {
				if(c.equals(contraseņa)) {
					System.out.println("Acceso permitido.");
					repetir = false;
				}else if(!c.equals(contraseņa)&&intentos==1){
					System.out.println("Acceso denegado.");
				}else {
					System.out.println("Contraseņa incorrecta.");
					intentos--;
				}
			}
		}
		
	}

}
