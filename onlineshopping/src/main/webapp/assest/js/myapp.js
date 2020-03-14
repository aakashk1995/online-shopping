$(function (){
	switch(menu){
	
	case 'About US':
		$("#about").addClass('áctive');	
		break;
		
	case 'Contact':
	  $("#contact").addClass('active');
	break;
	
	 default:
		 $("#home").addClass('active');
	 break;
	}
});