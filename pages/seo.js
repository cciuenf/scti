import React from "react";
import { CourseJsonLd, ProductJsonLd } from "next-seo";

const JSONSchema = () => (
  <>
    <CourseJsonLd
      courseName="SCTI 2021"
      providerName="Pedro Leal, Diana de Sales, Ian Louzada, Guilherme Tavares, Luis Fernando Peixoto e Matheus Pessanha"
      providerUrl="https://scti.uenf.br"
      description="Semana Acadêmica de Ciência da Computação e Tecnologia da Informação da Universidade Estadual do Norte Fluminense Darcy Ribeiro - UENF. Saiba mais sobre um dos melhores eventos de tecnologia da região!"
    />
    <ProductJsonLd
      courseName="SCTI 2021"
      images={[]}
      description="Semana Acadêmica de Ciência da Computação e Tecnologia da Informação da Universidade Estadual do Norte Fluminense Darcy Ribeiro - UENF. Saiba mais sobre um dos melhores eventos de tecnologia da região!"
      brand="SCTI"
      reviews={[]}
      mpn="scti2021"
      sku="scti2021"
    />
  </>
);


export default JSONSchema;
