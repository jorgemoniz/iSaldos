//
//  API_UTILS.swift
//  iSaldos
//
//  Created by jorgemoniz on 11/5/17.
//  Copyright © 2017 Jorge Moñiz. All rights reserved.
//

import Foundation

let CONSTANTES = Constantes()

struct Constantes {
    let COLORES = Colores()
    let LLAMADAS = Llamadas()
    let USER_DEFAULT = CustomUserDefault()
    let PARSE_DATA = ParseData()
}

struct Colores {
    let GRIS_NAV_TAB = #colorLiteral(red: 0.3493798375, green: 0.3493887782, blue: 0.3493839502, alpha: 1)
    let BLANCO_TEXTO_NAV = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
}

struct Llamadas {
    let OFERTAS = "oferta"
    let CUPONES = "cupones"
    let PROMOCIONES_SERVICE = "promociones"
    
    let BASE_FOTO_URL = "http://app.clubsinergias.es/upload/promociones"
    let BASE_URL = "http://app.clubsinergias.es/api_comercios.php?"
    let BASE_URL_ID_CLIENTE = "http://app.clubsinergias.es/api_comercios.php?idcliente="
    let BASE_ID_LOCALIDAD = "idLocalidad="
    let BASE_ID_P = "&p="
    let BASE_ID_TIPO = "&tipo="
}

struct ParseData {
    let NOMBRE_TABLA_IMAGEN = "ImageProfile"
    let IMAGE_URL = "imagenFile"
    let USERNAME_PARSE = "username"
}

struct CustomUserDefault {
    let VISTA_GALERIA_INICIAL = "vistaGaleriaInicial"
}
