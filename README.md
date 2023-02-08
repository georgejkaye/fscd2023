# fscd2023

Potential submission to FSCD 2023.

* **[Latest release](https://github.com/georgejkaye/fscd2023/releases/latest)**

## Entry points

* `main-conf.tex` The conference version of the paper: double column `lipics`
* `main-arxiv.tex` The arxiv version of the paper: single column `article`

## Compilation

First initialise the submodules:

```sh
git submodule update --init
```

Then compile with `make`:

```sh
# Generates both pdfs
make
# Generates just the conference pdf
make conf
# Generates just the arxiv pdf
make arxiv
```

Or just `latexmk`:

```sh
latexmk -pdf main-conf.tex
latexmk -pdf main-arxiv.tex
```

## Submodules

This project uses *submodules* to share diagrams and things between repos.
This means that the repo contains pointers to commits in other repos.

### Initialising

When you first clone the repo, run:

```sh
git submodule update --init
```

If you get a `Permission denied (publickey)` error, it's most likely because you don't have SSH set up on GitHub.
[Adding an SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) should fix the issue.

### Reading

After updating, the submodules are in 'detached head' state, pointing at a certain commit.
If you're not making any changes, you don't have to do anything!
However, you may want to pull the latest changes from the submodule's remote.
To do this, switch to the `main` branch first.

```sh
cd example
git switch main
git pull
```

### Writing

If you want to make some changes to the submodule, make sure to switch to `main` (or another branch of your choice) first.
Then make the changes as usual, commit them in the submodule, push, and then add the directory in the parent repo to point it to the correct commit.

```sh
# checkout the submodule to the head
cd example
git switch main
echo "hello!" > hello.txt
# Push the changes to the submodule repo
git add hello.txt
git commit -m "Add hello.txt"
git push
# Now make the changes in the parent repo
cd ..
git add example
git commit -m "Update submodule"
git push
```

### Updating

By default, when doing a `git pull` after someone has changed the commit a submodule points to on the remote, this is not updated in the local version.
To fix this, run the following after doing a `git pull`:

```sh
git submodule update
```

Alternatively, you can set this to occur automatically after a `git pull` with the following option:

```sh
git config --global submodule.recurse true
```

## GitHub actions

Whenever you push to `main`, a pdf of the arxiv and the conference version will be created, as well as zips containing all the assets used in each paper.
