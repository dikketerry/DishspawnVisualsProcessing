public class Rectangle extends Shape {

  private float width;
  private float height;

  public Rectangle()
  {
    this(200, 200);
  }

  public Rectangle(float x, float y)
  {
    super(x, y);
    this.width = random(30, 50);
    this.height = random(10, 70);
  }

  @Override
    public void render()
  {
    renderRectangle();
  }

  private void renderRectangle() {
    noStroke();
    fill(super.getColorValues());
    rect(super.getX(), super.getY(), width, height);
  }

  @Override
    public String toString() {
    return "Rectangle{" + "width=" + width + ", height=" + height + '}';
  }
}
