### create new environment
# https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-with-commands
conda create --name myenv


### create shortcut of home directoy on desktop:
# Command-Option-Left Click & Drag the home folder icon from the title bar of the Finder window to the desktop. 
$ ln -s ~/ ~/Desktop/Home

### Add Julia to PATH
# https://julialang.org/downloads/platform/
sudo ln -s /Applications/Julia-1.6.app/Contents/Resources/julia/bin/julia /usr/local/bin/julia

### Uninstallation
# You can uninstall Julia by deleting Julia.app and the packages directory in ~/.julia. 
# Multiple Julia.app binaries can co-exist without interfering with each other. 
# If you would also like to remove your preferences files, remove ~/.julia/config/startup.jl 
# and ~/.julia/logs/repl_history.jl.


# install cmdstanpy
# https://mc-stan.org/cmdstanpy/installation.html
conda create -n cmdstan -c conda-forge cmdstanpy
# to use :
conda activate cmdstan 

conda install -c conda-forge cmdstanpy

# https://mc-stan.org/docs/2_28/cmdstan-guide/cmdstan-installation.html
conda install -c conda-forge cmdstan

# install gsl
# https://gist.github.com/TysonRayJones/af7bedcdb8dc59868c7966232b4da903#osx
brew install gsl


conda install -c conda-forge pystan
conda install -c intel scikit-learn
conda install jupyter
conda install seaborn
conda install -c conda-forge scikit-plot
conda install -c anaconda networkx


### install jitcode on windows:
# https://jitcde-common.readthedocs.io/en/stable/

conda install -c anaconda scipy
### updating package in conda
conda update packagename
# Updating all Python Packages using conda
conda updata --all


# Mendeley location:
/Users/tng/Library/Application Support/Mendeley Reference Manager


# -----------------------------------------------------------------------------------
# for error : clang: error: unsupported option '-fopenmp'
# saw it when compiling using swig with -fopenmp
brew install llvm
brew install libomp

showd me this after installation:

To use the bundled libc++ please add the following LDFLAGS:
  LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"

llvm is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have llvm first in your PATH, run:
  echo 'export PATH="/usr/local/opt/llvm/bin:$PATH"' >> ~/.zshrc

For compilers to find llvm you may need to set:
  export LDFLAGS="-L/usr/local/opt/llvm/lib"
  export CPPFLAGS="-I/usr/local/opt/llvm/include"

# -----------------------------------------------------------------------------------

#Conda quick guide:
https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-with-commands



# snakemake
conda install -n base -c conda-forge mamba
conda activate base
mamba create -c conda-forge -c bioconda -n snakemake snakemake
conda activate snakemake



# new repository github
echo "# instools" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:Ziaeemehr/instools.git
git push -u origin main