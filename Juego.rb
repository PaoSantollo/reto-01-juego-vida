class Juego
  def imprimir_tablero(tablero)
    for i in 0..9
      for j in 0..9
        print tablero[i][j]
      end
      print "\n"
    end
    print "\n"
  end

  def reglas(tablero, tablero_aux)
    for y in 1..8
      for x in 1..8
        contadorVecinos = 0
        xAuxiliar = x
        yAuxiliar = y + 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contadorVecinos = contadorVecinos + 1
        end
        xAuxiliar = x - 1
        yAuxiliar = y + 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contadorVecinos = contadorVecinos + 1
        end
        xAuxiliar = x + 1
        yAuxiliar = y + 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contadorVecinos = contadorVecinos + 1
        end
        xAuxiliar = x + 1
        yAuxiliar = y
        if tablero[xAuxiliar][yAuxiliar] == 1
          contadorVecinos = contadorVecinos + 1
        end
        xAuxiliar = x - 1
        yAuxiliar = y
        if tablero[xAuxiliar][yAuxiliar] == 1
          contadorVecinos = contadorVecinos + 1
        end
        xAuxiliar = x - 1
        yAuxiliar = y - 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contadorVecinos = contadorVecinos + 1
        end
        xAuxiliar = x
        yAuxiliar = y - 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contadorVecinos = contadorVecinos + 1
        end
        xAuxiliar = x + 1
        yAuxiliar = y - 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contadorVecinos = contadorVecinos + 1
        end

        if contadorVecinos == 1 || contadorVecinos == 0 || contadorVecinos >= 4
          tablero_aux[x][y] = 0
        end
        if contadorVecinos == 3 || contadorVecinos == 2
          tablero_aux[x][y] = 1
        end
        print x, "x", y, "y", contadorVecinos, "cont \n"
      end
    end
  end

  def clonar_tablero(tablero, tablero_aux)
    for i in 0..9
      for j in 0..9
        tablero[i][j] = tablero_aux[i][j]
      end
      print "\n"
    end
    print "\n"
  end
end

tablero = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
           [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
           [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]

tablero_aux = Array.new(10) { Array.new(10) { 0 } }

juego = Juego.new
juego.imprimir_tablero(tablero)
juego.reglas(tablero, tablero_aux)
juego.clonar_tablero(tablero, tablero_aux)
juego.imprimir_tablero(tablero)
