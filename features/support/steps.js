const { Given, When, Then } = require(`cucumber`);
const { expect } = require(`chai`);

const ourFunctions = require(`${process.cwd()}/adds_functions`);
let world = {};

Given(/there is (.*) function that can add two numbers/, (count, done) => {
  count = parseInt(count);
  const keys = Object.keys(ourFunctions);
  expect(keys.length).to.equal(count);
  done();
});

Given(/we have a function that can add two numbers called (.*)/, (functionName, done) => {
  expect(ourFunctions[functionName]).to.be.a(`function`);
  done();
});

Given(/we want to use (.*) as the (.*) number/, (number, place, done) => {
  world[place] = parseInt(number, 10);
  done();
});

When(/we add our numbers using the (.*) function/, (functionName, done) => {
  expect(world.first).to.be.a(`number`);
  expect(world.second).to.be.a(`number`);
  expect(ourFunctions[functionName]).to.be.a(`function`);
  world.result = ourFunctions[functionName](world.first, world.second);
  done();
});

Then(/the result should equal (.*)/, (value, done) => {
  expect(world.result).to.equal(parseInt(value, 10));
  done();
});