module uim.controls.dropdowns.divider;

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

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;
    auto myContent = this.content.dup;

    return [
      BS5DropdownDivider(myId, myClasses, myAttributes, myContent)
    ].toH5;
  }
}
auto UIMDropdownItemControl() { return new DUIMDropdownDividerControl; }