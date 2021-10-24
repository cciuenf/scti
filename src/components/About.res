@react.component
let make = () => {
  <Section height="h-mid-screen">
    <SectionHeader label="Sobre o evento" border=#left />
    <SectionParagraph>
      {`A 11ª Semana de Ciência da Computação e Tecnologia da Informação (SCTI 2021) tem como principais objetivos o aprimoramento técnico-científico dos participantes e a difusão das novas tecnologias na área de Computação e Sistemas de Informação. O maior objetivo do evento é expor a seus participantes a dinâmica existente no mundo empresarial da computação ou que necessitam desta área em seu meio.`->React.string}
    </SectionParagraph>
    <Next.Image
      src="/assets/images/themes.svg"
      width="289"
      height="289"
      alt=`A imagem mostra um ícone de um computador, que é rodeado de três diferentes níveis, cada nível com diferentes ícones que representam várias tecnologias`
    />
  </Section>
}
