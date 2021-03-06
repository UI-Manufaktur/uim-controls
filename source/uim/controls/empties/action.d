module uim.controls.empties.action;

@safe: 
import uim.controls;

class DUIMEmptyActionControl : DUIMEmptyItemControl {
  mixin(ControlThis!("UIMEmptyActionControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-action"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMEmptyActionControl", "DUIMEmptyActionControl"));
mixin(ControlCalls!("UIMEmptyAction", "DUIMEmptyActionControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMEmptyAction);

    auto control = UIMEmptyAction;
  }
}
