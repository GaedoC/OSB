xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://soa.fonasa.cl/mensajes/servicioDeEjemplo";
(:: import schema at "../../../../ServicioEjemplo_Exposition/Resources/Schemas/ServicioEjemploUno/ServicioDeEjemploV1.0.xsd" ::)

declare variable $servicioDeEjemploRequest as element() (:: schema-element(ns1:servicioDeEjemploRequest) ::) external;

declare function local:func($servicioDeEjemploRequest as element() (:: schema-element(ns1:servicioDeEjemploRequest) ::)) as element() (:: schema-element(ns1:servicioDeEjemploResponse) ::) {
    
    (:Comentarios:)
    
    (:Asignacion de variables:)
    
    let $parametroUno := 'FONDO'
    let $parametroDos := 'NACIONAL'
    let $parametroTres := 'DE' 
    let $parametroCuatro := 'SALUD'
    
    (:Armando la respuesta con el XML:)
    return
    <ns1:servicioDeEjemploResponse>
        <ns1:headerRequest>
            <transaccionID>123</transaccionID>
            <estadoID>200</estadoID>
            <estadoMSG>OK</estadoMSG>
            <fechaHora></fechaHora>
        </ns1:headerRequest>
        <ns1:bodyResquest>
            <ns1:salidaOutputUno>{fn:data($servicioDeEjemploRequest/ns1:bodyResquest/ns1:parametroInputUno)}</ns1:salidaOutputUno>
            <ns1:items>
                <ns1:estructuraCompleja>
                    <ns1:parametroOutputUno>{$parametroUno}</ns1:parametroOutputUno>
                    <ns1:parametroOutputDos>{$parametroDos}</ns1:parametroOutputDos>
                    <ns1:parametroOutputTres>{$parametroTres}</ns1:parametroOutputTres>
                    <ns1:parametroOutputCuatro>{$parametroCuatro}</ns1:parametroOutputCuatro>
                </ns1:estructuraCompleja>
            </ns1:items>
        </ns1:bodyResquest>
    </ns1:servicioDeEjemploResponse>
};

local:func($servicioDeEjemploRequest)