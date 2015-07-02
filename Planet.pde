public class Planet extends Orbital
{
    
    public Planet(float r, float d)
    {
        super(r, r);
        
        this.cenD = d;
        this.aSpd = random(2);
        this.spd = random(0.001, 0.01);
        
        this.c = color(random(20,255), random(20,255), random(20,255));
    }
    
    
}
