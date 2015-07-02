Sun s;

void setup()
{
    size(1000, 700);
    s = new Sun(50);
}

void draw()
{
    background(0.123);
    s.rotate();
    s.see();
}
