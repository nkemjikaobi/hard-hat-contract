const { expect } = require('chai');
const { ethers } = require('hardhat');

describe('HelloWorld', function () {
	it("Should return the new name once it's changed", async function () {
		const HelloWorld = await ethers.getContractFactory('HelloWorld');
		const helloWorld = await HelloWorld.deploy('Obi Nkemjika Derick');
		await helloWorld.deployed();

		expect(await helloWorld.sayName()).to.equal('Obi Nkemjika Derick');

		const setNameTx = await helloWorld.setName('Jonathan Ross');

		// wait until the transaction is mined
		await setNameTx.wait();

		expect(await helloWorld.sayName()).to.equal('Jonathan Ross');
	});
});
