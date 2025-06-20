# Open source hardware documentation toolkit

> This repository home is on codeberg, it is mirrored on github, where the book is deployed.
> Please prefer the codeberg repository to open issues.

## Vision: making documenting OSH projects easier.

We want to\
facilitate the work of designers and makers, helping them to easily create a documentation that grows with their project.
\
The documentation should ease collaborative design work, and facilitate the reuse of the OSH

## Metadata

-   development stage: first stable version of the guide, tests ongoing
-   license: CC-BY , the (unique) code file is shared under a MIT license.\

## Main outputs

-   Our guide developed inside the folder 91_Explanation_book and visible at <https://open-make.github.io/RHardware-minimaltemplate/>
-   Templates (full or incremental versions) are accompanying the guide. Refer to the guide for a description of how to use this template.

## Problem description

People building hardware do not know how to document their work.
There is no standard way to do it, and no standard list of elements that should be documented.
Based of previous analysis, Julien Colomb has built a first version of a guide, and we hope the communities will now test, enhance and critic this work.

> *Example*: Max has a first prototype already.
> He starts its documentation with the idea description, add the analysis of needs, then the concept development files.
> Finally, he is adding the product documentation related to its prototype.
> By asking for feedback along the process, Max did realize the ideation documentation is extremely helpful to present the project, especially outside his first collaborators circle and more people showed interest in the project.
> By making some requirement more explicit, Max could derive specific needs and therefore specific hardware functionalities the first prototype is lacking, Max hopes to find better solutions in the next prototype iteration.
> One year later, Max is leaving the project, but the project still lives as new maintainers with the same vision are developing it further.

## Contributing

Please feel welcome to use the Github issues to flag errors and tell us what you think.
You may also contact the maintainer per email (see contributors section).

## Project history and roadmap

After creating the templates based on the elements found in the different sources, we wanted to give information on each element of the template.
We chose to use a quarto book to organise this information.
The book became soon a better way to combine information and checklists, and was further developed and reviewed, coming back to the initial sources again, and discarding duplicated items.
It became the first source of information.

Next steps:

-   Check consistency between book and templates
-   opening up the project, ask for feedback
-   testing on real projects

Long term:

-   create a software/chatbot based on the book information

### Related projects

see [source description file](/91_Explanation_book/content/22-sources.qmd)

## Funding

This was developed inside the LAUDS Factories and the Open.Make projects, based on results of the OpenNext project.

[LAUDS Local Accessible Urban Digital Sustainable Factories](www.lauds.eu) is a Horizon Europe research and innovation action - Co-funded by the European Union, 2024-2026, GA 101135986.

OpenNext has received funding from the European Union’s Horizon 2020 research and innovation programme under [grant agreement no. 869984](https://cordis.europa.eu/project/id/869984).

[Open.Make](www.openmake.de) is funded by the Federal Ministry of Education and Research (BMBF) and the state of Berlin under the Excellence Strategy of the Federal Government and the Länder / www.berlin-university-alliance.de

## Main contributors:

-   Julien Colomb: julien.colomb [at] fu-berlin.de
-   Sacha Hodencq
-   Jean-François Boujut
-   Robert Mies
-   Moritz Maxeiner
-   Michel Langhammer

# Technicalities

To create a new version of the book:

-   modify the chapters. careful, do not modify the `_conc` files but modify the chapters files
-   run the concatenatechapters.r code to create concatenated chapters (the `_conc` files) from the chapter files
-   run `quarto preview` and `quarto publish` in the book folder in a terminal window
