module Container = {
  @module("react-bootstrap/Container") @react.component
  external make: (~children: React.element) => React.element = "default"
}

module Navbar = {
  @module("react-bootstrap/Navbar") @react.component
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
  ) => React.element = "default"

  module Brand = {
    @module("react-bootstrap/Navbar") @react.component
    external make: (
      ~is: string=?,
      ~_as: string=?,
      ~href: string,
      ~children: React.element,
    ) => React.element = "default"
  }

  module Collapse = {
    @module("react-bootstrap/Navbar") @react.component
    external make: (~id: string=?, ~children: React.element) => React.element = "default"
  }

  module Toggle = {
    @module("react-bootstrap/Navbar") @react.component
    external make: (
      ~id: string=?,
      ~_as: string=?,
      ~children: React.element=?,
      ~label: string,
      ~ariaControls: string=?,
    ) => React.element = "default"
  }
}

module Nav = {
  @module("react-bootstrap/Nav") @react.component
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
  ) => React.element = "default"

  module Item = {
    @module("react-bootstrap/Navbar") @react.component
    external make: (~id: string=?, ~children: React.element, ~_as: string=?) => React.element =
      "default"
  }

  module Link = {
    @module("react-bootstrap/Navbar") @react.component
    external make: (
      ~id: string=?,
      ~children: React.element,
      ~_as: string=?,
      ~active: bool=?,
      ~disabled: bool=?,
      ~href: string,
    ) => React.element = "default"
  }
}
