module MWE

export Foo, Bar, fun

function fun end

abstract type Foo end

function fun end

"""
    fun(x::Foo)

Docstring for subtypes of `Foo` given to `fun`
"""
fun(::Foo)

abstract type Bar end

"""
    fun(x::Bar)

Docstring for subtypes of `Bar` given to `fun`
"""
fun(::Bar)


end
