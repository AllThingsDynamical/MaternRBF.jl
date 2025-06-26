using MaternRBF
using Documenter

DocMeta.setdocmeta!(MaternRBF, :DocTestSetup, :(using MaternRBF); recursive=true)

makedocs(;
    modules=[MaternRBF],
    authors="Rahul Manavalan",
    sitename="MaternRBF.jl",
    format=Documenter.HTML(;
        canonical="https://AllThingsDynamical.github.io/MaternRBF.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/AllThingsDynamical/MaternRBF.jl",
    devbranch="main",
)
