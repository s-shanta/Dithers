PImage kitten;
void setup ()
{
  size(184,112);
  kitten = loadImage("kitten0.png");

  image(kitten,0,0);
  kitten.filter(GRAY);
}

int index(int x,int y)
{
  return x+y*kitten.width;
}

void draw()
{
  kitten.loadPixels();
  for(int y=0;y<kitten.height-2;y++){
    for(int x=2;x<kitten.width-2;x++){
      int index = x+y*kitten.width;
      color pix = kitten.pixels[index];
      
      float oldR = red(pix);
      float oldG = green(pix);
      float oldB = blue(pix);
      
      int factor = 9;
      
      int newR = round(factor*oldR/255) * (255/factor);
      int newG = round(factor*oldG/255) * (255/factor);
      int newB = round(factor*oldB/255) * (255/factor);
      
      kitten.pixels[index(x,y)] = color(newR,newG,newB);
      
      float errR= oldR-newR;
      float errG= oldG-newG;
      float errB= oldB-newB;
      
      index = index (x+1,y );
      color c = kitten.pixels[index];
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      r = r+ errR * 8/42.0;
      g = g+ errG * 8/42.0;
      b = b+ errB * 8/42.0;
      kitten.pixels[index] = color(r,g,b);
      
      index = index (x+2,y );
      c = kitten.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r+ errR * 4/42.0;
      g = g+ errG * 4/42.0;
      b = b+ errB * 4/42.0;
      kitten.pixels[index] = color(r,g,b);
      
      index = index (x-2,y+1 );
      c = kitten.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r+ errR * 2/42.0;
      g = g+ errG * 2/42.0;
      b = b+ errB * 2/42.0;
      kitten.pixels[index] = color(r,g,b);
      
      index = index (x-1,y+1 );
      c = kitten.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r+ errR * 4/42.0;
      g = g+ errG * 4/42.0;
      b = b+ errB * 4/42.0;
      kitten.pixels[index] = color(r,g,b);
      
      index = index (x,y+1 );
      c = kitten.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r+ errR * 8/42.0;
      g = g+ errG * 8/42.0;
      b = b+ errB * 8/42.0;
      kitten.pixels[index] = color(r,g,b);
      
      index = index (x+1,y+1 );
      c = kitten.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r+ errR * 4/42.0;
      g = g+ errG * 4/42.0;
      b = b+ errB * 4/42.0;
      kitten.pixels[index] = color(r,g,b);
      
      index = index (x+2,y+1 );
      c = kitten.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r+ errR * 2/42.0;
      g = g+ errG * 2/42.0;
      b = b+ errB * 2/42.0;
      kitten.pixels[index] = color(r,g,b);
      
      index = index (x-2,y+2 );
      c = kitten.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r+ errR * 1/42.0;
      g = g+ errG * 1/42.0;
      b = b+ errB * 1/42.0;
      kitten.pixels[index] = color(r,g,b);
      
      index = index (x-1,y+2 );
      c = kitten.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r+ errR * 2/42.0;
      g = g+ errG * 2/42.0;
      b = b+ errB * 2/42.0;
      kitten.pixels[index] = color(r,g,b);
      
      index = index (x,y+2 );
      c = kitten.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r+ errR * 4/42.0;
      g = g+ errG * 4/42.0;
      b = b+ errB * 4/42.0;
      kitten.pixels[index] = color(r,g,b);
      
      index = index (x+1,y+2 );
      c = kitten.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r+ errR * 2/42.0;
      g = g+ errG * 2/42.0;
      b = b+ errB * 2/42.0;
      kitten.pixels[index] = color(r,g,b);
      
      index = index (x+2,y+2 );
      c = kitten.pixels[index];
      r = red(c);
      g = green(c);
      b = blue(c);
      r = r+ errR * 1/42.0;
      g = g+ errG * 1/42.0;
      b = b+ errB * 1/42.0;
      kitten.pixels[index] = color(r,g,b);
      
   
    }
  }
  
  kitten.updatePixels();
  image(kitten,92,0);
  save("kitten0.png");
}
