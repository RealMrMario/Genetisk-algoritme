String print;
int[][] DNAs = new int[500][];
int[] weightDNA = new int[500];
double[] fitness = new double[500];
DNA ting = new DNA();
int[] weight = new int[24];
double totalWeight;
int[] arv = new int[500];
{

  weight[0] = 90;
  weight[1] = 130;
  weight[2] = 1530;
  weight[3] = 500;
  weight[4] = 150;
  weight[5] = 680;
  weight[6] = 270;
  weight[7] = 390;
  weight[8] = 230;
  weight[9] = 520; 
  weight[10] = 110; 
  weight[11] = 320;
  weight[12] = 240;
  weight[13] = 480;
  weight[14] = 730;
  weight[15] = 420;
  weight[16] = 430;
  weight[17] = 220;
  weight[18] = 70;
  weight[19] = 180;
  weight[20] = 40;
  weight[21] = 300;
  weight[22] = 900;
  weight[23] = 2000;
}

int[] Price = new int[24];
{

  Price[0]= 150;
  Price[1]= 35;
  Price[2]= 200;
  Price[3]= 160;
  Price[4]= 60;
  Price[5]= 45;
  Price[6]= 60;
  Price[7]= 40;
  Price[8]= 30;
  Price[9]= 10;
  Price[10]= 70;
  Price[11]= 30;
  Price[12]= 15;
  Price[13]= 10;
  Price[14]= 40;
  Price[15]= 70;
  Price[16]= 75;
  Price[17]= 80;
  Price[18]= 20;
  Price[19]= 12;
  Price[20]= 50;
  Price[21]= 10;
  Price[22]= 1;
  Price[23]= 150;
}
String [] Name = new String[24];
{
  Name[0]= "kort" ;
  Name[1]= "kompas" ;
  Name[2]= "vand" ;
  Name[3]= "sandwich" ;
  Name[4]= "sukker" ;
  Name[5]= "dåsemad" ;
  Name[6]= "banan" ;
  Name[7]= "æble" ;
  Name[8]= "ost" ;
  Name[9]= "øl" ;
  Name[10]= "solcreme" ;
  Name[11]= "kamera" ;
  Name[12]= "T-shirt" ;
  Name[13]= "busker" ;
  Name[14]= "paraply" ;
  Name[15]= "vandtætte bukser" ;
  Name[16]= "vandtæt overtæj" ;
  Name[17]= "pung" ;
  Name[18]= "solbriler" ;
  Name[19]= "håndklæde" ;
  Name[20]= "sokker" ;
  Name[21]= "bog" ;
  Name[22]= "notesbog" ;
  Name[23]= "telt" ;
}

void setup() {
  for (int i = 0; i<500; i++ ) {
    print = "";
    int[] temp = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    int antal = int(random(4, 18));
    for (int j = 0; j< antal; j++) {
      int tilf = int(random(0, 23));
      if (temp[tilf] == 0) {
        temp[tilf] =1;
      } else j--;
    }
    DNAs[i] = temp; 
    for (int j = 0; j< 24; j++) print = print + Integer.toString(DNAs[i][j]);
    //println(print);
  }

  //ting.fitness();
}

void draw() {
  for (int i = 0; i<500; i++) {
    for (int j = 0; j<24; j++) {
      if (DNAs[i][j] == 1) {
        weightDNA[i] += weight[j];
      }
    }
  }
  totalWeight = 0;
 for(int i = 0; i<500; i++){
   if(weightDNA[i]<= 5000 ){
   totalWeight += weightDNA[i];
   }
   //println(weightDNA[i]);
 } 
 double check = 0;
 double checkArv =0;
 //udregn fitness
 for(int i = 0; i<500; i++){
   if(weightDNA[i]<= 5000 ){
  fitness[i] = weightDNA[i]/totalWeight;
  //check += fitness[i];
 }
 else fitness[i] = 0;
  arv[i] = (int)Math.round(500*fitness[i]);
  check += arv[i];
    //println(fitness[i]);
 }
 println(check);
 for(int i = 0; i < Math.abs(500-check); i++){
 int tempnmb = int(random(0,499));
 if(500-check>0){
 arv[tempnmb] += 1;
 } else {
  if(arv[tempnmb] > 0) arv[tempnmb] -= 1;
  else i--;
 }
   //println(arv[i]);
 }
 for(int i = 0; i < 500; i++){
   checkArv += arv[i];
 }
 println(checkArv);
 noLoop(); 
}
