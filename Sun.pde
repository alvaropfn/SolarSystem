public class Sun extends Body implements HasOrbit
{
    ArrayList<Orbital> planets;
    
    public Sun(float r)
    {
        super(r, r);
        planets = new ArrayList<Orbital>();
        this.c = color(200, random(120,200), 50);
    }
    
    public void addToOrbit(ArrayList<Orbital> os)
    {
        for(Orbital o : os)
            addToOrbit(o);
    }

    public void addToOrbit(Orbital o)
    {
        planets.add(o);
    }
     
    public void mov()
    {
        this.px = mouseX;
        this.py = mouseY;
        
        for(Orbital o : planets)
        {
            o.rotate((Body)this);
            o.see();
        }
    }
}
