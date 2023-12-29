/*
- mass and volume convertors
- translate that to ratio and # of shapes
- then it should be rather similar to Java
- then start to expand the algorithms
- look into static Service and Transformer
*/

Service service;
//Shape[] shapes; //<>//
ArrayList<Shape> shapes;
RecipeIngredient[] recipeIngredients;

final int COLOR_CEILING = 255;
int shapeIndex = 0;
int red, green, blue;

RecipeIngredient ri1, ri2, ri3, ri4, ri5;

void setup() {
  size(800, 800);
  frameRate(30);
  service = new Service();
  shapes = new ArrayList<Shape>();
  red = (int) random(0, COLOR_CEILING);
  green = (int) random(0, COLOR_CEILING);
  blue = (int) random(0, COLOR_CEILING);
 //<>//
  background(red, green, blue);

  ri1 = new RecipeIngredient("LITER", 1.0, 0.5, 1, true, "BC131F", RiForm.BEANS, RiTexture.CHEWY); //<>//
  ri2 = new RecipeIngredient("LITER", 1.0, 0.5, 0.5, true, "B2E39C", RiForm.BLOBS, RiTexture.CREAMY);
   //<>//
  recipeIngredients = new RecipeIngredient[2];
  recipeIngredients[0] = ri1;
  recipeIngredients[1] = ri2;
  
  for (RecipeIngredient ri : recipeIngredients) {
    // set # shapes per ri
    int nrOfShapes = (int) Math.ceil(ri.volume * 10);
    
    for (int i = 0; i < nrOfShapes; i++) {
      Shape s = service.setShape(ri);
      println("shape s: " + s.toString());
      shapes.add(s);
      //s.render();
    }
  }
}

void draw() {
  //background(red, green, blue);
  Shape s = shapes.get(shapeIndex);
  s.step();
  s.render();
  
  shapeIndex++;
  
  if (shapeIndex == shapes.size()) {
    noLoop();  
  }

  //for (int i = 0; i < shapes.size(); i ++) {
  //  Shape s = shapes.get(i);
  //  s.step();
  //  s.render();
  //}
}
