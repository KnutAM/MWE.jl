using MWE
using Documenter

DocMeta.setdocmeta!(MWE, :DocTestSetup, :(using MWE); recursive=true)

makedocs(;
    modules=[MWE],
    authors="Knut Andreas Meyer and contributors",
    repo="https://github.com/KnutAM/MWE.jl/blob/{commit}{path}#{line}",
    sitename="MWE.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://KnutAM.github.io/MWE.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/KnutAM/MWE.jl",
    devbranch="main",
)
