@react.component
let make = (~children, ~height) =>
  <section className=`flex flex-col justify-between items-center mb-20 mt-2 ${height}`> children </section>
