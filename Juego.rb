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
        contador_vecino = 0
        xAuxiliar = x
        yAuxiliar = y + 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contador_vecino += 1
        end
        xAuxiliar = x - 1
        yAuxiliar = y + 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contador_vecino += 1
        end
        xAuxiliar = x + 1
        yAuxiliar = y + 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contador_vecino += 1
        end
        xAuxiliar = x + 1
        yAuxiliar = y
        if tablero[xAuxiliar][yAuxiliar] == 1
          contador_vecino += 1
        end
        xAuxiliar = x - 1
        yAuxiliar = y
        if tablero[xAuxiliar][yAuxiliar] == 1
          contador_vecino += 1
        end
        xAuxiliar = x - 1
        yAuxiliar = y - 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contador_vecino += 1
        end
        xAuxiliar = x
        yAuxiliar = y - 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contador_vecino += 1
        end
        xAuxiliar = x + 1
        yAuxiliar = y - 1
        if tablero[xAuxiliar][yAuxiliar] == 1
          contador_vecino += 1
        end

        if contador_vecino == 1 || contador_vecino == 0 || contador_vecino >= 4
          tablero_aux[x][y] = 0
        end
        if contador_vecino == 3 || contador_vecino == 2
          tablero_aux[x][y] = 1
        end
        #print x, "x", y, "y", contador_vecino, "cont \n"
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
