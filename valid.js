
function valid()
	{
	var name=document.form1.name1.value;
	var pass=document.form1.pass.value;
	var voterid=document.form1.voterid.value;
var date=document.form1.date.value;
	var flag1,flag2,flag3,flag4,flag5,flag6;
/*Validate Name*/
		if(name.length==" ")
		alert("enter name");

			for(x=0;x<name.length;x++)
			{
			if((name.charCodeAt(x)>=65)&&(name.charCodeAt(x)<=90) || (name.charCodeAt(x)>=97)&&(name.charCodeAt(x)<=122))
 				flag1=0;
			else 
				flag1=1;
			}
			if(flag1==1) 
				alert("Enter Valid Name");

/*Validate Password*/

			if(pass.length<=5 || pass.length>=17)
			{ 
				alert("Password Length Should betbeen 6 and 18 Char");
   				flag4=1;
			}
			/*validate  voterid */
			if(voterid.length<=5 || voterid.length>=17)
			{ 
				alert("voterid Length Should betbeen 6 and 18 Char");
   				flag4=1;
			}
if(date<17) {
flag5=1;
alert("age should be greather than 18"); }

/*validate Gender*/
			if ( ( form1.gender[0].checked == false ) && ( form1.gender[1].checked == false ) ) 
			{
				alert ( "Please choose your Gender: Male or Female" ); 
				flag6=1;
			}
			else
			{
				flag6=0;
			}
			if(flag1!=1&&flag2!=1&&flag3!=1&&flag4!=1&&flag5!=1&&flag6!=1)
			{
				document.form1.submit();
			}

	}