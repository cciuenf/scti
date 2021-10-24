@react.component
let make = () =>
  <Section height="h-3/6">
    <SectionHeader border=#left label=`Abrangência Temática` />
    <p className="font-bold text-3xl text-left ml-14 my-10">
      {`O referido evento abrangerá os seguintes temas:`->React.string}
    </p>
    <SectionParagraph>
      {`UX/UI Design, inteligência artificial/Machine, learning, criptografia, IOT (Internet das coisas), desenvolvimento de aplicativos, desenvolvimento de jogos, robótica, empreendedorismo, data science, realidade aumentada/Realidade virtual, Arduino/Raspberry PI, computação móvel, segurança da informação, startups, Design Thinking, acessibilidade/Usabilidade.`->React.string}
    </SectionParagraph>
  </Section>
