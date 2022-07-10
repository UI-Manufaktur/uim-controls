module uim.controls.dropdowns.items.divider;

@safe: 
import uim.controls;

class DUIMDropdownDividerControl : DUIMDropdownItemControl {
  this() { super(); }

  // mixin(OProperty!("bool", "isDivider"));

  override void initialize() {
    super.initialize;
 
    this
      .classes(["dropdown-divider"])
      .isDivider(true); 
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5DropdownDivider(myId, myClasses, myAttributes, myContent);
  }
}
auto UIMDropdownItemControl() { return new DUIMDropdownDividerControl; }