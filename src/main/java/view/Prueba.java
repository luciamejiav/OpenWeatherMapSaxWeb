package view;

import java.util.ArrayList;

import manejador.ManejadorWeb;
import model.Time;

public class Prueba {

	public static void main(String[] args) {

		ManejadorWeb manejador = new ManejadorWeb("http://api.openweathermap.org/data/2.5/forecast?q=Toledo,es&mode=xml&APPID=601c9db344b44f9774ef76a4c07979b1&lang=sp"); 
		ArrayList<Time> times = manejador.parsear(); //llamar al array de la clase weathermap
		
		for (Time time:times) { //igualamos la variable de ambas clases e imprimimos el dia
			System.out.println(time);
		}


	}

}
