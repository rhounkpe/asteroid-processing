int shipX = 0; // Coordonnée X du vaisseau  //<>// //<>//
int shipY = 0; // Coordonnée Y du vaisseau
PImage imageShip;
int MAX_P = 10;
int NB_AST = 15;
int[] asteroidsX = new int[NB_AST]; //Coordonnée X des 5 astéroids, Elles sont toutes à zero
int[] asteroidsY = new int[NB_AST]; //Coordonnée Y des 5 astéroids
int[] projectilsX = new int[MAX_P];
int[] projectilsY = new int[MAX_P];

void setup() {

  size(1200, 800); //Construction de la fenêtre.
  shipX = width - 100; //La position du vaisseau est mise près du bord droit
  shipY = height / 2;
  frameRate(60); //Le frame rate est à 60
  stroke(255);
  background(0, 0, 0); //Le background est noir
  // On tire toute les coordonnées Y de façon aléatoire
  for (int i = 0; i < asteroidsX.length; i++) {
    asteroidsY[i] = (int) random(height);
  }

  imageShip = loadImage("vaisseau.png");
}

// Fonction qui permet de dessiner les 5 astéroids
void drawAsteroids() {
  fill(color(245, 254, 33));

  for (int i = 0; i < asteroidsX.length; i++)
  ellipse(asteroidsX[i], asteroidsY[i], 20, 20);
}

// Fonction qui permet de faire avancer les astéroids de gauche à droite.
//On commence à 0 dans les tableaux
void updateAsteroids() {
  for (int i = 0; i < asteroidsX.length; i++) {
    asteroidsX[i]++;
  }

}

void updateProjectils() {
  for (int i = 0; i < projectilsX.length; i++) {
    if (projectilsX[i] >= 0) projectilsX[i] -= 5;
  }
}

void drawProjectils() {
  fill(color(22, 545, 33));
  for (int i = 0; i < projectilsX.length; i++) {

    if (projectilsX[i] >= 0) {
      rect(projectilsX[i], projectilsY[i], 1, 1);
    }
  }
}

void destroyAsteroids() {
  for (int i = 0; i < projectilsX.length; i++) {
    for (int j = 0; j < asteroidsY.length; j++) {
      if (isIntersectionCircles(projectilsX[i], projectilsY[i], 1, asteroidsX[j], asteroidsY[j], 20)) {
        projectilsX[i] = 0;
        projectilsY[i] = 0;
        asteroidsX[j] = 0;
        asteroidsY[j] = int(random(height));
      }
    }
  }
}

void drawVaisseau() {
  image(imageShip, shipX, shipY);
}

boolean isIntersectionCircles(float x1, float y1, float d1, float x2, float y2, float d2) {
  float dx = x1 - x2;
  float dy = y1 - y2;
  float distance = sqrt(dx * dx + dy * dy);
  return distance < d1 + d2;
}

int i = 0;


// A chaque frame, on redessine tout.
void draw() {
  background(0, 0, 0); //on dessine l'arrière à noir
  rectMode(CENTER); //On met le rectMode au centre. Veut dire que les positions x et y sont par rapport au centre de la figure
  imageMode(CENTER); // ImageMode

  updateAsteroids(); // On appelle la fonction qui updates les astéoides.
  updateProjectils();
  destroyAsteroids();

  drawVaisseau();
  drawAsteroids(); // On appelle la fonction qui dessine tous les astéroids 
  drawProjectils();
  saveFrame("a2/asteroids-######.png");
}

void createProjectil() {
  int i = 0;
  while (i < MAX_P && projectilsX[i] > 0) {
    i++;
  }
  if(i == MAX_P) return;
  projectilsX[i] = width - 100;
  projectilsY[i] = shipY;

}

// On attrape les valeurs passées au clavier
void keyPressed() {

  if (key == ' ') createProjectil();
  
  if (keyPressed == false) return;
  if (keyCode == UP) // Si la touche UP est appuyée
  {
    if (shipY > 0) shipY -= 10; // On vérifie qu'on ne sort pas de l'écran.
  }
  if (keyCode == DOWN) // Si la touche DOWN est appuyée
  {
    if (shipY < height) shipY += 10; // On vérifie qu'on ne sort pas de l'écran.
  }

}
