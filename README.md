# Vision: a template for OSH projects

In this repository, we are building templates for elements of an open source hardware project.
The aim is to facilitate the work of designers and makers, helping them to easily create a documentation that grows with the project.

# How to use this template

We propose two ways to the creation of the documentation the full-template and the Incremental-template.
If you are early in the hardware design, we advice to use the incremental-template, where the documentation grows with the project.
If you are already a prototype, it might be easier and more satisfactory to use the full-template, filling the main readme and the 04_hardware folder at first, and (maybe) adding more information later on.
The accompanying book explains elements of the template in the order they are found in the full-template: <https://open-make.github.io/RHardware-minimaltemplate/>

## The Incremental-template

This version has one folder for each steps in the hardware projects, including elements that may or should be added to the documentation, and a checklist is provided to be able to follow the process.
The person or team documenting may simply start by coping the 01_ideation folder, and change content where asked.
When finished, they can go to the next step, copying files and adding elements to the readmes: the checklist will help them find elements they want to add.
It is good practice to review the documentation in the team at each step.
One can use forks and branches (when one is using a Git forge), if one want to go forward before the review of the team.

It is up to the team to decide what elements to add along the process.
It is also worth mentioning that while it is recommended to follow the steps in these orders, the process is very iterative in practice.
For example, the analysis of the existing project in step 3 is often redefining the project: it is often efficient to create rough elements at each steps, and refined them later.

> *Example*: Max has a first prototype already.
> He starts its documentation with the idea description, add the analysis of needs, then the concept development files.
> Finally, he is adding the product documentation related to its prototype.
> By asking for feedback along the process, Max did realize the ideation documentation is extremely helpful to present the project, especially outside his first collaborators circle and more people showed interest in the project.
> By making some requirement more explicit, Max could derive specific needs and therefore specific hardware functionalities the first prototype is lacking, Max hopes to find better solutions in the next prototype iteration.
> One year later, Max is leaving the project, but the project still lives as new maintainers with the same vision are developing it further.

# Project history and rational

Open source hardware projects documentation can be divided in at least two activities: documenting the product (manufacturing, assembly, use, maintenance and so on.) and documenting the process (project vision, collaborators, how to collaborate, design process).
This distinction can also be linked with the five [OSHWA defined freedom for OSH](https://freedomdefined.org/OSHW): **study**, **modify** being mostly related to the process; **make**, **distribute,** and **sell** being mostly related to the product.

On the other hand, an hardware project goes through several development steps, each of them deserving some specific documentation.
In the **ideation** phase, one should define the project vision and find collaborators.
In the **needs analysis** phase, the team is documenting their research on the definition of requirements and on the related existing projects.
In the **concept** phase, the team is describing some implementation possibilities.
In the **prototyping** phase, the team is iteratively designing a prototype, the product documentation is starting now, while the process documentation may be expanded as new collaborators comes in.
In the **replicator** phase, the prototype is moved to a market-ready product, and the documentation aimed at users and producers of hardware will become more important.

### Related projects

The content of the 04_hardware folder is loosely derived from <https://github.com/hoijui/osh-dir-std/tree/main> in discussion with one of the author.

## Growing documentation with project size

Using analyses of at several examples of hardware and software project, we derived a large amount of elements that may be included in an hardware project.
We then categorizing them following their goal (process or product documentation) and indicated whether it should be created or updated at different stage of development.

From this we created a template for the ideation stage, and provide a checklist of additional elements to add.
Templates for each additional elements are also provided.

# Roadmap and future work

We plan on providing template files and good guidelines in November 2024.
Then, we plan on testing them in specific projects (internal and external).
In early 2025, we created the full-template workflow, specifically for the LAUDS factories project.
We are now working on the book, including information from previous projects in that form.

We created a first archive on zenodo, while the book is not finished and some important issues are still open, but we hope to get a beta version very soon.

\
In the future, we hope to build some software to help with the additions instead of using a checklist.

## Community, Contributions funding

This was developed inside the LAUDS Factories and the Open.Make projects, based on results of the OpenNext project.

LAUDS Local Accessible Urban Digital Sustainable Factories is a Horizon Europe research and innovation action - Co-funded by the European Union, 2024-2026, GA 101135986

OpenNext has received funding from the European Union’s Horizon 2020 research and innovation programme under [grant agreement no. 869984](https://cordis.europa.eu/project/id/869984).

OpenMake is funded by the Federal Ministry of Education and Research (BMBF) and the state of Berlin under the Excellence Strategy of the Federal Government and the Länder / www.berlin-university-alliance.de

## Main contributors:

-   Julien Colomb: julien.colomb [at] fu-berlin.de
-   Sacha Hodencq
-   Jean-François Boujut
-   Robert Mies
-   Moritz Maxeiner
-   Michel Langhammer
