public class Service {

  Transformer t;

  Shape setShape(RecipeIngredient ri) {
    t = new Transformer();
    // set shape based on RecipeIngredient
    return t.setShape(ri);
  }

  void addShape() {
    // add shapes
  }
}
