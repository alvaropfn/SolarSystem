public class Planet extends Body
{
    private float cenD, spd, aSpd;
    
    public Planet(float r, float d)
    {
        super(r, r);
        
        this.cenD = d;
        this.spd = random(0.001, 0.01);
        this.aSpd = 0;
        
        this.c = color(random(255), random(255), random(255));
    }
    
    public void rotate(Body o)
    {
        aSpd += spd;
        println("cenD: " + cenD + " cos: " + cos(PI * aSpd));
        println("booth: " + cenD * cos(PI * aSpd));
        
        //this.px = o.getPx() + 30;
        //this.py = o.getPy()+ 30;
        
        this.px = o.getPx() + cenD * cos(PI*aSpd);
        this.py = o.getPy() + cenD * sin(PI*aSpd);
    }

    
}
