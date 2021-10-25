@react.component
let make = (~children, ~weight="normal", ~align="left") =>
  <p className={`font-${weight} text-${align} text-3xl w-5/6`}> children </p>
