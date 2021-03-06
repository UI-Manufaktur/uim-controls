module uim.controls.breadcrumbs.item;

@safe: 
import uim.controls;

class DUIMBreadcrumbItemControl : DUIMControl {
  mixin(ControlThis!("UIMBreadcrumbItemControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["breadcrumb-item"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    if (active) {
      myClasses ~= ["active"];
      myAttributes["aria-current"] = "page"; 
    }

    return results~
      H5Li(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMBreadcrumbItemControl", "DUIMBreadcrumbItemControl"));
mixin(ControlCalls!("UIMBreadcrumbItem", "DUIMBreadcrumbItemControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMBreadcrumbItem);

    auto control = UIMBreadcrumbItem;
    // TODO
  }
}
