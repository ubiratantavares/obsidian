package com.coursera;

public class Veiculo {

    private int anoDeFabricacao;
    private String modelo;
    private String marca;

    public Veiculo(int anoDeFabricacao, String modelo, String marca) {
        this.anoDeFabricacao = anoDeFabricacao;
        this.modelo = modelo;
        this.marca = marca;
    }

    public int getAnoDeFabricacao() {
        return anoDeFabricacao;
    }

    public void setAnoDeFabricacao(int anoDeFabricacao) {
        this.anoDeFabricacao = anoDeFabricacao;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String toString() {
        return "Veiculo{" +
                "anoDeFabricacao=" + anoDeFabricacao +
                ", modelo='" + modelo + '\'' +
                ", marca='" + marca + '\'' +
                '}';
    }
}
