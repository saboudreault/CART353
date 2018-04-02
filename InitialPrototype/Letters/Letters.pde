//first, make divs from openprocessing.org under canvas transparent
//var csslink = document.getElementsByTagName("link")[0];
//csslink.parentNode.removeChild(csslink);
//parent.document.getElementById("appletAjaxContainer").setAttribute("style", "background-color:transparent; border:0px;");
// we call parent.document 'cause canvas are displayed in an iframe

PFont font;
String[] lines;

int i=0, j=0;
int x=10, y=15;
int charCount;
int inlineX = 10;
int inlineY = 0;
int textBounds = 55;
String message;

void setup() {
  size(600, 600);
  font = loadFont("Meiryo-12.vlw");
  textFont(font, 12);
  String str = ""+"text.md";
  lines = loadStrings(str);
  background(255, 255, 255);
  frameRate(30);
}

void draw() {
  translate(0, 20);
  fill(0, 0, 0);

  /*
  //-----------------------------
   if (i<lines.length) {
   message = lines[i];
   }
   
   //-----------------------------
   if (j < message.length()) {
   text(message.charAt(j), x*j+10, y*i);
   j++;
   } else { 
   j=0;
   i++;
   }
   */
}

void mousePressed()
{
  draw();
}

void keyPressed() {
  if (i<lines.length) {
    message = lines[i];
  }

  //-----------------------------
  println("inlineX " + inlineX + ", inlineY is " + inlineY);
  if (j < message.length()) {
    if (charCount > textBounds) {
      println("beep");
      //y += 15;
      //x += 10;
      //inlineX += 10;
      inlineY += 15;
      charCount = 0;
    }
    text(message.charAt(j), x*charCount+inlineX, y*i+inlineY);
    j++;
    charCount++;
  } else { 
    j=0;
    i++;
  }
}