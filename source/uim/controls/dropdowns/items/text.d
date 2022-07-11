module uim.controls.dropdowns.items.text;

@safe: 
import uim.controls;

class DUIMDropdownTextControl : DUIMDropdownItemControl {
  this() { super(); }

  override void initialize() {
    super.initialize;
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(["p-3"], ["style":"max-width: 200px;"], myContent)].toH5;
  }
}
auto UIMDropdownTextControl() { return new DUIMDropdownTextControl; }
auto UIMDropdownText() { return new DUIMDropdownTextControl; }

version(test_uim_controls) {
  unittest {
    // TODO
  }
}