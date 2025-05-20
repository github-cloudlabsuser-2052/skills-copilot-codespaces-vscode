const data = [
  [
    { name: 'John', age: 25 },
    { name: 'Jane', age: 30 }
  ],
  [
    { name: 'Bob', age: 40 }
  ]
];

// Map through an array of arrays of objects
// Example: Extract names from the data array
// Desired outcome: ['John', 'Jane', 'Bob']
const names = data.flat().map(person => person.name);

console.log(names); // ['John', 'Jane', 'Bob']