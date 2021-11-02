open Speakers

module Array = Belt.Array
module Option = Belt.Option

module ControlLeft = ReactIcons.Bi.ChevronLeft
module ControlRight = ReactIcons.Bi.ChevronRight

module Instagram = ReactIcons.Fi.Instagram
module Github = ReactIcons.Im.Github
module Twitter = ReactIcons.Im.Twitter

module Profile = {
  module ProfileImg = {
    @react.component
    let make = (~src) =>
      <svg
        width="114"
        height="147"
        viewBox="0 0 114 147"
        fill="none"
        xmlns="http://www.w3.org/2000/svg">
        <path
          d="M107.18 32.4785L113.916 107.727C114.969 119.487 106.036 130.219 92.6505 133.276L36.2882 146.148C17.9823 150.329 -8.2849e-07 138.591 0 122.462L5.02996e-06 24.5353C5.84075e-06 8.75025 17.2685 -2.924 35.3366 0.646242L84.9627 10.4523C97.2273 12.8758 106.223 21.7945 107.18 32.4785Z"
          fill="url(#pattern0)"
        />
        <defs>
          <pattern id="pattern0" patternContentUnits="objectBoundingBox" width="1" height="1">
            <use href="#image0_87:805" transform="translate(-0.144737) scale(0.00322368 0.0025)" />
          </pattern>
          <image id="image0_87:805" width="400" height="400" href={src} />
        </defs>
      </svg>
  }

  @react.component
  let make = (~speaker) =>
    <div className="flex flex-col justify-between items-center">
      <ProfileImg src={speaker.img} />
      <p> {speaker.name->React.string} </p>
      <div> <span> <Instagram /> </span> <span> <Github /> </span> <span> <Twitter /> </span> </div>
    </div>
}

module Talk = {
  let reactSpeakers = speakers =>
    Array.mapWithIndex(speakers, (i, speaker) =>
      <Profile key={Belt.Int.toString(i)} speaker={speaker} />
    )

  @react.component
  let make = (~talk) =>
    <div className="flex flex-col justify-between items-center">
      <div> {React.array(talk.speakers->reactSpeakers)} </div>
      <h2> {talk.title->React.string} </h2>
      <span> {talk.time->React.string} </span>
      <p> {talk.description->React.string} </p>
    </div>
}

module Controls = {
  type action = Prev | Next
  type state = {current: data, all: array<data>}

  let changeCurrent = (days, f) => Array.getBy(days, f)

  let controlsReducer = (state, action) => {
    let {current, all} = state

    switch action {
      | Prev => {current: changeCurrent(all, (d) => d.number == current.number - 1)->Option.getExn(), all: all}
      | Next => {current: changeCurrent(all, (d) => d.number == current.number + 1)->Option.getExn(), all: all}
    }
  }

  @react.component
  let make = (~days) => {
    let (state, dispatch) = React.useReducer(controlsReducer, {current: Array.getExn(days, 0), all: days})

    <div className="flex justify-between items-center w-full h-3/4">
      <span className="bg-control-l bg-no-repeat"> <ControlLeft size="35" color="white" /> </span>
      <div className="flex flex-col justify-center items-center">
        <p className="text-blue text-center text-4xl uppercase font-bold"> {`${Belt.Int.toString(state.current.number)}° dia`->React.string} </p>
        <p className="text-blue text-center text-2xl font-normal"> {`${state.current.day} de novembro`->React.string} </p>
      </div>
      <span className="bg-control-r bg-no-repeat"> <ControlRight size="35" color="white" /> </span>
    </div>
  }
}

@react.component
let make = () =>
  <Section height="h-mid-screen">
    <SectionHeader border=#center label=`Programação` />
    <Controls days={Speakers.days} />
  </Section>
