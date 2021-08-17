open Bootstrap

type link = {
  sectionId: string,
  label: string,
}

let links = [
  {
    sectionId: "#sec-sobre",
    label: "Sobre",
  },
  {
    sectionId: "#programacao",
    label: "Programação",
  },
  {
    sectionId: "#sec-apoio",
    label: "Apoio",
  },
  {
    sectionId: "#sec-contato",
    label: "Contato",
  },
]

module Link = {
  @react.component
  let make = (~label, ~href) => {
    <Nav.Link href> {label->React.string} </Nav.Link>
  }
}

@react.component
let make = () => {
  <header>
    <Navbar expand=#lg variant=#dark fixed=#top role="navigation">
      <Navbar.Brand href="/"> {"SCTI"->React.string} </Navbar.Brand>
      <Navbar.Toggle label="Toggle navigation" ariaControls="navbarDropdown" />
      <Navbar.Collapse id="navbarDropdown">
        <Nav navbar=true justify=true variant=#dark className="mr-auto" navbarScroll=true>
          <Nav.Link href="/" active=true> {"Home"->React.string} </Nav.Link>
          {links->Render.map(({sectionId, label}, id) =>
            <Link href={sectionId} key={id->Render.toString} label />
          )}
        </Nav>
      </Navbar.Collapse>
    </Navbar>
  </header>
}
