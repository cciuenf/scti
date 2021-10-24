@react.component
let make = () =>
  <Section height="h-md-screen">
    <SectionHeader border=#center label="Seja um apoiador" />
    <SectionParagraph weight="light" align="center">
      {`Atualmente, a SCTI é um dos maiores e melhores eventos na área de computação e tecnologia da informação das regiões Norte e Noroeste Fluminense, sendo realizada sem fins lucrativos. O evento conta com toda estrutura e tradição da Universidade Estadual do Norte Fluminense Darcy Ribeiro (UENF), que possui em torno de cinco mil alunos de Graduação e Pós-Graduação.`->React.string}
    </SectionParagraph>
    <SectionParagraph weight="light" align="center">
      {`Associar uma marca ao SCTI equivale a associar uma marca ao cotidiano de um público diferenciado em ascensão, especializado e formador de opinião, dentro de uma das regiões mais ricas do país. Além de evidenciar o perfil sócio-educacional e inovador adotado pela empresa junto a sociedade.`->React.string}
    </SectionParagraph>
    <LinkButton href="#contato" label="Contato" />
  </Section>
