Sun s;

void setup()
{
    size(1000, 700);
    s = new Sun(30);
    
    s.addPlanets(new Planet(10, 60));
    s.addPlanets(new Planet(7, 85));
    s.addPlanets(new Planet(12, 105));
}

void draw()
{
    background(50);
    s.rotate();
    s.see();
}
