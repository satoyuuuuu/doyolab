//変数と配列の定義
int photo = 0;
PImage[] img = new PImage[6];
String str = "THANK, YOU, Hello, Good, I LOVE U";
String[] chat = str.split(",", 0);
int mozi=-1;
int strY=70;

//画像のスライドの繰り返し条件
void setup(){
 for(int i=0;i<6;i++){
 img[i]=loadImage("img"+i+".png");
}
//各設定
 size(1280, 720);
 background(255);
 fill(0);
 textSize(20);
}
//連続して行われる処理
void draw(){
 image(img[photo],0,0,720,576);
 if (mozi>-1){
   text(chat[mozi],850,strY);
 }
}

void mouseReleased(){
 photo++;
 if(photo>=6)photo=0;
}

void keyPressed(){
  strY=strY+30;
   mozi++;
   println(mozi);

 text(chat[mozi],850,strY);
}
