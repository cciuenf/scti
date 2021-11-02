// tudo isso vai definitivamente pra um server, algum dia -_-
// corno job demais

type speakerMedia = {github: option<string>, instagram: option<string>, twitter: option<string>}
type speaker = {name: string, img: string, media: speakerMedia}

type data = {number: int, day: string}

type talk = {title: string, description: string, time: string, speakers: array<speaker>, data: data}

let basePath = "/assets/images/speakers"

let days = [
  {number: 1, day: "08"},
  {number: 2, day: "09"},
  {number: 3, day: "10"},
  {number: 4, day: "11"},
  {number: 5, day: "12"},
  {number: 6, day: "13"},
]

let adolfo = {
  name: "Adolfo Neto",
  img: basePath ++ "/adolfo.jpeg",
  media: {instagram: None, github: Some("adolfont"), twitter: Some("adolfont")},
}

let alexandre = {
  name: "Alexandre Werneck",
  img: basePath ++ "/alexandre.jpeg",
  media: {instagram: None, github: Some("xanwerneck"), twitter: Some("xanwerneck")},
}

let augusto = {
  name: "Augusto Amaral",
  img: basePath ++ "/augusto.jpeg",
  media: {instagram: None, github: Some("AugustoAmaral"), twitter: None},
}

let brandon = {
  name: "Brandon Carvalho",
  img: basePath ++ "/brandon.jpeg",
  media: {instagram: None, github: Some("CarvalhoBr"), twitter: None},
}

let isa = {
  name: "Isabela Correia",
  img: basePath ++ "/isabela.jpeg",
  media: {instagram: Some("isacoper"), github: Some("isacoper"), twitter: None},
}

let jennifer = {
  name: "Jeniffer Bittencourt",
  img: basePath ++ "/jeniffer.jpeg",
  media: {
    instagram: Some("jeniblo_dev"),
    github: Some("jeniblodev"),
    twitter: Some("jeniblo_dev"),
  },
}

let matheus = {
  name: "Matheus Gonçalves",
  img: basePath ++ "/matheus.jpeg",
  media: {instagram: None, github: Some("matheus1lva"), twitter: Some("matheus1lva")},
}

let mila = {
  name: "Camila Laranjeira",
  img: basePath ++ "/camila.jpg",
  media: {
    instagram: Some("canalpeixebabel"),
    github: Some("peixebabel"),
    twitter: Some("milalaranjeira"),
  },
}

let mirella = {
  name: "Mirella Queiroz",
  img: basePath ++ "/mirella.jpeg",
  media: {instagram: None, github: Some("QueirozMirella"), twitter: None},
}

let polvo = {
  name: "Pedro Castilho",
  img: basePath ++ "/castilho.jpeg",
  media: {instagram: None, github: Some("coproduto"), twitter: Some("coproduto")},
}

let rhuan = {
  name: "Rhuan Samary",
  img: basePath ++ "/rhuan.jpeg",
  media: {instagram: None, github: Some("rhuanbarreto"), twitter: None},
}

let vinicius = {
  name: "Vinicius Barcelos",
  img: basePath ++ "/vinicius.jpg",
  media: {instagram: None, github: None, twitter: None},
}

