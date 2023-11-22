

class TestScene extends Scene
{
  //TextButton resetButton = new TextButton( 320, 400, "Reset", 50 );
  
  Object testObject = new Object(100,100,30,30);

  TestScene() {
    super( "sprite/scene/test_scene.png", new WalkableArea(new ArrayList<WalkableSquare>()));
    
    walkableArea.add(new WalkableSquare(50, 50, 200, 400));
    walkableArea.add(new WalkableSquare(250, 250, 200, 200));
  }

  public void doStepWhileInState()
  {
    super.doStepWhileInState();
    //resetButton.display();
    
    rectMode(CORNER);
    fill(#F54A4A);
    stroke(0,0);
    rect(25,25,250,450);
    rect(225,225,250,250);
    
    //testObject.draw();
  }

  void handleMousePressed() {
    super.handleMousePressed();
  }
}
