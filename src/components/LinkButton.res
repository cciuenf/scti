@react.component
let make = (~href, ~label) => {
  let divStyles = Helpers.mergeStyles([
    "rounded-full",
    "w-72",
    "h-20",
    "inline-flex",
    "items-center",
    "justify-center",
  ])

  let linkStyles = Helpers.mergeStyles([
    "flex",
    "justify-center",
    "items-center",
    "rounded-full",
    "bg-white",
    "w-5.5/6",
    "h-5.5/6",
  ])

  <div className={divStyles} id="button-link-container">
    <a href className={linkStyles} id="button-link">
      <span className="text-blue text-center font-light"> {label->React.string} </span>
    </a>
  </div>
}
