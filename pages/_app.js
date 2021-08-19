import Head from "next/head";
import ReScriptApp from "../src/App.mjs";

export default function App(props) {
  return (
    <>
      <Head>
        <title>
          SCTI 2021
        </title>
        <meta name="keywords" content="scti, computação, tecnologia, uenf" />
        <meta name="robots" content="index, follow" />
        <meta httpEquiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="language" content="Portuguese" />
        <meta name="author" content="Pedro Leal, Diana de Sales, Ian Louzada, Guilherme Tavares, Luis Fernando Peixotom, Matheus Pessanha" />
        <meta
          name="description"
          content="Website da Semana Acadêmica de Ciência da Computação e Tecnologia da Informação da Universidade Estadual do Norte Fluminense Darcy Ribeiro - UENF. Saiba mais sobre um dos melhores eventos de tecnologia da região."
        />
        <meta property="og:url" content="https://scti.uenf.br" />
        <meta property="og:type" content="website" />
        <meta
          property="og:title"
          content="SCTI 2021 | Semana Acadêmica de Ciência da Computação e Tecnologia da Informação da Universidade Estadual do Norte Fluminense Darcy Ribeiro"
        />
        <meta
          property="og:description"
          content="Website da Semana Acadêmica de Ciência da Computação e Tecnologia da Informação da Universidade Estadual do Norte Fluminense Darcy Ribeiro - UENF. Saiba mais sobre um dos melhores eventos de tecnologia da região."
        />
        <meta
          property="og:image"
          content="https://scti.uenf.br/assets/logo_2021.png"
        />
      </Head>

      <ReScriptApp {...props} />
    </>
  );
}
