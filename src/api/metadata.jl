function sqlite3_table_column_metadata(
    dbptr::Ptr{Void},
    table::String,
    column::String,
    datatype::Vector{Ptr{Uint8}},
    collseq::Vector{Ptr{Uint8}},
    notnull::Vector{Cint},
    primarykey::Vector{Cint},
    autoinc::Vector{Cint}
)
    return ccall(
        (:sqlite3_table_column_metadata, sqlite3_lib),
        Cint,
        (
            Ptr{Void},
            Ptr{Uint8},
            Ptr{Uint8},
            Ptr{Uint8},
            Ptr{Ptr{Uint8}},
            Ptr{Ptr{Uint8}},
            Ptr{Cint},
            Ptr{Cint},
            Ptr{Cint}
        ),
        dbptr,
        convert(Ptr{Uint8}, C_NULL),
        table,
        column,
        datatype,
        collseq,
        notnull,
        primarykey,
        autoinc
    )
end
