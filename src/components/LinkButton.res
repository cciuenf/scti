@react.component
let make = (~href, ~label) => {
  let divStyles = Helpers.mergeStyles([
    "bg-gradient-to-r", 
    "from-blue-2", 
    "to-purple", 
    "rounded-full", 
    "w-72", 
    "h-20",
    "inline-flex",
    "items-center",
    "justify-center"
  ])

  let linkStyles = Helpers.mergeStyles([
    "flex", 
    "justify-center", 
    "items-center", 
    "ml-px",
    "rounded-full", 
    "bg-white", 
    "w-5.5/6",
    "h-5.5/6"
  ])

  <div className={divStyles}>
    <a href className={linkStyles} id="button-link">
      <span className="text-blue text-center font-light">
        {label->React.string}
      </span> 
    </a>
  </div>
}
