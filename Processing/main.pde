// ============ VARIABLES ============

Player player = new Player(100, 100);


// ============ STATE HANDLER AND STATES ============
StateHandler stateHandler;

final State  TEST_SCENE = new  TestScene();
//final State   LAWN_SCENE = new   LawnScene();
//final State  TABLE_SCENE = new  TableScene();
//final State FOREST_SCENE = new ForestScene();


void setup() {
    size( 800, 800 );
    noStroke();
    stateHandler = new StateHandler( "Example game" );
    stateHandler.changeStateTo( TEST_SCENE );
}


void draw() {
    stateHandler.executeCurrentStateStep();
    player.update();
    
    //debug();
}

// ============ EVENT HANDLERS ============

// only put stuff in here that is valid for all states
// otherwise use the handleKeyPressed in the state itself

void keyPressed()    { stateHandler.handleKeyPressed();    }
void keyReleased()   { stateHandler.handleKeyReleased();   }
void keyTyped()      { stateHandler.handleKeyTyped();      }

void mousePressed()  { stateHandler.handleMousePressed();  }
void mouseClicked()  { 
  stateHandler.handleMouseClicked();  
  player.handleMousePressed();
}
void mouseReleased() { stateHandler.handleMouseReleased(); }
void mouseDragged()  { stateHandler.handleMouseDragged();  }
void mouseMoved()    { stateHandler.handleMouseMoved();    }

void mouseWheel(MouseEvent event) { stateHandler.handleMouseWheel( event ); }

void debug() {
   if (stateHandler.getState() instanceof Scene) {
     Scene scene = (Scene)stateHandler.getState();
     scene.getWalkableArea().render();
     player.debug();
  }
}
