module uim.controls.forms.floating;

@safe: 
import uim.controls;

class DUIMFormFloatingControl : DUIMControl {
  mixin(ControlThis!("UIMFormFloatingControl"));

  mixin(OProperty!("string", "title"));

  override void initialize() {
    super.initialize;
  }
/* 

      H5Dib<div class="form-floating mb-3">
  <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
   */
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5FormFloating(myId, myClasses, myAttributes,
        //input,
        H5Label(["for":myId], title));
  }
}
mixin(ControlCalls!("UIMFormFloatingControl", "DUIMFormFloatingControl"));
mixin(ControlCalls!("UIMFormFloating", "DUIMFormFloatingControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMFormFloating);

    auto control = UIMFormFloating;
  }
}