let talks: array<talk> = [
  {
    title: `O que aprendi durante o processo de transição de carreira`,
    description: `Palestra sobre transição de carreira e algumas dicas pra quem tá iniciando nesse universo da programação`,
    time: "18h00",
    speakers: [jennifer],
    data: days[0],
  },
  {
    title: "Git Made Easy: um guia para facilitar seu dia a dia",
    description: `Começar algo novo pode causar estranhamento e as vezes até medo. Todo iniciante na programação já cometeu o deslize de deixar seus códigos armazenados apenas na sua máquina e fazer aquele famoso copy e paste na hora de compartilhá-lo com um colega. Vamos transformar isso? O Git é uma ferramenta poderosa que vai facilitar nosso dia a dia e permitir que trabalhemos em conjunto com outros programadores. Chega de Ctrl+S, commitar tudo na master ou ficar com medo de quebrar um repositório. Vamos dar o primeiro passo pra versionar a vida. Vem comigo que vou te ensinar tudo que você precisa saber sobre Git, Github e Gitflow de uma forma fácil e prática.`,
    time: "19h30",
    speakers: [isa],
    data: days[0],
  },
  {
    title: `Elixir, a linguagem de programação brasileira utilizada no mundo todo`,
    description: `Uma breve introdução à linguagem Elixir. Vamos conhecer as principais características da linguagem e porque ela é boa até mesmo para iniciantes em programação.`,
    time: "18h00",
    speakers: [adolfo],
    data: days[1],
  },
  {
    title: "Coding recommendations usando TypeScript em frameworks FE",
    description: `Neste workshop vamos apresentar algumas recomendações de code quality utilizando os princípios solid, e padrões de projeto para desafios na área de engenharia de software.`,
    time: "19h30",
    speakers: [alexandre],
    data: days[1],
  },
  {
    title: `Ética em inteligência artificial`,
    description: `Com a tecnologia se tornando cada vez mais pervasiva na sociedade, vemos ferramentas como o Reconhecimento Facial sendo aplicadas indiscriminadamente. Em muitos casos, levando a consequências indesejadas, como a ainda maior marginalização de comunidades. É cada vez mais essencial levantar o debate de critérios de Justiça, Responsabilidade e Transparência em sistemas automáticos. Vamos discutir nessa palestra o cenário atual e as perspectivas de futuro para a IA.`,
    time: "18h00",
    speakers: [mila],
    data: days[2],
  },
  {
    title: "Oracle Cloud",
    description: `A Oracle, uma das principais empresas de tecnologia do mundo, desenvolveu a sua infraestrutura de Computação em Nuvem, a Oracle Cloud Infrastructure (OCI). Visando chamar a atenção dos profissionais de TI, conquistar mercado e conseguir competir contra empresas já consolidadas na Cloud, como Amazon, Microsoft e Google, a Oracle lança um programa chamado Always Free, fornecendo vários recursos de forma gratuita, com destaque para 2 máquinas virtuais e 2 bancos de dados Oracle gratuitos para sempre na nuvem para os usuários. O objetivo desse minicurso é falar um pouco sobre Computação em Nuvem e mostrar aos alunos como podemos utilizar esses recursos gratuitos que a Oracle oferece, possibilitando aos alunos a utilização desses recursos para pequenos projetos, tais como TCC, sem custos adicionais.`,
    time: "18h00",
    speakers: [vinicius],
    data: days[2],
  },
  {
    title: "Mercado de Trabalho - Oportunidade Internacional, começar sua startup ou trabalhar no Brasil para o exterior?",
    description: `O mercado de TI nunca esteve tão aquecido. O cenário de startups também. Hoje após a pandemia, não importa mais onde um programador trabalha. O que você vai querer pro futuro? Vou contar um pouco da minha experiência e as minhas falhas e sucessos que me fizeram chegar a trabalhar em uma das empresas mais importantes de data ops industrial do mundo.`,
    time: "18h00",
    speakers: [augusto, rhuan],
    data: days[3],
  },
  {
    title: "Blockchain e o mundo defi",
    description: `Aprenderemos sobre blockchain, tecnologia que está alterando a maneira como lidamos com dados, acessos e identificação, economia e com a internet! Aprenderemos também conceitos de Dapps (aplicativos decentralizados) e finanças decentralizadas (Defi)`,
    time: "19h30",
    speakers: [matheus],
    data: days[3],
  },
  {
    title: "Do Hackaton a Startup, por onde começar?",
    description: `Iremos contar um pouco sobre nossas experiências no hacking rio e todo o caminho até se tornar uma empresa e um pouco sobre os desafios, barreiras e oportunidades que surgiram durante a jornada.`,
    time: "18h00",
    speakers: [augusto, mirella],
    data: days[4],
  },
  {
    title: "Desenvolvimento de aplicações serverless",
    description: `O serverless é um modelo de desenvolvimento de aplicações que abstrai o gerenciamento dos servidores para o provedor da nuvem, permitindo ao desenvolvedor a construção de aplicações escaláveis e autogerenciadas

Nesse workshop será abordado o desenvolvimento de aplicações serverless(Faas), mostrando os diferentes tipos de funções que podem ser criadas e suas aplicações, bem como as vantagens e desvantagens desse modelo perante a administrar sua própria infraestrutura.`,
    time: "19h30",
    speakers: [brandon],
    data: days[4],
  },
  {
    title: `Haskell: Programação Funcional Preguiçosa`,
    description: `A linguagem Haskell é uma das linguagens funcionais mais conhecidas do mundo e demonstra vários conceitos incomuns como a programação usando de ideias algébricas e a computação preguiçosa.

Neste workshop, daremos uma introdução a todo o poder desta linguagem funcional.`,
    time: "14h00",
    speakers: [polvo],
    data: days[5],
  },
]
