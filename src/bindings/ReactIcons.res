module Bi = {
  module ChevronLeft = {
    @module("react-icons/bi") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element =
      "BiChevronLeft"
  }

  module ChevronRight = {
    @module("react-icons/bi") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element =
      "BiChevronRight"
  }
}

module Fi = {
  module Facebook = {
    @module("react-icons/fi") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element =
      "FiFacebook"
  }
  module Instagram = {
    @module("react-icons/fi") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element =
      "FiInstagram"
  }
  module MapPin = {
    @module("react-icons/fi") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element =
      "FiMapPin"
  }

  module Phone = {
    @module("react-icons/fi") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element =
      "FiPhone"
  }
  module Mail = {
    @module("react-icons/fi") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element = "FiMail"
  }
}

module Fa = {
  module Discord = {
    @module("react-icons/fa") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element =
      "FaDiscord"
  }
}

module Im = {
  module Github = {
    @module("react-icons/im") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element =
      "ImGithub"
  }

  module Twitter = {
    @module("react-icons/im") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element =
      "ImTwitter"
  }
}

module Ai = {
  module Youtube = {
    @module("react-icons/ai") @react.component
    external make: (~title: string=?, ~color: string=?, ~size: string=?) => React.element =
      "AiFillYoutube"
  }
}
