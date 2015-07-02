Sun s;

void setup()
{
    size(1250, 725);
    s = new Sun(45);
    
    s.addToOrbit(new Planet(random(10,20), 75 + myRand(25) ));
    s.addToOrbit(new Planet(random(10,20), 150 + myRand(25) ));
    
    Planet p  = new Planet(random(10,20), 225 + myRand(25) );
    p.addToOrbit(new Planet(random(5,7), 25 + myRand(25) ));
    
    s.addToOrbit(p);
}

void draw()
{
    background(50);
    s.mov();
    s.see();
}


public float myRand(float space)
{
    float r = random(space);
    if( ((int)r)%2 != 0 ) r*= -1; 
    return r;
}
