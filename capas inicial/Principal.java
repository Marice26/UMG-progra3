/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Vista;

import Controlador.Empresa;
import Modelo.EmpresaDAO;

/**
 *
 * @author Soporte
 */
public class Principal {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Empresa empresa = new Empresa("Universidad el valle");
        System.out.println(empresa.toString());
        EmpresaDAO empresadao = new EmpresaDAO();
        empresadao.insert(empresa);
        
        empresa.setCodigoEmpresa(16);
        //empresa=empresadao.query(empresa);
   
        
        empresa.setCodigoEmpresa(0);
        //empresadao.delete(empresa);
        
        
        empresa.setCodigoEmpresa(0);
        empresa.setNombreEmpresa("universiada san carlos");
        
        
        int n;
        n=empresadao.update(empresa);
       
        
        System.out.println(empresa.toString());
                
    }
    
}
