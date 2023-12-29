public class Circle extends Shape {

    float size;

    Circle() {
        this(400, 400);
    }

    Circle(float x, float y) {
        super(x, y);
        this.size = random(10, 100);
    }

    @Override
    public void render() {
        renderCircle();
    }

    private void renderCircle() {
        noStroke();
        fill(super.getColorValues());
        circle(super.getX(), super.getY(), size);
    }

    @Override
    public String toString() {
        return "Circle{" + "size=" + size + '}';
    }
}
