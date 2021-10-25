@react.component
let make = () =>
  <Section height="h-screen">
    <SectionHeader border=#left label=`Período e local de realização` />
    <div className="relative">
      <span className="absolute">
        <Next.Image width="280" height="280" src="/assets/geometry/landing/vector_4_2.svg" />
      </span>
      <span> <Next.Image width="260" height="260" src="/assets/images/period.svg" /> </span>
    </div>
    <SectionParagraph>
      {`O evento será realizado, em novembro de 2021 do dia 08 a 13, hospedado num servidor privado da plataforma Discord. Palestras e minicursos ocorrerão de 08 a 12 de novembro. No dia 13 será realizada uma competição de programação online.`->React.string}
    </SectionParagraph>
    <Next.Image width="260" height="260" src="/assets/images/hands.svg" />
  </Section>
