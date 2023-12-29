public class Transformer {

  // mass or volume - massOrVolumeSetter - switch + call either calculateMass or calculateVolume

  // unitName to MassUnit GRAM - calculateMass

  // unitName to VolumeUnit MILLILITER - calculateVolume

  Shape setShape(RecipeIngredient ri) {
    Shape s;
    // switch
    switch (ri.riForm) {
    case BEANS:
      //return new Circle();
      s = new Rectangle();
      s.setColor(ri.colour);
      break;
    case BLOBS:
      //return new Circle();
      s = new Circle();
      s.setColor(ri.colour);
      break;
    default:
      s = new Circle();
      s.setColor("DDDDDD");
        //return new Circle();
    }
    return s;
  }

}
