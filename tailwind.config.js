const colors = require('tailwindcss/colors');

module.exports = {
  purge: {
    content: ['./src/**/*.res'],
    options: {
      safelist: ['html', 'body'],
    },
  },
  darkMode: false,
  theme: {
    extend: {
      height: {
        '5.2/6': '90%',
        '5.5/6': '93%',
        'mid-screen': '85vh',
        100: '28.516rem',
        150: '77.031rem'
      },
      width: {
        '5.5/6': '97.6%',
        104: '30.083rem',
        200: '125.625rem'
      },
      fontSize: {
        '4.5xl': '2.68rem'
      },
      colors: {
        blue: {
          DEFAULT: '#0C7DD8',
          2: '#4375E8',
          3: '#002644'
        },
        lilac: '#6D6BF1',
        purple: {
          DEFAULT: '#A94EF1',
          2: '#CD24E8'
        },
        magenta: '#CD24E8',
        red: '#F34343',
        gray: '#EBF0F1',
        white: {
          DEFAULT: colors.white,
          2: '#F0F8FF'
        }
      },
      backgroundSize: {
        '100%': '100%'
      }
    },
    backgroundImage: {
      'vector-1': 'url("/assets/geometry/landing/vector_1.svg")',
      'vector-1-sm': 'url("/assets/geometry/landing/vector_1_mobile.svg")'
    },
    fontSize: {
      xs: '.75rem',
      sm: '.875rem',
      base: '1rem',
      lg: '1.125rem',
      xl: '1.25rem',
      '2xl': '1.5rem',
      '3xl': '1.875rem',
      '4xl': '2.25rem',
      '5xl': '3rem',
      '6xl': '4rem',
    },
    fontFamily: {
      serif: ['Spartan']
    },
  },
  variants: {
    width: ['responsive'],
    linearGradients: ['hover', 'responsive']
  }
};
