
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;


String cantidadTablets, cantidadPortatiles, cantidadAudifonos;




public void setup() {
  size(500, 500);

  Firebase hiloSensor = new Firebase();
  hiloSensor.start();

  cantidadTablets="0";
  cantidadPortatiles="0";
  cantidadAudifonos="0";
}




public void draw() {
  background(#4DD1B3);
  noStroke();


  fill(255);
  textSize(20);
  text("Audifonos", width/4, height/3);
  text("Portatiles", width/4*2, height/3);
  text("Tablets", width/4*3, height/3);


  ellipse(width/4, height/2, 100, 100);
  ellipse(width/4*2, height/2, 100, 100);
  ellipse(width/4*3, height/2, 100, 100);


  //contador
  fill(0);
  textAlign(CENTER, CENTER);  
  textSize(40);
  text(cantidadAudifonos, width/4, height/2);
  text(cantidadPortatiles, width/4*2, height/2);
  text(cantidadTablets, width/4*3, height/2);
}






public class Firebase extends Thread {

  public void run() {

    try {
      while (true) {

        //referencia el link
        URL url = new URL("https://rangy-bebe6.firebaseio.com/.json");

        //abre la conexion con la url
        HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();

        //recibe lo que envia la conexion
        InputStream is = urlConnection.getInputStream();

        //lee y almacena lo que se envío
        BufferedReader br = new BufferedReader(new InputStreamReader(is));


        StringBuilder sb = new StringBuilder();
        String valores;


        while ((valores = br.readLine()) != null) {
          sb.append(valores);
        }

        String doc = sb.toString();       
        String recursos []= doc.split("cantidad");

        cantidadAudifonos= recursos[1].substring(2);
        cantidadAudifonos = cantidadAudifonos.substring(0, cantidadAudifonos.indexOf("},"));


        cantidadPortatiles= recursos[2].substring(2);
        cantidadPortatiles = cantidadPortatiles.substring(0, cantidadPortatiles.indexOf("},"));

        cantidadTablets= recursos[3].substring(2);
        cantidadTablets = cantidadTablets.substring(0, cantidadTablets.indexOf("}}"));



        Thread.sleep(1000);
      }
    } 
    catch (MalformedURLException e) {
      e.printStackTrace();
    } 
    catch (IOException e) {
      e.printStackTrace();
    } 
    catch (InterruptedException e) {
      e.printStackTrace();
    }
  }//cierra el run
}//cierra la clase Sensores
