package com.coursera;

public class Carro extends Veiculo{

    private int cilindradas;
    private boolean airbarg;

    public Carro(int anoDeFabricacao, String modelo, String marca, int cilindradas, boolean airbarg) {
        super(anoDeFabricacao, modelo, marca);
        this.cilindradas = cilindradas;
        this.airbarg = airbarg;
    }

    public int getCilindradas() {
        return cilindradas;
    }

    public void setCilindradas(int cilindradas) {
        this.cilindradas = cilindradas;
    }

    public boolean isAirbarg() {
        return airbarg;
    }

    public void setAirbarg(boolean airbarg) {
        this.airbarg = airbarg;
    }

    public String toString() {
        return "carro fabricado em " + this.getAnoDeFabricacao() + " com " + this.getCilindradas() + " cilindradas.";
    }
}
