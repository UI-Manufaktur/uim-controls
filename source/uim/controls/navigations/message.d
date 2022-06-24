module uim.controls.navigations.messages;

@safe: 
import uim.controls;

class DUIMMessagesControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("DH5Obj[]", "items"));
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string[]", "visibility"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("string", "color"));
  mixin(OProperty!("string", "ariaLabel"));

  override void initialize() {
    super.initialize;

    this
      .icon("bell");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    if (visibility) {
      return [
        H5Div(visibility, 
          H5Div(["nav-item dropdown d-none d-md-flex me-3"], 
            H5A(["nav-link px-0"], ["href":"#","data-bs-toggle":"dropdown", "tabindex":"-1", "aria-label":ariaLabel],
              tablerIcon(icon)~BS5Badge([color]).toString
            ),
            BS5DropdownMenu(["dropdown-menu-arrow dropdown-menu-end dropdown-menu-card"], 
              BS5Card(
                H5Div(["card-header"], 
                  H5H3(["card-title"], title)),
                BS5ListGroup(["list-group-flush list-group-hoverable"], items))
              )
            )
        )
      ].toH5;
    }
    // else 
    return [
      H5Div(["nav-item dropdown d-none d-md-flex me-3"], 
        H5A(["nav-link px-0"], ["href":"#","data-bs-toggle":"dropdown", "tabindex":"-1", "aria-label":ariaLabel],
          tablerIcon(icon)~BS5Badge([color]).toString
        ),
        BS5DropdownMenu(["dropdown-menu-arrow dropdown-menu-end dropdown-menu-card"], 
          BS5Card(
            H5Div(["card-header"], 
              H5H3(["card-title"], title)),
            BS5ListGroup(["list-group-flush list-group-hoverable"], items))
          )
        )
    ].toH5;
  }
}
auto UIMMessagesControl() { return new DUIMMessagesControl; }