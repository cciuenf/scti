let symplaURL = "https://www.sympla.com.br/semana-da-ciencia-da-computacao-e-tecnologia-da-informacao--scti-2021__1263117"

module HeaderWrapper = {
  @react.component
  let make = (~children, ~sm=false) => {
    let baseStyles = " bg-no-repeat h-5/6 flex flex-col justify-around items-center"
    let styles =
      switch sm {
      | false => "bg-vector-1"
      | true => "bg-vector-1-sm"
      } ++
      baseStyles

    <header className={styles}> children </header>
  }
}

module Summary = {
  @react.component
  let make = () =>
    <main className="flex flex-col items-center justify-between h-3/5 w-full">
      <h1 className="text-white text-center font-semibold text-4xl leading-snug">
        {`11ª Semana de Ciência da Computação e Tecnologia da Informação`->React.string}
      </h1>
      <hr className="md:hidden border-2 border-white w-72" />
      <p className="text-white-2 text-center leading-snug w-4/5">
        {`Uma semana inteira de conteúdos, que acontecerá entre os dias 8 a 13 de novembro, sendo transmitido por uma plataforma privada no Discord!`->React.string}
      </p>
      <Next.Image
        src="/assets/images/welcome.svg"
        width="262"
        height="209"
        alt="Uma pessoa interagindo com seu notebook no colo, num evento presencial"
      />
    </main>
}

@react.component
let make = () => {
  let isSm = ReactUse.useMedia("(max-width: 640px)")

  <HeaderWrapper sm={isSm}>
    <Navbar /> <Summary /> <LinkButton href={symplaURL} label="Inscreva-se" />
  </HeaderWrapper>
}
