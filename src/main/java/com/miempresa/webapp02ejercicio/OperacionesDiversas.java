/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.miempresa.webapp02ejercicio;
   

/**
 *
 * @author Tecsup
 */
public class OperacionesDiversas {
    public double raizCuadrada(double a){
        double raiz = Math.sqrt(a);
        return raiz;
    }
    public double raizCubica(double a){

        double raiz = Math.pow(a,0.3333333333333333333333333333);
        return raiz;
    }
    public double potencia(double a){
        double potencia = Math.pow(a,2);
        return potencia;
    }
    public double valorAbsoluto(double a){
        if (a>0){
            return a;
        }else{
         return a*-1;   
        }
    }
}
