# Coq-Tooling-Project
An exploritary project using Dune &amp; Coq to build verified tooling from scratch

## Under Construction
Please both this README and this repo are under heavy initial construction, and thus will not be fully coherent in all places.

## Mission Statement
The Ur-instigator for this project was the want to design a programming language and / or proof assistant from scratch. Having thought about and made trial attempts I have come to the conclusion that to partake in such an undertaking would greatly benifift from setting up some tooling beforehand: both purely mathematical in terms of theories internalised in Gallenia and also in plugins and algorihms for Coq itself.

This project is thusly a self-contained attempt at building a `mathematics stack` based entirely on the `dune/ocaml/coq`stack with the eventual long-term goal of using just said stack to build a proof-assistant.

## Project Structure

### Layout of project
```
*
├─README.md
├─notes
├─┐project
  ├─dune
  ├─makefile
```
*	### `*/README.md`:
	The file you are currently reading 😊.
*	###	`*/notes`:
	This directory contains ad-hoc notes about various coq-related information. For example insights gained from backwards engenearing other projects. They are stored in this repo because the insghts generated are for use in my tooling-project 
*	### `*/project`:
	This directory is where all of the code / tooling made in the project lives you can think of `*/project/` as `*/src/` in a more conventional repository structure.

### Layout of `*/project/dune`:
This directory is the root of the dune-project that actually implements the tooling we set-out in the mission statement.
```
dune
├─dune-project
├─_build
├─┐module_interface
│ ├BASE
│ ├Conversions
├─theories
```
*	###	`module_interface`
	- This directory contains all the theory that provides the module based interface. Care has been taken to ensure that all the different `TODO`. As part of this effort all the conversions between different interfaces have been seperated into their own theories and into `module_interface/CONVERSIONS` where each conversion lives in its own theory `.v` file.
	
	- There is a strict naming convention followed throughout the module interface. It is as follow.
		
		- conversions from inteface `A` and `B` are named `A_OF_B`. This is 'shouty Ocaml syntax'

		### Why ALLCAPS? 
		- because these interfaces include names of interfaces that could alize with Coq/Galenia Keywords (notebly that of Type) the decision was made to make them all ALLCAPS. We Prefered 