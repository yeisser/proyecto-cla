package screens;

import task.Recoveries_Task;
import task.Welcome_Task;
import utility.UIOperation;
import utility.Util;


public class WelcomeScreen {
    //
    public void btn_iniciar() {
        UIOperation.giveClick(Welcome_Task.btn_inciar);
    }
    public void btn_finalizar(){
        UIOperation.giveClick(Welcome_Task.btn_finalizar);
    }
    public void btn_permitir_fotos_videos(){
        int repeticionesSiguiente = 0;
        while (repeticionesSiguiente <= 2) {
            UIOperation.giveClick(Welcome_Task.btn_permisos);
            repeticionesSiguiente = repeticionesSiguiente + 1;
            Util.implicitWait(8);
        }
    }
    public void btn_permitir_fotos_videos2(){
        int repeticionesSiguiente = 0;
        while (repeticionesSiguiente <= 4) {
            UIOperation.giveClick(Welcome_Task.btn_permiso_calendario);
            repeticionesSiguiente = repeticionesSiguiente + 1;
            Util.implicitWait(8);
        }

    }
    public void btn_permitir_permisos(){
        UIOperation.waitAndClick(Welcome_Task.btn_permiso_gps, 15);
        UIOperation.waitAndClick(Welcome_Task.btn_permiso_calendario, 15);
        UIOperation.waitAndClick(Welcome_Task.btn_permiso_notificaciones, 15);
    }
    public void btn_permitir_gps(){
        UIOperation.giveClick(Welcome_Task.btn_permiso_gps);
    }
    public void btn_permitir_notificaciones(){
        UIOperation.giveClick(Welcome_Task.btn_permiso_notificaciones);
    }
    public void btn_permitir_calendario(){
        UIOperation.giveClick(Welcome_Task.btn_permiso_calendario);
    }
    public void organizacion(){
        UIOperation.getText(Welcome_Task.btn_permiso_calendario);
    }

    public void ingresa_organizacion(String organizacion) {
        UIOperation.insertValue(Welcome_Task.organizacion, organizacion);
    }
    public void ingresa_organizacion2(String organizacion) {
        UIOperation.insertValue(Welcome_Task.organizacion2, organizacion);
    }
    public void btn_continuar() {
        UIOperation.giveClick(Welcome_Task.continuar);
    }
    public void btn_continuarNew() {
        UIOperation.waitAndClick(Welcome_Task.continuar,15);
    }
    public void click_btnContinuar() {
        UIOperation.giveClick(Welcome_Task.continuar);
    }
    public void btn_festivos() {
        UIOperation.giveClick(Welcome_Task.festivos);
        UIOperation.giveClick(Welcome_Task.OK);

    }



    public void click_cobranza() {
        UIOperation.giveClick(Recoveries_Task.btn_cobranza);
    }
}
