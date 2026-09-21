# devops-demo

## Getting started

Clone the repository:

```bash
git clone https://github.com/aie-devops/devops-demo.git
cd devops-demo
```

## Working with tagged stages

This repo uses tags (e.g. `step-1-project-template`, `step-2-example`, ...) to mark different stages of the app as it evolves. To see all available tags:

```bash
git tag -l
```

To work from a specific stage, create a new branch starting at that tag:

```bash
git checkout -b my-branch-name step-1-project-template
```

This checks out the code exactly as it was at that tag and puts you on a new branch (`my-branch-name`) so you can make changes without affecting the tag or other branches.

