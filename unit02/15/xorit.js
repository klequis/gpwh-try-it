// a = [true, true, false]

// let obj = { t: 0, f: 0 }
// for (let i = 0; i < a.length; i++) {
//   if (a[i]) {
//     obj = { t: obj.t + 1, f: obj.f }
//   } else {
//     obj = { t: obj.t, f: obj.f + 1 }
//   }
// }
// console.log('a', obj)

const addit = (arr, o) => {

  if (arr[0]) {
    return { t: o.t + 1, f: o.f }
  } else {
    return { t: o.t, f: o.f + 1 }
  }
}

const sumit = arr => {
  let z = { t: 0, f: 0 }
  arr.forEach(x => addit(x, z))
  return z
}

const m = sumit([true, true])
console.log(m)



// bitList
bitList = [
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, False, False, True], [False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, True], [False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True
  ]
]

a = "1\a\a\ETX"


padBits = [
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, True, False, True, False, False, True, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ]
]

plaintextBits = [
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, False, False, True, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, True, True, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, True, True, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, True, True
  ]
]

a = [
  (
    [
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, True, False, True, False, False, True, True
    ],
    [
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, False, False, True, False
    ]
  ),
  (
    [
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
    ],
    [
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, True, True, True
    ]
  ),
  (
    [
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
    ],
    [
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, True, True, True
    ]
  ),
  (
    [
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
    ],
    [
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
      False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, True, True
    ]
  )
]

// ---------------------------------------------

mm = [
  False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
  False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
  False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, False, False, True
]

b = [
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, False, False, False, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True
  ]
]





















applyOTPPrime = [
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, True, True, False, False, False, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True
  ]
]


map charToBits "Shhhhhh" = [
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, True, False, True, False, False, True, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, False, False
  ]
]

map charToBits "book"[
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, True, True, False, False, False, True, False
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, True, True, False, True, True, True, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, True, True, False, True, True, True, True
  ],
  [
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False,
    False, False, False, False, False, False, False, False, False, False, True, True, False, True, False, True, True
  ]
]





























