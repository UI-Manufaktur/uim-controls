module uim.controls.tiles.container;

@safe: 
import uim.controls;

class DUIMTileContainerControl : DUIMContainerControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results;
  }
}
mixin(ControlCalls!("UIMTileContainerControl", "DUIMTileContainerControl")); 
mixin(ControlCalls!("UIMTileContainer", "DUIMTileContainerControl")); 

version(test_uim_controls) {
  unittest {
    assert(UIMTileContainer);

    auto control = UIMTileContainer;
    // TODO
  }
}
