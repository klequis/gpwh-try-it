min3 = val1 => val2 => val3  => Math.min(val1, val2, val3)

const a = min3(1)
const b = a(2)
const c = b(3)
console.log(`The smallest is ${c}`)
// The smallest is 1