with 
    source_data as (
        select --selecionar primeiros as keys e em uma ordem que faça sentido
            addressid
            , addressline1
            , addressline2
            , city
            , stateprovinceid
            , postalcode
            , spatiallocation
            --, rowguid
            --, modifieddate	
        from {{  source('pipelineELaw','person_address')  }}
    )

    select * from source_data