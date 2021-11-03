with 
    source_data as (
        select --selecionar primeiros as keys e em uma ordem que faça sentido
            countryregioncode
            , name
            --, modifieddate
        from {{  source('pipelineELaw','person_countryregion')  }}
    )

    select * from source_data