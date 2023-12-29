public class RecipeIngredient {
  String unitName;
  double quantity;
  double mass;
  double volume;
  boolean visualImpact;
  String colour;
  RiForm riForm;
  RiTexture riTexture;
  
  RecipeIngredient(String unitName, double quantity, double mass, double volume, boolean visualImpact, String colour, RiForm rf, RiTexture rt) {
    this.unitName = unitName;
    this.quantity = quantity;
    this.mass = mass;
    this.volume = volume;
    this.visualImpact = visualImpact;
    this.colour = colour;
    this.riForm = rf;
    this.riTexture = rt;
  }
  
  RecipeIngredient(RiForm rf) {
    this.riForm = rf;
  }
}
