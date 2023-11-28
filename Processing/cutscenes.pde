class BeginingCutScene extends CutScene {
  BeginingCutScene() {
    super(ENTRANCE);
    frames.add(new CutSceneFrame(2000, "sprite/cutscene/begin/frame_1.png"));
    frames.add(new CutSceneFrame(2000, "sprite/cutscene/begin/frame_2.png"));
    frames.add(new CutSceneFrame(2000, "sprite/cutscene/begin/frame_3.png"));
  }
}