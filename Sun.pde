public class Sun extends Body
{
    ArrayList<Planet> planets;
    
    public Sun(float r)
    {
        super(r, r);
        planets = new ArrayList<Planet>();
        this.c = color(200, random(120,200), 50);
    }
    
    public void addPlanets(ArrayList<Planet> income)
    {
        for(Planet p : income)
            addPlanets(p);
    }
    
    public void addPlanets(Planet p)
    {
        planets.add(p);
    }
     
    public void rotate()
    {
        this.px = mouseX;
        this.py = mouseY;
        
        for(Planet p : planets)
        {
            p.rotate((Body)this);
            p.see();
        }
    }
    
    
}
