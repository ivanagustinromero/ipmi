//Romero Ivan 119131/3
// comision 1 
//https://youtu.be/3FuJy4WjCXI


void dibujarCubo(int posX, int posY){
  
  //Declaración de variables internas
  float valor1, valor2, valor3;
 float vertice2 = 0;
  float vertice1 = 0;
  
  if(condicion == 0){
    //botón inicio
    fill(0,0,0,5);
    rect(450,332,300,68);
    textFont(fuente);
    fill(255,255,255,5);
    text("CLICK ACÁ",470,385);
    
    //colores de la imagen
    fill(52,11,25);
    
    noStroke();
  
    //Rombo violeta arriba
    beginShape();
      vertex(posX + 400, posY + 12.5);
      vertex(posX + 425, posY + 25);
      vertex(posX + 450, posY + 12.5);
      vertex(posX + 425, posY + 0);
    endShape();
  
    //Rombo violeta izquierda
    beginShape();
      vertex(posX + 400, posY + 12.5);
      vertex(posX + 400, posY + 42.5);
      vertex(posX + 425, posY + 55);
      vertex(posX + 425, posY + 25);
    endShape();
  
    //Rombo amarillo derecha
  
    if(condicion == 0){
      fill(238,179,1);
    }else{
      fill(0);
    }
  
    beginShape();
      vertex(posX + 425, posY + 25);
      vertex(posX + 425, posY + 55);
      vertex(posX + 450, posY + 42.5);
      vertex(posX + 450, posY + 12.5);
    endShape();
    
  }else{
    //botón colores
    fill(0,0,0,5);
    rect(450,332,300,68);
    textFont(fuente);
    fill(255,255,255,5);
    text("REINICIAR",475,385);
    
    //colores random
    valor1 = random(255);
    valor2 = random(255);
    valor3 = random(255);
    
    //Vértice2 y 1
    vertice2 = fQueRetornaUnValor(vertice2,posY);
    vertice1 = fQueRetornaUnValor(vertice1,posX);
    
    fill(valor1,valor2,valor3);
    
    noStroke();
  
    //Rombo violeta arriba
    beginShape();
      vertex(vertice1 + 400, vertice2 + 12.5);
      vertex(vertice1 + 425, vertice2 + 25);
      vertex(vertice1 + 450, vertice2 + 12.5);
      vertex(vertice1 + 425, vertice2 + 0);
    endShape();
  
    //Rombo violeta izquierda
    beginShape();
      vertex(vertice1 + 400, vertice2 + 12.5);
      vertex(vertice1 + 400, vertice2 + 42.5);
      vertex(vertice1 + 425, vertice2 + 55);
      vertex(vertice1 + 425, vertice2 + 25);
    endShape();
  
    //Rombo amarillo derecha
  
    if(condicion == 0){
      fill(238,179,1);
    }else{
      fill(0);
    }
  
    beginShape();
      vertex(vertice1 + 425, vertice2 + 25);
      vertex(vertice1 + 425, vertice2 + 55);
      vertex(vertice1 + 450, vertice2 + 42.5);
      vertex(vertice1 + 450, vertice2 + 12.5);
    endShape();
    
  }


}

  float fQueRetornaUnValor(float valor, float posY){
    //ROTAR LOS CUBOS
    valor= mouseY - posY;
    return(valor);
  }


//Declaración de variables
PImage imagenRefe;
int condicion;
PFont fuente;

void setup(){
  //Tamaño y fondo de la ventana
  size(800,400);

  //inicialización de variables
  condicion = 0;
  
  //Cargar fuentes
  fuente=loadFont("letra.vlw");
  
  //Cargar imagen de referencia
  imagenRefe=loadImage("imagen cubos.jpg");
}

void draw(){
  
  if(condicion == 0){
    background(85,104,51);
  }else{
    background(0);
  }

  //Mostrar imagen de referencia
  image(imagenRefe,0,0,400,400);
  
  //dibujo de los cubos
  for(int inicioY = 0; inicioY < height; inicioY += 55){
    for(int inicioX = 0; inicioX < width; inicioX += 50){
      dibujarCubo(inicioX,inicioY);
    }
  }

}

void mousePressed(){
  //presionar botón
  if(mouseX>450 && mouseX<750 && mouseY>332 && mouseY<400 && condicion == 0){
    condicion = 1;
  }
  else if(mouseX>450 && mouseX<750 && mouseY>332 && mouseY<400 && condicion == 1){
    condicion = 0;
  }
}
