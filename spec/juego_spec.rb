require "../juego.rb"

RSpec.describe Juego do
  it "crea la clase juego" do
    juego = Juego.new
    expect(juego).to be_kind_of(Juego)
    puts "... testing testClase Juego... \n"
  end

  it "Impresion tablero" do
    juego = Juego.new
    expect(juego).to respond_to(:imprimir_tablero)
    puts "... testing testImpresion del tablero... \n"
  end

  it "Reglas" do
    juego = Juego.new
    expect(juego).to respond_to(:reglas)
    puts "... testing testEvaluarCelula segun las reglas... \n"
  end

  it "Clonar" do
    juego = Juego.new
    expect(juego).to respond_to(:clonar_tablero)
    puts "... testing testClonarTablero... \n"
  end
end
