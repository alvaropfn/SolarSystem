public abstract class Body
{
    protected float px, py, rx, ry;
    protected color c;
    
    public Body(float rx, float ry)
    {
        this.rx = rx;
        this.ry = ry;
    }

    public void see()
    {
        fill(c);
        noStroke();
        ellipse(px,py,rx,rx);
    }
    
    public float getPx()
    {return this.px;}
    
    public float getPy()
    {return this.py;}
    
}