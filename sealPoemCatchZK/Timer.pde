class Timer{
  int savedTime;
  int totalTime;
  
  Timer(int tempTotalTime){
    totalTime = tempTotalTime;
  }
  
  // method to start time
  void start() {
   savedTime = millis(); 
  }
  // method to check for total timepassed
  
  boolean isFinished(){
   int passedTime = millis() - savedTime;
   if(passedTime > totalTime){
     return true;
   } else {
     return false;
   }
  }
  
}
