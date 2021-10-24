@react.component
let make = (~children, ~height) =>
  <section className={`flex flex-col justify-between items-center mb-20 mt-5 ${height}`}>
    children
  </section>
