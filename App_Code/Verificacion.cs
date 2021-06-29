using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Verificacion
/// </summary>
public class Verificacion
{
	public Verificacion()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public bool VerificarCedula(string cedula)
    {
        int esNumero;
        var total = 0;
        const int longitudCedula = 10;
        const int modulo = 10;
        int[] coeficientes = { 2, 1, 2, 1, 2, 1, 2, 1, 2 };
        const int numeroProvincias = 24;
        const int tercerDigito = 6;

        if (int.TryParse(cedula, out esNumero) && cedula.Length.Equals(longitudCedula)) 
        {
            var provincia = Convert.ToInt32(string.Concat(cedula[0], cedula[1], string.Empty));
            var digitoTres = Convert.ToInt32(cedula[2] + string.Empty);
            if ((provincia > 0 && provincia <= numeroProvincias) && digitoTres < tercerDigito)
            {
                var digitoVerificadorEntrada = Convert.ToInt32(cedula[9] + string.Empty);
                for (var c = 0; c < coeficientes.Length; c++)
                {
                    var valor = Convert.ToInt32(coeficientes[c] + string.Empty) *
                                Convert.ToInt32(cedula[c] + string.Empty);
                    total = valor >= 10 ? total + (valor - 9) : total + valor;
                }
                var digitoVerificadorSalida = total >= modulo ? (total % modulo) != 0 ? modulo - (total % modulo) : (total % modulo) : modulo - total;
                return digitoVerificadorSalida == digitoVerificadorEntrada;
            }
            return false;
        }
        return false;
    }


    public bool VerificarRucNatural(string ruc)
    {
        long esNumero;
        const int longitudRuc = 13;
        const string establecimiento = "001";
        if (long.TryParse(ruc, out esNumero) && ruc.Length.Equals(longitudRuc))
        {
            var numeroProvincia = Convert.ToInt32(string.Concat(ruc[0] + string.Empty, ruc[1] + string.Empty));
            var personaNatural = Convert.ToInt32(ruc[2] + string.Empty);
            if ((numeroProvincia >= 1 && numeroProvincia <= 24) && (personaNatural >= 0 && personaNatural < 6))
            {
                return ruc.Substring(10, 3) == establecimiento && VerificarCedula(ruc.Substring(0, 10));
            }
            return false;
        }
        return false;
    }

    public bool VerificarRucJuridicaExtranjera(string ruc)
    {
        long esNumero;
        const int longitudRuc = 13;
        const int modulo = 11;
        const int tercerDigito = 9;
        int total = 0;
        const string establecimiento = "001";
        int[] coeficientes = { 4, 3, 2, 7, 6, 5, 4, 3, 2 };
        if (long.TryParse(ruc, out esNumero) && ruc.Length.Equals(longitudRuc))
        {
            var numeroProvincia = Convert.ToInt32(string.Concat(ruc[0] + string.Empty, ruc[1] + string.Empty));
            var juridicaExtranjera = Convert.ToInt32(ruc[2] + string.Empty);
            if ((numeroProvincia >= 1 && numeroProvincia <= 24) && juridicaExtranjera == tercerDigito && ruc.Substring(10, 3) == establecimiento)
            {
                var digitoVerificadorEntrada = Convert.ToInt32(ruc[9] + string.Empty);
                for (var c = 0; c < coeficientes.Length; c++)
                {
                    total = total + (coeficientes[c] * Convert.ToInt32(ruc[c] + string.Empty));
                }
                var digitoVerificadorSalida = (total % modulo) == 0 ? 0 : modulo - (total % modulo);
                return digitoVerificadorSalida == digitoVerificadorEntrada;
            }
            return false;
        }
        return false;
    }

    public bool VerificarRucPublicaEstatal(string ruc)
    {
        long esNumero;
        const int longitudRuc = 13;
        const int modulo = 11;
        const int tercerDigito = 6;
        int total = 0;
        const string establecimiento = "0001";
        int[] coeficientes = { 3, 2, 7, 6, 5, 4, 3, 2 };
        if (long.TryParse(ruc, out esNumero) && ruc.Length.Equals(longitudRuc))
        {
            var numeroProvincia = Convert.ToInt32(string.Concat(ruc[0] + string.Empty, ruc[1] + string.Empty));
            var publicaEstatal = Convert.ToInt32(ruc[2] + string.Empty);
            if ((numeroProvincia >= 1 && numeroProvincia <= 24) && publicaEstatal == tercerDigito && ruc.Substring(9, 4) == establecimiento)
            {
                var digitoVerificadorEntrada = Convert.ToInt32(ruc[8] + string.Empty);
                for (var c = 0; c < coeficientes.Length; c++)
                {
                    total = total + (coeficientes[c] * Convert.ToInt32(ruc[c] + string.Empty));
                }
                var digitoVerificadorSalida = (total % modulo) == 0 ? 0 : modulo - (total % modulo);
                return digitoVerificadorSalida == digitoVerificadorEntrada;
            }
            return false;
        }
        return false;
    }
}