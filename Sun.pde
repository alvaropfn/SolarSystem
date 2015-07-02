public class Sun extends Body implements Physics
{
    
    public Sun(float r)
    {
        super(r, r);
        
        this.c = color(200, random(120,200), 50);
    }
    
    public void rotate()
    {
        this.px = mouseX;
        this.py = mouseY;
    }
    
    
}
