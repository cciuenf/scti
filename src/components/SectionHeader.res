type position = [#center | #left]

@react.component
let make = (~border: position, ~label) => {
  let borderPosition = switch border {
  | #center => "items-center"
  | #left => "items-start"
  }

  <div className={`flex flex-col justify-center mr-40 ${borderPosition}`}>
    <hr className="w-40 border-gradient" />
    <h1 className="text-blue-2 font-semibold text-5xl mt-4"> {label->React.string} </h1>
  </div>
}
