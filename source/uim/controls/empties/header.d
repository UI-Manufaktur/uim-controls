module uim.controls.empties.header;

@safe: 
import uim.controls;

class DUIMEmptyHeaderControl : DUIMEmptyItemControl {
  mixin(ControlThis!("UIMEmptyHeaderControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["empty-header"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMEmptyHeaderControl", "DUIMEmptyHeaderControl"));
mixin(ControlCalls!("UIMEmptyHeader", "DUIMEmptyHeaderControl"));
