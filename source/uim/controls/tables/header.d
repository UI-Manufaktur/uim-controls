module uim.controls.tables.header;

@safe: 
import uim.controls;

class DUIMTableHeaderControl : DUIMControl {
  mixin(ControlThis!("UIMTableHeader"));

  mixin(OProperty!("DUIMControl[]", "cells"));

  override void initialize() {
    super.initialize;
  }

  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Thead(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTableHeaderControl", "DUIMTableHeaderControl")); 
mixin(ControlCalls!("UIMTableHeader", "DUIMTableHeaderControl")); 

version(test_uim_controls) {
  unittest {
    assert(UIMTableHeader);

    auto control = UIMTableHeader;
  }
}
