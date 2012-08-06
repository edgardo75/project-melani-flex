public class sdv{
	
	public function fecha_mas_dias(fecha:String, dias:String, habil:Boolean):String{
		var d:uint = int(dias);
		var i:uint;
		var fechaarray:Array = fecha.split("-");//ano,mes,dia
		var fecha1:Date = new Date(fechaarray[0], fechaarray[1]-1, fechaarray[2]);
		var miliseg:Number;
		var eldia:uint;
		if(habil == true){//No tiene en cuenta los dias sabados y domingos
			for(i=1;i&lt;=d;i++){
				miliseg = fecha1.getTime(); // convierte my_date a milisegundos
				miliseg += 24*60*60*1000; // añade 1 dia en milisegundos
				fecha1.setTime(miliseg); // establece el objeto de fecha my_date 1 dia hacia delante
				eldia = fecha1.getDay(); //Obtengo el dia de la semana, 0 para domingo y 6 para sabado.
				if(eldia==0 || eldia==6)d++;
			}
		}else{//Tiene en cuenta los dias sabados y domingos
			miliseg = fecha1.getTime(); // convierte my_date a milisegundos
			miliseg += d*24*60*60*1000; // añade 1 dia en milisegundos
			fecha1.setTime(miliseg); // establece el objeto de fecha my_date 1 dia hacia delante
		}
		var dia:uint = fecha1.getDate();
		var mes:uint = fecha1.getMonth()+1;
		var ano:uint = fecha1.getFullYear();
		return (ano+"-"+formato(mes)+"-"+formato(dia));
	}