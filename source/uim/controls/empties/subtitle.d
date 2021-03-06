module uim.controls.empties.subtitle;

@safe: 
import uim.controls;

class DUIMEmptySubtitleControl : DUIMEmptyItemControl {
  mixin(ControlThis!("UIMEmptySubtitleControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-subtitle"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5P(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMEmptySubtitleControl", "DUIMEmptySubtitleControl"));
mixin(ControlCalls!("UIMEmptySubtitle", "DUIMEmptySubtitleControl"));
