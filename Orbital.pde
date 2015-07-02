public abstract class Orbital extends Body implements HasOrbit
{
    protected float cenD, spd, aSpd;
    ArrayList<Orbital> orbitals;
    
    public Orbital(float rx, float ry)
    {
        super(rx, ry);
        orbitals = new ArrayList<Orbital>();
    }
    
    public void rotate(Body b)
    {
        aSpd += spd;

        this.px = b.getPx() + cenD * cos(PI*aSpd);
        this.py = b.getPy() + cenD * sin(PI*aSpd);
        
        for(Orbital o : orbitals)
        {
            o.rotate((Body)this);
            o.see();
        }
    }
    
    public void addToOrbit(ArrayList<Orbital> income)
    {
        for(Orbital o : income)
            addToOrbit(o);
    }
    
    public void addToOrbit(Orbital o)
    {
        orbitals.add(o);
    }
}
