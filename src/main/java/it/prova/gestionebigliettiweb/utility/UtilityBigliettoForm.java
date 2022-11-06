package it.prova.gestionebigliettiweb.utility;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;

import it.prova.gestionebigliettiweb.model.Biglietto;

public class UtilityBigliettoForm {

	public static Biglietto createBigliettoFromParams(String codiceInputParam, String descrizioneInputParam,
			String prezzoInputStringParam, String dataArrivoStringParam) {

		Biglietto result = new Biglietto(codiceInputParam, descrizioneInputParam);

		if (NumberUtils.isCreatable(prezzoInputStringParam)) {
			result.setPrezzo(Integer.parseInt(prezzoInputStringParam));
		}
		result.setData(parseDateArrivoFromString(dataArrivoStringParam));

		return result;
	}

	public static boolean validateBigliettoBean(Biglietto articoloToBeValidated) {
		// prima controlliamo che non siano vuoti i parametri
		if (StringUtils.isBlank(articoloToBeValidated.getDestinazione())
				|| StringUtils.isBlank(articoloToBeValidated.getProvenienza())
				|| articoloToBeValidated.getPrezzo() == null 
				|| articoloToBeValidated.getPrezzo() < 1
				|| articoloToBeValidated.getData() == null) {
			return false;
		}
		return true;
	}

	public static Date parseDateArrivoFromString(String dataArrivoStringParam) {
		if (StringUtils.isBlank(dataArrivoStringParam))
			return null;

		try {
			return new SimpleDateFormat("yyyy-MM-dd").parse(dataArrivoStringParam);
		} catch (ParseException e) {
			return null;
		}
	}

}