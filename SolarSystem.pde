//import java.util.ArrayList;

Sun sun;

void setup()
{
    size(1250, 725);
    sun = new Sun(45);
    generateRandomSystem(sun, 1,5,0,2);
}

void draw()
{
    background(50);
    sun.mov();
    sun.see();
}


public float myRand(float space)
{
    float r = random(space);
    if( ((int)r)%2 != 0 ) r*= -1; 
    return r;
}

public void generateRandomSystem(Sun sun, int pMin, int pMax, int mMin, int mMax)
{
    int pbd = 75; //Planet Base Distance
    int mbd = 25; //Moon Base Distance
    
    int pQtd = (int) random(pMin, pMax);
    
    for(int p = 0 ; p < pQtd ; p++)
    {
        ArrayList<Orbital> moons;
        int mQtd = (int) random(mMin, mMax);

        Planet planet = new Planet(random(10, 20), (pbd*(p+1) + mbd*mQtd) + myRand(mbd));

        if(mQtd > 0)
        {
            moons = new ArrayList<Orbital>();
            for(int m = 0 ; m < mQtd ; m++)
            {
                Planet moon = new Planet(random(4, 7), (mbd*(p+1)) + myRand(mbd/2));
                moons.add(moon);
            }

            planet.addToOrbit(moons);
        }

        sun.addToOrbit(planet);
    }
}