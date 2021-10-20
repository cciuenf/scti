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
    label: `Programação`,
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

let toggleNavbarState = state =>
  switch state {
  | Display => Hide
  | Hide => Display
  }

let navbarReducer = (state, action) =>
  switch action {
  | Toggle => toggleNavbarState(state)
  }

module Link = {
  @react.component
  let make = (~label, ~href) => {
    let baseStyles = "my-6 ml-4 hover:bg-gray rounded-3xl p-4 text-left cursor-pointer"
    let mdStyles = Helpers.mergeStyles([
      "border-b-2",
      "border-transparent",
      "hover:border-white",
      "md:hover:bg-transparent",
      "md:rounded-none",
      "mx-10",
      "transition",
      "duration-500",
    ])

    <li className={baseStyles ++ " " ++ mdStyles}>
      <Next.Link href>
        <a className="text-3xl text-blue md:text-white-2"> {label->React.string} </a>
      </Next.Link>
    </li>
  }
}

module Menu = {
  @react.component
  let make = () => {
    let mdStyles = "md:flex md:justify-evenly"

    <ul className={`p-4 ${mdStyles}`}>
      {links->Render.map(({sectionId, label}, id) =>
        <Link href={sectionId} key={id->Render.toString} label />
      )}
    </ul>
  }
}

@react.component
let make = () => {
  let mobilemenuRef = React.useRef(Js.Nullable.null)
  let (state, dispatch) = React.useReducer(navbarReducer, Hide)

  ReactUse.useClickAway(mobilemenuRef, _e => dispatch(Toggle))

  let mobilemenuDomRef = ReactDOM.Ref.domRef(mobilemenuRef)

  <navbar role="navigation" className="w-full">
    <nav
      className="flex flex-wrap px-6 text-lg items-center w-full justify-around md:justify-center">
      <div className="-ml-20 md:ml-0">
        <Next.Image width="260" height="50" src="/assets/logo.svg" alt="Logo SCTI" />
      </div>
      <button className="md:hidden block" onClick={_e => dispatch(Toggle)}>
        <Next.Image
          width="37" height="37" src="/assets/navbar_hamburguer.svg" alt="Hamburguer menu icon"
        />
      </button>
      <div className="flex items-center justify-evenly hidden md:block"> <Menu /> </div>
      {switch state {
      | Display => <div className="md:hidden mobile-menu" ref={mobilemenuDomRef}> <Menu /> </div>
      | Hide => React.null
      }}
    </nav>
  </navbar>
}
