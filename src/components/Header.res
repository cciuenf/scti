type navbar = Display | Hide

type action = Toggle

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
    <Next.Link href> <a> {label->React.string} </a> </Next.Link>
  }
}

let toggleNavbarState = state =>
  switch state {
  | Display => Hide
  | Hide => Display
  }

let navbarReducer = (state, action) =>
  switch action {
  | Toggle => toggleNavbarState(state)
  }

@react.component
let make = () => {
  let (_state, _dispatch) = React.useReducer(navbarReducer, Hide)

  <header>
    <navbar role="navigation">
      <nav className="mr-auto">
        <Link href="/" label="Home" />
        {links->Render.map(({sectionId, label}, id) =>
          <Link href={sectionId} key={id->Render.toString} label />
        )}
      </nav>
    </navbar>
  </header>
}
