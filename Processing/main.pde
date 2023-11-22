// ============ VARIABLES ============

Player player = new Player(100, 100);
boolean debugMode = false;
ArrayList<Object> inventory;


// ============ STATE HANDLER AND STATES ============
StateHandler stateHandler;


final State  TEST_SCENE = new  TestScene();
final State  TEST_SCENE_TWO = new   TestSceneTwo();
//final State  TABLE_SCENE = new  TableScene();
//final State FOREST_SCENE = new ForestScene();


void setup() {
  frameRate(60);
    size(1920,1080);
    inventory = new ArrayList<Object>();
    
    stateHandler = new StateHandler( "Game" );
    stateHandler.changeStateTo( TEST_SCENE );
    
    //mention all scenes with doors here
    TEST_SCENE.createDoors();
    TEST_SCENE_TWO.createDoors();
}


void draw() {
    stateHandler.executeCurrentStateStep();
    player.update();
    drawInv();
    if (debugMode) debug();
}

// ============ EVENT HANDLERS ============

// only put stuff in here that is valid for all states
// otherwise use the handleKeyPressed in the state itself

void keyPressed()    { 
  stateHandler.handleKeyPressed();    
  if (key == 'd') {
    debugMode=!debugMode;
  }
}
void keyReleased()   {
stateHandler.handleKeyReleased(); 
}
void keyTyped()      { stateHandler.handleKeyTyped();      }

void mousePressed()  { 
  stateHandler.handleMousePressed();  
  player.handleMousePressed();
}
void mouseClicked()  { stateHandler.handleMouseClicked();  }
void mouseReleased() { stateHandler.handleMouseReleased(); }
void mouseDragged()  { stateHandler.handleMouseDragged();  }
void mouseMoved()    { stateHandler.handleMouseMoved();    }

void mouseWheel(MouseEvent event) { stateHandler.handleMouseWheel( event ); }

void debug() {
   if (stateHandler.getState() instanceof Scene) {
     Scene scene = (Scene)stateHandler.getState();
     scene.getWalkableArea().render();
     scene.debug();
     player.debug();
  }
}
