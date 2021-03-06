module uim.controls.lists.entities;

@safe: 
import uim.controls;

class DUIMEntitiesListControl : DUIMListControl {
  mixin(ControlThis!("UIMEntitiesListControl"));

  mixin(OProperty!("DOOPEntity[]", "entities"));
  mixin(OProperty!("DUIMEntityListItemControl", "templateControl"));

  override void initialize() {
    super.initialize;

    this
      .templateControl(UIMEntityListItem);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (auto itemControl = cast(DUIMEntityListItemControl)templateControl) {
      myContent = entities.map!(entity => itemControl.entity(entity).toH5(options)).join;
    }
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      BS5List(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMEntitiesListControl", "DUIMEntitiesListControl"));
mixin(ControlCalls!("UIMEntitiesList", "DUIMEntitiesListControl"));
