module Container = {
  @module @react.component
  external make: (~children: React.element) => React.element = "react-bootstrap/Container"
}

module Navbar = {
  @module @react.component
  external make: (
    ~id: string=?,
    ~_as: string=?,
    ~children: React.element,
    ~bg: string=?,
    ~expand: [#sm | #md | #lg | #xl | #xxl],
    ~expanded: bool=?,
    ~fixed: [#top | #bottom],
    ~role: string,
    ~variant: [#light | #dark],
    ~collapseOnSelect: bool=?,
    ~sticky: string=?,
  ) => React.element = "react-bootstrap/Navbar"

  module Brand = {
    @module @react.component
    external make: (
      ~is: string=?,
      ~_as: string=?,
      ~href: string,
      ~children: React.element,
    ) => React.element = "react-bootstrap/NavbarBrand"
  }

  module Collapse = {
    @module @react.component
    external make: (~id: string=?, ~children: React.element) => React.element =
      "react-bootstrap/NavbarCollapse"
  }

  module Toggle = {
    @module @react.component
    external make: (
      ~id: string=?,
      ~_as: string=?,
      ~children: React.element=?,
      ~label: string,
      ~\"aria-controls": string=?,
    ) => React.element = "react-bootstrap/NavbarToggle"
  }
}

module Nav = {
  @module @react.component
  external make: (
    ~id: string=?,
    ~className: string=?,
    ~activeKey: int=?,
    ~navbarScroll: bool=?,
    ~_as: string=?,
    ~fill: bool=?,
    ~justify: bool=?,
    ~navbar: bool=?,
    ~role: string=?,
    ~variant: [#light | #dark],
    ~children: React.element,
  ) => React.element = "react-bootstrap/Nav"

  module Item = {
    @module @react.component
    external make: (~id: string=?, ~children: React.element, ~_as: string=?) => React.element =
      "react-bootstrap/NavItem"
  }

  module Link = {
    @module @react.component
    external make: (
      ~id: string=?,
      ~children: React.element,
      ~_as: string=?,
      ~active: bool=?,
      ~disabled: bool=?,
      ~href: string,
    ) => React.element = "react-bootstrap/NavLink"
  }
}
