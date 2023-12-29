public abstract class Shape {

    //PApplet sketch;
    int xMargin = 12;
    int yMargin = 12;

    float x;
    float y;

    float xSpeed;
    float ySpeed;

    int colorValues;
    int minAlpha = 64;
    int maxAlpha = 224;
    int alpha = 24;

    Shape(float x, float y) {
        //this.sketch = sketch;
        this.x = x;
        this.y = y;
        this.xSpeed = random(-10, 10);
        this.ySpeed = random(-10, 10);
    }

    void step() {
        movePerlinNoiseWithinFrame(); // Per step position shape algo 2
    }

    void render() {
      //
    }

    // Default shape -> color implementation
    void setColor(String hex) {
        println("hex input: " + hex); // Diagnostic print
        StringBuilder sb = new StringBuilder();

        sb.append(hex);
        //sb.deleteCharAt(0);

        alpha = int(random(minAlpha, maxAlpha));
        //println("alpha: " + alpha);
        String opacity = Integer.toHexString(alpha);
        //println("opacity hexed: " + opacity);
        sb.insert(0, opacity);
        //sb.insert(0,"0x"); this could be useful in case of working with color datatype in processing directly
        println("hex output: " + sb.toString());
        this.colorValues = unhex(sb.toString());
    }

    float getX() {
        return x;
    }

    float getY() {
        return y;
    }

    int getColorValues() {
        return colorValues;
    }

    @Override // Todo: check if correct
    public boolean equals(Object o) {
        if ((o != null) && (getClass() == o.getClass()) && (((Shape) o).getX() == getX()) && (((Shape) o).getY() == getY())) {
            return true;
        } else return false;
    }

    // HELPERS
    //// Traditional speeding x and y coordinates and bounce at borders
    //private void moveStraightAndBounceAtBorder() {
    //    this.x += this.xSpeed;
    //    if (this.x < xMargin || this.x > sketch.width - xMargin) {
    //        xSpeed *= -1;
    //    }

    //    this.y += ySpeed;
    //    if (this.y < yMargin || this.y > sketch.height - yMargin) {
    //        ySpeed *= -1;
    //    }
    //}

    private void movePerlinNoiseWithinFrame() {
        // Noise script to generate shape at different x, y coordinates through Perlin noise
        float offset1 = random(0, 100);
        float offset2 = random(9950, 10050);

        this.x = map(noise(offset1), 0, 1, 0, width);
        this.y = map(noise(offset2), 0, 1, 0, height);

        offset1 += 0.02; // Todo: make offsets global
        offset2 += 0.02;
    }
}
