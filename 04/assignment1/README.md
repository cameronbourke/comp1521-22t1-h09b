Assn 1
=======================================

> Poll: Have people had a look at the spec?

[ ] Play a game by running `./mipstermind`.

- Remember, there can be repetititons: `5 2 5 2`.

[ ] Look at spec (in particular Assumptions & Clarifications)

- 🧪 Your functions may be tested individually!

### 👋 Hello psuedo instructions for the stack!

> Poll: Have we seen the new psuedo instructions?

> Go to `../misc/psuedo_stack_instr.s`

- Remember that `begin`, `end`, `push`, `pop` are psuedo instructions
	and only available when run with `$ mipsy`. It will not work with `spim`.

[ ] Look through source `C` and `MIPS` files.

[ ] Look at [MIPS style guide](https://jashankj.space/notes/cse-comp1521-better-assembly/)

- Remember to set your tab width to 8! (not 8! factorial lol).

[ ] Go over tips

### Tips

- Start early.
- First, understand how the game works!
- Then, get comfortable with reference `C` implementation.
	- play around with `./mipstermind`!
- Make sure to pass `mipsetermind.s` as the last arg.
	- i.e `$ mipsy normal.s mipstermind.s`
- Take a look at all the constants before getting started!
- Implement what the `C` code does verbatim. Don't try and optimise!
- Think about whether you need `$s` or `$t` registers for local variables.
	- Handy [flow diagram](../imgs/reg_flow_dia.png) to help you decide!
- Don't forget to commit (using `git`) after each subset is working correctly! 
	- also good idea to `give` after completing each subset.
- Check that you are calculating the correct memory address.
- Don't forget to store any updated element(s) back to the array!
	- ie. ```asm
				lw		$t0, ($s0)
				addi	$t0, $s1, 1
				sw		$t0, ($s0) <- DON'T FORGET
				```
- Debugging
	- Make incremental change and then test it works.
	- Skip sections of code using `j` instruction.
	- Try and get comfortable with `mipsy`,
		as well as [mipsy web](https://cs1521.web.cse.unsw.edu.au/mipsy/)
