public class Planet extends Body implements Physics
{
    
    public Planet(Body p, float r)
    {
        super(r, r);
        
        this.c = color(random(255), random(255), random(255));
    }
    
    public void rotate()
    {
        this.px = mouseX;
        this.py = mouseY;
    }

    
}
