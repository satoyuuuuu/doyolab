int photo = 0;
PImage[] img = new PImage[6];

int mozi=-1;
int strY=70;
StringList myComment;

void setup(){
  for(int i=0;i<6;i++){
    img[i]=loadImage("img"+i+".png");
  }
  //doyo修正-------------------------------------------
  myComment = new StringList();
  String line[] = loadStrings("URL");
  String a = line[0]; 
  String[] data1 = a.split("¥x",0);
  try{
    for(String s : data1){
      try{
        String[] data2 = s.split(",",0);
        //println(data2[1]);
        myComment.append(data2[1]);
      }catch(Exception e){
      }
  }
  }catch(Exception e){
  }
  //-------------------------------------------------
 size(1280, 720);
 background(255);
 fill(0);
 textSize(20);
 PFont font = createFont("MS Gothic",20);
textFont (font);
}

void draw(){
 image(img[photo],0,0,720,576);
 if (mozi>-1){
   
   //text(myComment.get(mozi),850,strY);
 }
}

void mouseReleased(){
 photo++;
 if(photo>=6)photo=0;
}

void keyPressed(){
  strY=strY+30;
   mozi++;
   //println(mozi);
  //String a = myComment.get(mozi));
  //doyo修正-------------------------------------------
  
  text(myComment.get(mozi),850,strY);
 //text(csvDataColumn[mozi],850,strY);
}
